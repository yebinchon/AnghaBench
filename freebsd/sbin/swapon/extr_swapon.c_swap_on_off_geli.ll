; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swap_on_off_geli.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/swapon/extr_swapon.c_swap_on_off_geli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@which_prog = common dso_local global i64 0, align 8
@SWAPON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s onetime%s %s\00", align 1
@_PATH_GELI = common dso_local global i32 0, align 4
@qflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: Invalid parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @swap_on_off_geli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @swap_on_off_geli(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @stat(i8* %12, %struct.stat* %8)
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* @which_prog, align 8
  %15 = load i64, i64* @SWAPON, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %55

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @swap_on_geli_args(i8* %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %60

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @swap_basename(i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @free(i8* %34)
  store i8* null, i8** %4, align 8
  br label %60

36:                                               ; preds = %28
  %37 = load i32, i32* @_PATH_GELI, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @run_cmd(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %38, i8* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i64, i64* @qflag, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  store i8* null, i8** %4, align 8
  br label %60

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %21
  br label %56

56:                                               ; preds = %55, %3
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @swap_on_off_sfile(i8* %57, i32 %58)
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %56, %53, %33, %27
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @swap_on_geli_args(i8*) #1

declare dso_local i8* @swap_basename(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @run_cmd(i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i8* @swap_on_off_sfile(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
