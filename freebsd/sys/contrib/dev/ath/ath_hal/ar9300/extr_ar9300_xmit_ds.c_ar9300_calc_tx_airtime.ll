; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_calc_tx_airtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_xmit_ds.c_ar9300_calc_tx_airtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_tx_status = type { i32, i32, i32 }
%struct.ar9300_txc = type { i32, i32, i32 }

@HAL_TX_BA = common dso_local global i32 0, align 4
@AR_packet_dur0 = common dso_local global i32 0, align 4
@AR_packet_dur1 = common dso_local global i32 0, align 4
@AR_xmit_data_tries0 = common dso_local global i32 0, align 4
@AR_packet_dur2 = common dso_local global i32 0, align 4
@AR_xmit_data_tries1 = common dso_local global i32 0, align 4
@AR_packet_dur3 = common dso_local global i32 0, align 4
@AR_xmit_data_tries2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_calc_tx_airtime(%struct.ath_hal* %0, i8* %1, %struct.ath_tx_status* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ath_tx_status*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ar9300_txc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call %struct.ar9300_txc* @AR9300TXC(i8* %18)
  store %struct.ar9300_txc* %19, %struct.ar9300_txc** %14, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %6
  %23 = load %struct.ath_tx_status*, %struct.ath_tx_status** %10, align 8
  %24 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ath_tx_status*, %struct.ath_tx_status** %10, align 8
  %27 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HAL_TX_BA, align 4
  %30 = and i32 %28, %29
  %31 = add nsw i32 %25, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %15, align 4
  br label %39

35:                                               ; preds = %6
  %36 = load %struct.ath_tx_status*, %struct.ath_tx_status** %10, align 8
  %37 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %35, %22
  %40 = load %struct.ath_tx_status*, %struct.ath_tx_status** %10, align 8
  %41 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %151 [
    i32 0, label %43
    i32 1, label %52
    i32 2, label %73
    i32 3, label %106
  ]

43:                                               ; preds = %39
  %44 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %45 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AR_packet_dur0, align 4
  %48 = call i32 @MS(i32 %46, i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %15, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %16, align 4
  br label %153

52:                                               ; preds = %39
  %53 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %54 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AR_packet_dur1, align 4
  %57 = call i32 @MS(i32 %55, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %62 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR_xmit_data_tries0, align 4
  %65 = call i32 @MS(i32 %63, i32 %64)
  %66 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %67 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AR_packet_dur0, align 4
  %70 = call i32 @MS(i32 %68, i32 %69)
  %71 = mul nsw i32 %65, %70
  %72 = add nsw i32 %60, %71
  store i32 %72, i32* %16, align 4
  br label %153

73:                                               ; preds = %39
  %74 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %75 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AR_packet_dur2, align 4
  %78 = call i32 @MS(i32 %76, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %83 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AR_xmit_data_tries1, align 4
  %86 = call i32 @MS(i32 %84, i32 %85)
  %87 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %88 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AR_packet_dur1, align 4
  %91 = call i32 @MS(i32 %89, i32 %90)
  %92 = mul nsw i32 %86, %91
  %93 = add nsw i32 %81, %92
  %94 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %95 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AR_xmit_data_tries0, align 4
  %98 = call i32 @MS(i32 %96, i32 %97)
  %99 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %100 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AR_packet_dur0, align 4
  %103 = call i32 @MS(i32 %101, i32 %102)
  %104 = mul nsw i32 %98, %103
  %105 = add nsw i32 %93, %104
  store i32 %105, i32* %16, align 4
  br label %153

106:                                              ; preds = %39
  %107 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %108 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AR_packet_dur3, align 4
  %111 = call i32 @MS(i32 %109, i32 %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %15, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %116 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AR_xmit_data_tries2, align 4
  %119 = call i32 @MS(i32 %117, i32 %118)
  %120 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %121 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @AR_packet_dur2, align 4
  %124 = call i32 @MS(i32 %122, i32 %123)
  %125 = mul nsw i32 %119, %124
  %126 = add nsw i32 %114, %125
  %127 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %128 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AR_xmit_data_tries1, align 4
  %131 = call i32 @MS(i32 %129, i32 %130)
  %132 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %133 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AR_packet_dur1, align 4
  %136 = call i32 @MS(i32 %134, i32 %135)
  %137 = mul nsw i32 %131, %136
  %138 = add nsw i32 %126, %137
  %139 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %140 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AR_xmit_data_tries0, align 4
  %143 = call i32 @MS(i32 %141, i32 %142)
  %144 = load %struct.ar9300_txc*, %struct.ar9300_txc** %14, align 8
  %145 = getelementptr inbounds %struct.ar9300_txc, %struct.ar9300_txc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AR_packet_dur0, align 4
  %148 = call i32 @MS(i32 %146, i32 %147)
  %149 = mul nsw i32 %143, %148
  %150 = add nsw i32 %138, %149
  store i32 %150, i32* %16, align 4
  br label %153

151:                                              ; preds = %39
  %152 = call i32 @HALASSERT(i32 0)
  store i32 0, i32* %7, align 4
  br label %179

153:                                              ; preds = %106, %73, %52, %43
  %154 = load i64, i64* %11, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %153
  %157 = load %struct.ath_tx_status*, %struct.ath_tx_status** %10, align 8
  %158 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @HAL_TX_BA, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %156
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %12, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %13, align 4
  %171 = sdiv i32 %169, %170
  br label %173

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %166
  %174 = phi i32 [ %171, %166 ], [ 0, %172 ]
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %173, %156, %153
  %178 = load i32, i32* %16, align 4
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %177, %151
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local %struct.ar9300_txc* @AR9300TXC(i8*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
