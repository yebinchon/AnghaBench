; ModuleID = '/home/carl/AnghaBench/freebsd/stand/sparc64/loader/extr_main.c_find_bsp_sun4u.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/sparc64/loader/extr_main.c_find_bsp_sun4u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8)* @find_bsp_sun4u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_bsp_sun4u(i64 %0, i8 signext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca [4 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i8 %1, i8* %5, align 1
  br label %9

9:                                                ; preds = %53, %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @OF_child(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i64, i64* %7, align 8
  %19 = load i8, i8* %5, align 1
  %20 = call i64 @find_bsp_sun4u(i64 %18, i8 signext %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %3, align 8
  br label %57

25:                                               ; preds = %17
  br label %52

26:                                               ; preds = %12
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %29 = call i64 @OF_getprop(i64 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %28, i32 4)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %53

32:                                               ; preds = %26
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %53

37:                                               ; preds = %32
  %38 = load i64, i64* %4, align 8
  %39 = call i8* (...) @cpu_cpuid_prop_sun4u()
  %40 = call i64 @OF_getprop(i64 %38, i8* %39, i8* %8, i32 1)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %53

43:                                               ; preds = %37
  %44 = load i8, i8* %8, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %5, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %3, align 8
  br label %57

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %25
  br label %53

53:                                               ; preds = %52, %42, %36, %31
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @OF_peer(i64 %54)
  store i64 %55, i64* %4, align 8
  br label %9

56:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %57

57:                                               ; preds = %56, %49, %23
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @cpu_cpuid_prop_sun4u(...) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
