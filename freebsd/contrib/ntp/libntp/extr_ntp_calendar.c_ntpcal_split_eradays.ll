; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_split_eradays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_split_eradays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GREGORIAN_CYCLE_DAYS = common dso_local global i32 0, align 4
@GREGORIAN_NORMAL_LEAP_CYCLE_DAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntpcal_split_eradays(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @int32_sflag(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @int32_to_uint32_2cpl(i32 %13)
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @uint32_saturate(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul i32 4, %17
  %19 = or i32 %18, 3
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = xor i32 %21, %22
  %24 = load i32, i32* @GREGORIAN_CYCLE_DAYS, align 4
  %25 = udiv i32 %23, %24
  %26 = xor i32 %20, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @GREGORIAN_CYCLE_DAYS, align 4
  %30 = mul i32 %28, %29
  %31 = sub i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @uint32_2cpl_to_int32(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, 3
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GREGORIAN_NORMAL_LEAP_CYCLE_DAYS, align 4
  %38 = udiv i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GREGORIAN_NORMAL_LEAP_CYCLE_DAYS, align 4
  %41 = urem i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 100
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = udiv i32 %47, 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %2
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = and i32 %54, 3
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 99
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  %63 = and i32 %62, 3
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ true, %57 ], [ %65, %60 ]
  br label %68

68:                                               ; preds = %66, %52
  %69 = phi i1 [ false, %52 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %2
  %73 = bitcast %struct.TYPE_3__* %3 to i64*
  %74 = load i64, i64* %73, align 4
  ret i64 %74
}

declare dso_local i32 @int32_sflag(i32) #1

declare dso_local i32 @uint32_saturate(i32, i32) #1

declare dso_local i32 @int32_to_uint32_2cpl(i32) #1

declare dso_local i32 @uint32_2cpl_to_int32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
