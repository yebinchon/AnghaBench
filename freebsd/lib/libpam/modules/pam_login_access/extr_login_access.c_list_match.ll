; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_login_access/extr_login_access.c_list_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_login_access/extr_login_access.c_list_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO = common dso_local global i32 0, align 4
@sep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"EXCEPT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32 (i8*, i8*)*)* @list_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_match(i8* %0, i8* %1, i32 (i8*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %7, align 8
  %10 = load i32, i32* @NO, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @sep, align 4
  %13 = call i8* @strtok(i8* %11, i32 %12)
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strcasecmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %33

22:                                               ; preds = %17
  %23 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 %23(i8* %24, i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %33

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* @sep, align 4
  %32 = call i8* @strtok(i8* null, i32 %31)
  store i8* %32, i8** %8, align 8
  br label %14

33:                                               ; preds = %28, %21, %14
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @NO, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32, i32* @sep, align 4
  %40 = call i8* @strtok(i8* null, i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %38

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %55 = call i32 @list_match(i8* null, i8* %53, i32 (i8*, i8*)* %54)
  %56 = load i32, i32* @NO, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52, %49
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i32, i32* @NO, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
