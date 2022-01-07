; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_packet_size_cfg_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_packet_size_cfg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.al_udma_m2s_pkt_len_conf = type { i64, i64 }

@UDMA_M2S_CFG_LEN_MAX_PKT_SIZE_MASK = common dso_local global i64 0, align 8
@UDMA_TX = common dso_local global i64 0, align 8
@AL_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"udma [%s]: requested max_pkt_size (0x%x) exceeds thesupported limit (0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UDMA_M2S_CFG_LEN_ENCODE_64K = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_packet_size_cfg_set(%struct.al_udma* %0, %struct.al_udma_m2s_pkt_len_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca %struct.al_udma_m2s_pkt_len_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store %struct.al_udma_m2s_pkt_len_conf* %1, %struct.al_udma_m2s_pkt_len_conf** %5, align 8
  %8 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %9 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i64 @al_reg_read32(i32* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* @UDMA_M2S_CFG_LEN_MAX_PKT_SIZE_MASK, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %17 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UDMA_TX, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @al_assert(i32 %21)
  %23 = load %struct.al_udma_m2s_pkt_len_conf*, %struct.al_udma_m2s_pkt_len_conf** %5, align 8
  %24 = getelementptr inbounds %struct.al_udma_m2s_pkt_len_conf, %struct.al_udma_m2s_pkt_len_conf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AL_TRUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.al_udma_m2s_pkt_len_conf*, %struct.al_udma_m2s_pkt_len_conf** %5, align 8
  %33 = getelementptr inbounds %struct.al_udma_m2s_pkt_len_conf, %struct.al_udma_m2s_pkt_len_conf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %39 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.al_udma_m2s_pkt_len_conf*, %struct.al_udma_m2s_pkt_len_conf** %5, align 8
  %42 = getelementptr inbounds %struct.al_udma_m2s_pkt_len_conf, %struct.al_udma_m2s_pkt_len_conf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @al_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %85

48:                                               ; preds = %31
  %49 = load i64, i64* @UDMA_M2S_CFG_LEN_ENCODE_64K, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %6, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load %struct.al_udma_m2s_pkt_len_conf*, %struct.al_udma_m2s_pkt_len_conf** %5, align 8
  %54 = getelementptr inbounds %struct.al_udma_m2s_pkt_len_conf, %struct.al_udma_m2s_pkt_len_conf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AL_TRUE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i64, i64* @UDMA_M2S_CFG_LEN_ENCODE_64K, align 8
  %60 = load i64, i64* %6, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %67

62:                                               ; preds = %48
  %63 = load i64, i64* @UDMA_M2S_CFG_LEN_ENCODE_64K, align 8
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %6, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i64, i64* @UDMA_M2S_CFG_LEN_MAX_PKT_SIZE_MASK, align 8
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %6, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %6, align 8
  %72 = load %struct.al_udma_m2s_pkt_len_conf*, %struct.al_udma_m2s_pkt_len_conf** %5, align 8
  %73 = getelementptr inbounds %struct.al_udma_m2s_pkt_len_conf, %struct.al_udma_m2s_pkt_len_conf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %6, align 8
  %77 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %78 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @al_reg_write32(i32* %82, i64 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %67, %37
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @al_reg_read32(i32*) #1

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_err(i8*, i32, i64, i64) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
