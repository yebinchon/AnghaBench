; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_lsb.c_ccp_assign_lsb_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_lsb.c_ccp_assign_lsb_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_LSB_REGIONS = common dso_local global i32 0, align 4
@MAX_HW_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Ignoring queue %u with no private LSB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_assign_lsb_regions(%struct.ccp_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ccp_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccp_softc* %0, %struct.ccp_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %85, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @nitems(%struct.TYPE_2__* %11)
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %88

14:                                               ; preds = %7
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  %17 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %16, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %85

23:                                               ; preds = %14
  %24 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %64, %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_LSB_REGIONS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MAX_HW_QUEUES, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul i32 %38, %39
  %41 = add i32 %37, %40
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = and i64 %36, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* @MAX_HW_QUEUES, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = shl i64 31, %58
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %4, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %4, align 8
  br label %67

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %31

67:                                               ; preds = %46, %31
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MAX_LSB_REGIONS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = shl i32 1, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %71, %67
  br label %85

85:                                               ; preds = %84, %22
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %7

88:                                               ; preds = %7
  ret void
}

declare dso_local i32 @nitems(%struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
