; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login_access.c_list_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login_access.c_list_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.login_info = type { i32 }

@NO = common dso_local global i32 0, align 4
@sep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"EXCEPT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.login_info*, i32 (i8*, %struct.login_info*)*)* @list_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_match(i8* %0, %struct.login_info* %1, i32 (i8*, %struct.login_info*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.login_info*, align 8
  %7 = alloca i32 (i8*, %struct.login_info*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.login_info* %1, %struct.login_info** %6, align 8
  store i32 (i8*, %struct.login_info*)* %2, i32 (i8*, %struct.login_info*)** %7, align 8
  %11 = load i32, i32* @NO, align 4
  store i32 %11, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @sep, align 4
  %14 = call i8* @strtok_r(i8* %12, i32 %13, i8** %10)
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %31, %3
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strcasecmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %34

23:                                               ; preds = %18
  %24 = load i32 (i8*, %struct.login_info*)*, i32 (i8*, %struct.login_info*)** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.login_info*, %struct.login_info** %6, align 8
  %27 = call i32 %24(i8* %25, %struct.login_info* %26)
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @sep, align 4
  %33 = call i8* @strtok_r(i8* null, i32 %32, i8** %10)
  store i8* %33, i8** %8, align 8
  br label %15

34:                                               ; preds = %29, %22, %15
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @NO, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* @sep, align 4
  %41 = call i8* @strtok_r(i8* null, i32 %40, i8** %10)
  store i8* %41, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @strcasecmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %39

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.login_info*, %struct.login_info** %6, align 8
  %55 = load i32 (i8*, %struct.login_info*)*, i32 (i8*, %struct.login_info*)** %7, align 8
  %56 = call i32 @list_match(i8* null, %struct.login_info* %54, i32 (i8*, %struct.login_info*)* %55)
  %57 = load i32, i32* @NO, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* @NO, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i8* @strtok_r(i8*, i32, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
