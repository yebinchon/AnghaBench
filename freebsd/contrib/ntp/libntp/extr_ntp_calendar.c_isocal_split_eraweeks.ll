; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_isocal_split_eraweeks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_isocal_split_eraweeks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@isocal_split_eraweeks.bctab = internal constant [4 x i32] [i32 85, i32 130, i32 17, i32 62], align 16
@GREGORIAN_CYCLE_WEEKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isocal_split_eraweeks(i64 %0) #0 {
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @int32_sflag(i64 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @int32_to_uint32_2cpl(i64 %12)
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @uint32_saturate(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul i32 4, %16
  %18 = add i32 %17, 2
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %20, %21
  %23 = load i32, i32* @GREGORIAN_CYCLE_WEEKS, align 4
  %24 = udiv i32 %22, %23
  %25 = xor i32 %19, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GREGORIAN_CYCLE_WEEKS, align 4
  %28 = mul i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = sub i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = urem i32 %31, 4
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @uint32_2cpl_to_int32(i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = udiv i32 %36, 4
  %38 = mul i32 %37, 157
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* @isocal_split_eraweeks.bctab, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %38, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = udiv i32 %43, 8192
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = urem i32 %45, 8192
  store i32 %46, i32* %6, align 4
  %47 = load i64, i64* %4, align 8
  %48 = mul i64 100, %47
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = udiv i32 %54, 157
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = bitcast %struct.TYPE_3__* %2 to i64*
  %58 = load i64, i64* %57, align 4
  ret i64 %58
}

declare dso_local i32 @int32_sflag(i64) #1

declare dso_local i32 @uint32_saturate(i32, i32) #1

declare dso_local i32 @int32_to_uint32_2cpl(i64) #1

declare dso_local i64 @uint32_2cpl_to_int32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
