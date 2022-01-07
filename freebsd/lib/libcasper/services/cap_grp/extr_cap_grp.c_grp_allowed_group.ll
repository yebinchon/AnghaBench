; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_allowed_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_allowed_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @grp_allowed_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grp_allowed_group(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %55

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @nvlist_exists_nvlist(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %55

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @nvlist_get_nvlist(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  store i8* null, i8** %9, align 8
  br label %22

22:                                               ; preds = %53, %19
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @nvlist_next(i32* %23, i32* %10, i8** %9)
  store i8* %24, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %51 [
    i32 129, label %28
    i32 128, label %39
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @nvlist_get_number(i32* %32, i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %55

38:                                               ; preds = %31, %28
  br label %53

39:                                               ; preds = %26
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @nvlist_get_string(i32* %43, i8* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcmp(i32 %45, i8* %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %55

50:                                               ; preds = %42, %39
  br label %53

51:                                               ; preds = %26
  %52 = call i32 (...) @abort() #3
  unreachable

53:                                               ; preds = %50, %38
  br label %22

54:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %49, %37, %18, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @nvlist_get_string(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
