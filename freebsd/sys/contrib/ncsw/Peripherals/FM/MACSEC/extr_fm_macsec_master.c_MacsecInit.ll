; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_MacsecInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_MacsecInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__*, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@CheckFmMacsecParameters = common dso_local global i32 0, align 4
@e_FM_MACSEC_EV_DUMMY_LAST = common dso_local global i64 0, align 8
@UnimplementedIsr = common dso_local global i32 0, align 4
@CFG_UECT_SHIFT = common dso_local global i64 0, align 8
@CFG_ESCBT_SHIFT = common dso_local global i64 0, align 8
@CFG_USFT_SHIFT = common dso_local global i64 0, align 8
@CFG_ITT_SHIFT = common dso_local global i64 0, align 8
@CFG_KFT_SHIFT = common dso_local global i64 0, align 8
@CFG_UFT_SHIFT = common dso_local global i64 0, align 8
@CFG_KSS_SHIFT = common dso_local global i64 0, align 8
@CFG_S0I_SHIFT = common dso_local global i64 0, align 8
@CFG_BYPN_SHIFT = common dso_local global i64 0, align 8
@FM_MACSEC_EX_ECC = common dso_local global i64 0, align 8
@NUM_OF_RX_SC = common dso_local global i32 0, align 4
@NUM_OF_TX_SC = common dso_local global i32 0, align 4
@e_FM_MOD_MACSEC = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@MacsecEventIsr = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@MacsecErrorIsr = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @MacsecInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MacsecInit(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %10, i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 13
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = load i32, i32* @E_INVALID_HANDLE, align 4
  %17 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %15, i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = load i32, i32* @CheckFmMacsecParameters, align 4
  %20 = call i32 @CHECK_INIT_PARAMETERS(%struct.TYPE_11__* %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 13
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %36, %1
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @e_FM_MACSEC_EV_DUMMY_LAST, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* @UnimplementedIsr, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 19
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %24

39:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CFG_UECT_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CFG_ESCBT_SHIFT, align 8
  %49 = shl i64 %47, %48
  %50 = or i64 %44, %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CFG_USFT_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = or i64 %50, %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CFG_ITT_SHIFT, align 8
  %61 = shl i64 %59, %60
  %62 = or i64 %56, %61
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CFG_KFT_SHIFT, align 8
  %67 = shl i64 %65, %66
  %68 = or i64 %62, %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CFG_UFT_SHIFT, align 8
  %73 = shl i64 %71, %72
  %74 = or i64 %68, %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CFG_KSS_SHIFT, align 8
  %79 = shl i64 %77, %78
  %80 = or i64 %74, %79
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CFG_S0I_SHIFT, align 8
  %85 = shl i64 %83, %84
  %86 = or i64 %80, %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CFG_BYPN_SHIFT, align 8
  %91 = shl i64 %89, %90
  %92 = or i64 %86, %91
  %93 = load i64, i64* %5, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %5, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 16
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @WRITE_UINT32(i32 %99, i64 %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @FM_MAC_GetMaxFrameLength(i32 %104)
  store i64 %105, i64* %5, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 18
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %5, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 16
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @WRITE_UINT32(i32 %115, i64 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 16
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @WRITE_UINT32(i32 %122, i64 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 17
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %39
  %132 = load i64, i64* @FM_MACSEC_EX_ECC, align 8
  %133 = xor i64 %132, -1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 10
  %136 = load i64, i64* %135, align 8
  %137 = and i64 %136, %133
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %131, %39
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 16
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 10
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @WRITE_UINT32(i32 %143, i64 %146)
  %148 = load i32, i32* @NUM_OF_RX_SC, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 15
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %138
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 15
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %155, %138
  %161 = load i32, i32* @NUM_OF_TX_SC, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 14
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = call i32 @XX_Free(%struct.TYPE_11__* %164)
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 13
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %167, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @FM_MAC_GetId(i32 %170, i64* %7)
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @e_FM_MOD_MACSEC, align 4
  %176 = load i64, i64* %7, align 8
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* @e_FM_INTR_TYPE_NORMAL, align 4
  %179 = load i32, i32* @MacsecEventIsr, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = call i32 @FmRegisterIntr(i32 %174, i32 %175, i32 %177, i32 %178, i32 %179, %struct.TYPE_11__* %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @e_FM_MOD_MACSEC, align 4
  %186 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %187 = load i32, i32* @MacsecErrorIsr, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %189 = call i32 @FmRegisterIntr(i32 %184, i32 %185, i32 0, i32 %186, i32 %187, %struct.TYPE_11__* %188)
  %190 = load i32, i32* @E_OK, align 4
  ret i32 %190
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @CHECK_INIT_PARAMETERS(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i64) #1

declare dso_local i64 @FM_MAC_GetMaxFrameLength(i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_11__*) #1

declare dso_local i32 @FM_MAC_GetId(i32, i64*) #1

declare dso_local i32 @FmRegisterIntr(i32, i32, i32, i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
