; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_MacsecEventIsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_MacsecEventIsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 (i32, i64)* }
%struct.TYPE_6__ = type { i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@NUM_OF_TX_SC = common dso_local global i64 0, align 8
@e_FM_MACSEC_MOD_SC_TX = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @MacsecEventIsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MacsecEventIsr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = load i32, i32* @E_INVALID_HANDLE, align 4
  %11 = call i32 @SANITY_CHECK_RETURN(%struct.TYPE_7__* %9, i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @GET_UINT32(i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @GET_UINT32(i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @WRITE_UINT32(i32 %30, i64 %31)
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %66, %1
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @NUM_OF_TX_SC, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @FM_MACSEC_EV_TX_SC_NEXT_PN(i64 %39)
  %41 = and i64 %38, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load i32, i32* @e_FM_MACSEC_MOD_SC_TX, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @e_FM_INTR_TYPE_NORMAL, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @GET_MACSEC_MODULE_EVENT(i32 %44, i64 %45, i32 %46, i64 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32 (i32, i64)*, i32 (i32, i64)** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 %55(i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %43, %37
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %6, align 8
  br label %33

69:                                               ; preds = %33
  ret void
}

declare dso_local i32 @SANITY_CHECK_RETURN(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @GET_UINT32(i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i64) #1

declare dso_local i64 @FM_MACSEC_EV_TX_SC_NEXT_PN(i64) #1

declare dso_local i32 @GET_MACSEC_MODULE_EVENT(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
