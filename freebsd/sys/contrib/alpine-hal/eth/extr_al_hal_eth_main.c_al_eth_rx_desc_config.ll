; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_desc_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_rx_desc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@AL_ETH_L4_OFFSET = common dso_local global i32 0, align 4
@EC_RFW_CFG_A_0_LRO_CONTEXT_SEL = common dso_local global i32 0, align 4
@AL_ETH_L4_INNER_OUTER_CHK = common dso_local global i32 0, align 4
@EC_RFW_CFG_A_0_META_L4_CHK_RES_SEL = common dso_local global i32 0, align 4
@EC_RFW_CFG_A_0_META_L3_CHK_RES_SEL_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_L3_PROTO_IDX_INNER = common dso_local global i32 0, align 4
@EC_RFW_META_L3_PROT_SEL = common dso_local global i32 0, align 4
@AL_ETH_L4_PROTO_IDX_INNER = common dso_local global i32 0, align 4
@EC_RFW_META_L4_PROT_SEL = common dso_local global i32 0, align 4
@AL_ETH_L4_OFFSET_INNER = common dso_local global i32 0, align 4
@EC_RFW_META_L4_OFFSET_SEL = common dso_local global i32 0, align 4
@AL_ETH_L3_OFFSET_INNER = common dso_local global i32 0, align 4
@EC_RFW_META_L3_OFFSET_SEL = common dso_local global i32 0, align 4
@AL_ETH_FRAG_INNER = common dso_local global i32 0, align 4
@EC_RFW_META_FRAG_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_eth_rx_desc_config(%struct.al_hal_eth_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.al_hal_eth_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @AL_ETH_L4_OFFSET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = load i32, i32* @EC_RFW_CFG_A_0_LRO_CONTEXT_SEL, align 4
  br label %26

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load i32, i32* %19, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @AL_ETH_L4_INNER_OUTER_CHK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EC_RFW_CFG_A_0_META_L4_CHK_RES_SEL, align 4
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = load i32, i32* %19, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @EC_RFW_CFG_A_0_META_L3_CHK_RES_SEL_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %19, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %19, align 4
  %45 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %10, align 8
  %46 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @al_reg_write32(i32* %49, i32 %50)
  %52 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %10, align 8
  %53 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @al_reg_read32(i32* %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @AL_ETH_L3_PROTO_IDX_INNER, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %36
  %62 = load i32, i32* @EC_RFW_META_L3_PROT_SEL, align 4
  %63 = load i32, i32* %19, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %19, align 4
  br label %70

65:                                               ; preds = %36
  %66 = load i32, i32* @EC_RFW_META_L3_PROT_SEL, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %19, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @AL_ETH_L4_PROTO_IDX_INNER, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @EC_RFW_META_L4_PROT_SEL, align 4
  %76 = load i32, i32* %19, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %19, align 4
  br label %83

78:                                               ; preds = %70
  %79 = load i32, i32* @EC_RFW_META_L4_PROT_SEL, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %19, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %19, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @AL_ETH_L4_OFFSET_INNER, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @EC_RFW_META_L4_OFFSET_SEL, align 4
  %89 = load i32, i32* %19, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %19, align 4
  br label %96

91:                                               ; preds = %83
  %92 = load i32, i32* @EC_RFW_META_L4_OFFSET_SEL, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %19, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %19, align 4
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @AL_ETH_L3_OFFSET_INNER, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @EC_RFW_META_L3_OFFSET_SEL, align 4
  %102 = load i32, i32* %19, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %19, align 4
  br label %109

104:                                              ; preds = %96
  %105 = load i32, i32* @EC_RFW_META_L3_OFFSET_SEL, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %19, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @AL_ETH_FRAG_INNER, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* @EC_RFW_META_FRAG_SEL, align 4
  %115 = load i32, i32* %19, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %19, align 4
  br label %122

117:                                              ; preds = %109
  %118 = load i32, i32* @EC_RFW_META_FRAG_SEL, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %19, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %19, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %10, align 8
  %124 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @al_reg_write32(i32* %127, i32 %128)
  ret void
}

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
