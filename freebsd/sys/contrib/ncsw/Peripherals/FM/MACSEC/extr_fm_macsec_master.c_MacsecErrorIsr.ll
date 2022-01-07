; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_MacsecErrorIsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_MacsecErrorIsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i32 (i32, i32)*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 (i32, i64)* }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@NUM_OF_TX_SC = common dso_local global i64 0, align 8
@e_FM_MACSEC_MOD_SC_TX = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@FM_MACSEC_EX_ECC = common dso_local global i64 0, align 8
@MECC_CAP = common dso_local global i64 0, align 8
@MECC_CET = common dso_local global i64 0, align 8
@MECC_CET_SHIFT = common dso_local global i64 0, align 8
@FM_MACSEC_USER_EX_SINGLE_BIT_ECC = common dso_local global i32 0, align 4
@e_FM_MACSEC_EX_SINGLE_BIT_ECC = common dso_local global i32 0, align 4
@FM_MACSEC_USER_EX_MULTI_BIT_ECC = common dso_local global i32 0, align 4
@e_FM_MACSEC_EX_MULTI_BIT_ECC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @MacsecErrorIsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MacsecErrorIsr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* @E_INVALID_HANDLE, align 4
  %13 = call i32 @SANITY_CHECK_RETURN(%struct.TYPE_7__* %11, i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @GET_UINT32(i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @GET_UINT32(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @WRITE_UINT32(i32 %32, i64 %33)
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %68, %1
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @NUM_OF_TX_SC, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @FM_MACSEC_EX_TX_SC(i64 %41)
  %43 = and i64 %40, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load i32, i32* @e_FM_MACSEC_MOD_SC_TX, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @GET_MACSEC_MODULE_EVENT(i32 %46, i64 %47, i32 %48, i64 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32 (i32, i64)*, i32 (i32, i64)** %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 %57(i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %45, %39
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %35

71:                                               ; preds = %35
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @FM_MACSEC_EX_ECC, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %139

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @GET_UINT32(i32 %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @MECC_CAP, align 8
  %85 = and i64 %83, %84
  %86 = call i32 @ASSERT_COND(i64 %85)
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @MECC_CET, align 8
  %89 = and i64 %87, %88
  %90 = load i64, i64* @MECC_CET_SHIFT, align 8
  %91 = ashr i64 %89, %90
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %76
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @FM_MACSEC_USER_EX_SINGLE_BIT_ECC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32 (i32, i32)*, i32 (i32, i32)** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @e_FM_MACSEC_EX_SINGLE_BIT_ECC, align 4
  %109 = call i32 %104(i32 %107, i32 %108)
  br label %138

110:                                              ; preds = %94, %76
  %111 = load i64, i64* %7, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @FM_MACSEC_USER_EX_MULTI_BIT_ECC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32 (i32, i32)*, i32 (i32, i32)** %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @e_FM_MACSEC_EX_MULTI_BIT_ECC, align 4
  %128 = call i32 %123(i32 %126, i32 %127)
  br label %137

129:                                              ; preds = %113, %110
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @WRITE_UINT32(i32 %134, i64 %135)
  br label %137

137:                                              ; preds = %129, %120
  br label %138

138:                                              ; preds = %137, %101
  br label %139

139:                                              ; preds = %138, %71
  ret void
}

declare dso_local i32 @SANITY_CHECK_RETURN(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @GET_UINT32(i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i64) #1

declare dso_local i64 @FM_MACSEC_EX_TX_SC(i64) #1

declare dso_local i32 @GET_MACSEC_MODULE_EVENT(i32, i64, i32, i64) #1

declare dso_local i32 @ASSERT_COND(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
