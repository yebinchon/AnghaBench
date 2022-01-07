; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_set_11n_tx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_set_11n_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar9300_txc = type { i32, i32, i32, i64, i64, i64, i32, i64 }
%struct.ath_hal_9300 = type { i64 }

@AR_frame_len = common dso_local global i32 0, align 4
@HAL_TXDESC_VMF = common dso_local global i32 0, align 4
@AR_virt_more_frag = common dso_local global i32 0, align 4
@AR_xmit_power0 = common dso_local global i32 0, align 4
@HAL_TXDESC_VEOL = common dso_local global i32 0, align 4
@AR_veol = common dso_local global i32 0, align 4
@HAL_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@AR_clr_dest_mask = common dso_local global i32 0, align 4
@HAL_TXKEYIX_INVALID = common dso_local global i32 0, align 4
@AR_dest_idx_valid = common dso_local global i32 0, align 4
@HAL_TXDESC_LOWRXCHAIN = common dso_local global i32 0, align 4
@AR_low_rx_chain = common dso_local global i32 0, align 4
@AR_dest_idx = common dso_local global i32 0, align 4
@AR_frame_type = common dso_local global i32 0, align 4
@HAL_TXDESC_NOACK = common dso_local global i32 0, align 4
@AR_no_ack = common dso_local global i32 0, align 4
@HAL_TXDESC_HWTS = common dso_local global i32 0, align 4
@AR_insert_ts = common dso_local global i32 0, align 4
@HAL_TXDESC_EXT_ONLY = common dso_local global i32 0, align 4
@AR_ext_only = common dso_local global i32 0, align 4
@HAL_TXDESC_EXT_AND_CTL = common dso_local global i32 0, align 4
@AR_ext_and_ctl = common dso_local global i32 0, align 4
@AR_encr_type = common dso_local global i32 0, align 4
@HAL_TXDESC_LDPC = common dso_local global i32 0, align 4
@AR_ldpc = common dso_local global i32 0, align 4
@AR_not_sounding = common dso_local global i32 0, align 4
@HAL_TXDESC_POS = common dso_local global i32 0, align 4
@AR_loc_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_set_11n_tx_desc(%struct.ath_hal* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ath_hal*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ar9300_txc*, align 8
  %18 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = call %struct.ar9300_txc* @AR9300TXC(i8* %19)
  store %struct.ar9300_txc* %20, %struct.ar9300_txc** %17, align 8
  %21 = load %struct.ath_hal*, %struct.ath_hal** %9, align 8
  %22 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %21)
  store %struct.ath_hal_9300* %22, %struct.ath_hal_9300** %18, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @is_valid_pkt_type(i32 %23)
  %25 = call i32 @HALASSERT(i32 %24)
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @is_valid_key_type(i32 %26)
  %28 = call i32 @HALASSERT(i32 %27)
  %29 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %18, align 8
  %30 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %36, 63
  br i1 %37, label %38, label %39

38:                                               ; preds = %8
  store i32 63, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @AR_frame_len, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @HAL_TXDESC_VMF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @AR_virt_more_frag, align 4
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %42, %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @AR_xmit_power0, align 4
  %55 = call i32 @SM(i32 %53, i32 %54)
  %56 = or i32 %52, %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @HAL_TXDESC_VEOL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @AR_veol, align 4
  br label %64

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = or i32 %56, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @HAL_TXDESC_CLRDMASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @AR_clr_dest_mask, align 4
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = or i32 %66, %75
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @HAL_TXKEYIX_INVALID, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @AR_dest_idx_valid, align 4
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %76, %84
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @HAL_TXDESC_LOWRXCHAIN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @AR_low_rx_chain, align 4
  br label %93

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = or i32 %85, %94
  %96 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %97 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @HAL_TXKEYIX_INVALID, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @AR_dest_idx, align 4
  %104 = call i32 @SM(i32 %102, i32 %103)
  br label %106

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %101
  %107 = phi i32 [ %104, %101 ], [ 0, %105 ]
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @AR_frame_type, align 4
  %110 = call i32 @SM(i32 %108, i32 %109)
  %111 = or i32 %107, %110
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @HAL_TXDESC_NOACK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* @AR_no_ack, align 4
  br label %119

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = or i32 %111, %120
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @HAL_TXDESC_HWTS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @AR_insert_ts, align 4
  br label %129

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  %131 = or i32 %121, %130
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @HAL_TXDESC_EXT_ONLY, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @AR_ext_only, align 4
  br label %139

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  %141 = or i32 %131, %140
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @HAL_TXDESC_EXT_AND_CTL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @AR_ext_and_ctl, align 4
  br label %149

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ]
  %151 = or i32 %141, %150
  %152 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %153 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @AR_encr_type, align 4
  %156 = call i32 @SM(i32 %154, i32 %155)
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* @HAL_TXDESC_LDPC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* @AR_ldpc, align 4
  br label %164

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = or i32 %156, %165
  %167 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %168 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %170 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %169, i32 0, i32 7
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* @AR_not_sounding, align 4
  %172 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %173 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @HAL_TXDESC_POS, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %164
  %179 = load i32, i32* @AR_loc_mode, align 4
  %180 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %181 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* @AR_not_sounding, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %187 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %178, %164
  %191 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %192 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %191, i32 0, i32 5
  store i64 0, i64* %192, align 8
  %193 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %194 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %193, i32 0, i32 4
  store i64 0, i64* %194, align 8
  %195 = load %struct.ar9300_txc*, %struct.ar9300_txc** %17, align 8
  %196 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %195, i32 0, i32 3
  store i64 0, i64* %196, align 8
  ret void
}

declare dso_local %struct.ar9300_txc* @AR9300TXC(i8*) #1

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @is_valid_pkt_type(i32) #1

declare dso_local i32 @is_valid_key_type(i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
