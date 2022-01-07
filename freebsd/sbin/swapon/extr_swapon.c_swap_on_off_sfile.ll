; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swap_on_off_sfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swap_on_off_sfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@which_prog = common dso_local global i64 0, align 8
@SWAPON = common dso_local global i64 0, align 8
@Eflag = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: Device already in use\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: NSWAPDEV limit reached\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @swap_on_off_sfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @swap_on_off_sfile(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @which_prog, align 8
  %8 = load i64, i64* @SWAPON, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, i64* @Eflag, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @swapon_trim(i8* %14)
  br label %19

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @swapon(i8* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  store i32 %20, i32* %6, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @swapoff(i8* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = load i32, i32* @errno, align 4
  switch i32 %28, label %51 [
    i32 129, label %29
    i32 128, label %36
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %54

36:                                               ; preds = %27
  %37 = load i64, i64* @which_prog, align 8
  %38 = load i64, i64* @SWAPON, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %50

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %40
  br label %54

51:                                               ; preds = %27
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %50, %35
  store i8* null, i8** %3, align 8
  br label %57

55:                                               ; preds = %24
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i32 @swapon_trim(i8*) #1

declare dso_local i32 @swapon(i8*) #1

declare dso_local i32 @swapoff(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
