; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_update_drift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_update_drift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@accum_drift = common dso_local global i32 0, align 4
@USECSCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"update_drift: drift_comp %ld \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%4d.%03d %c%ld.%06ld %.24s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"update_drift: %d.%03d ppm \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @update_drift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_drift(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %3
  %15 = load i32, i32* @accum_drift, align 4
  %16 = load i32, i32* @USECSCALE, align 4
  %17 = call i32 @R_SHIFT(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @accum_drift, align 4
  %19 = load i32, i32* @USECSCALE, align 4
  %20 = shl i32 1, %19
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @accum_drift, align 4
  %24 = sext i32 %23 to i64
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i8*, i32, ...) @LPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = load i32, i32* @USECSCALE, align 4
  %30 = shl i32 1, %29
  %31 = sdiv i32 %28, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 45, i32 43
  %39 = trunc i32 %38 to i8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @l_abs(i64 %40)
  %42 = sdiv i32 %41, 1000000
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @l_abs(i64 %44)
  %46 = srem i32 %45, 1000000
  %47 = sext i32 %46 to i64
  %48 = call i32 @localtime(i32* %6)
  %49 = call i32 @asctime(i32 %48)
  %50 = call i32 @fprintf(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34, i8 signext %39, i64 %43, i64 %47, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i8*, i32, ...) @LPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @R_SHIFT(i32, i32) #1

declare dso_local i32 @LPRINTF(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i8 signext, i64, i64, i32) #1

declare dso_local i32 @l_abs(i64) #1

declare dso_local i32 @asctime(i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
