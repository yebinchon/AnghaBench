; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_priv_timesplit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_priv_timesplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECSPERMIN = common dso_local global i32 0, align 4
@MINSPERHR = common dso_local global i32 0, align 4
@HRSPERDAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64)* @priv_timesplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @priv_timesplit(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @int32_sflag(i64 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @int32_to_uint32_2cpl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %14, %15
  %17 = load i32, i32* @SECSPERMIN, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MINSPERHR, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @HRSPERDAY, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @HRSPERDAY, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sub nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %3, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MINSPERHR, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sub nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %3, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SECSPERMIN, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sub nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %3, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @uint32_2cpl_to_int32(i32 %58)
  ret i64 %59
}

declare dso_local i32 @int32_sflag(i64) #1

declare dso_local i32 @int32_to_uint32_2cpl(i64) #1

declare dso_local i64 @uint32_2cpl_to_int32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
