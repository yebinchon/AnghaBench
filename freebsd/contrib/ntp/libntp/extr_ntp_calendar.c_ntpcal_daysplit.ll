; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_daysplit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_daysplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SECSPERDAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntpcal_daysplit(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @int32_sflag(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %14, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %20, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 19
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 675
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  %32 = urem i32 %31, 675
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %1
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, 19
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 524287
  %38 = or i32 %35, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 3
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 29
  %43 = or i32 %40, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = udiv i32 %44, 675
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = urem i32 %46, 675
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 22
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 7
  %52 = and i32 %51, 4194303
  %53 = or i32 %49, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 %54, 22
  %56 = load i32, i32* %8, align 4
  %57 = udiv i32 %56, 675
  %58 = or i32 %55, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %4, align 4
  %61 = xor i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @uint32_2cpl_to_int32(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SECSPERDAY, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sub nsw i32 %68, %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = bitcast %struct.TYPE_10__* %2 to i64*
  %75 = load i64, i64* %74, align 4
  ret i64 %75
}

declare dso_local i32 @int32_sflag(i32) #1

declare dso_local i32 @uint32_2cpl_to_int32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
