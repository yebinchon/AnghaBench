; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ctrl_index_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ctrl_index_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_fwd_ctrl_table_index = type { i64, i64, i64, i64, i64, i64 }

@AL_ETH_FWD_CTRL_IDX_VLAN_TABLE_OUT_ANY = common dso_local global i64 0, align 8
@AL_ETH_FWD_CTRL_IDX_TUNNEL_ANY = common dso_local global i64 0, align 8
@AL_ETH_FWD_CTRL_IDX_VLAN_ANY = common dso_local global i64 0, align 8
@AL_ETH_FWD_CTRL_IDX_MAC_TABLE_ANY = common dso_local global i64 0, align 8
@AL_ETH_PROTO_ID_ANY = common dso_local global i64 0, align 8
@AL_ETH_FWD_CTRL_IDX_MAC_DA_TYPE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_fwd_ctrl_table_index*, i32)* @al_eth_ctrl_index_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_ctrl_index_match(%struct.al_eth_fwd_ctrl_table_index* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_eth_fwd_ctrl_table_index*, align 8
  %5 = alloca i32, align 4
  store %struct.al_eth_fwd_ctrl_table_index* %0, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %7 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AL_ETH_FWD_CTRL_IDX_VLAN_TABLE_OUT_ANY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %13 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @AL_REG_BIT_GET(i32 %15, i32 0)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %92

19:                                               ; preds = %11, %2
  %20 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %21 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AL_ETH_FWD_CTRL_IDX_TUNNEL_ANY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %27 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @AL_REG_BIT_GET(i32 %29, i32 1)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %92

33:                                               ; preds = %25, %19
  %34 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %35 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AL_ETH_FWD_CTRL_IDX_VLAN_ANY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %41 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @AL_REG_BIT_GET(i32 %43, i32 2)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %92

47:                                               ; preds = %39, %33
  %48 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %49 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AL_ETH_FWD_CTRL_IDX_MAC_TABLE_ANY, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %55 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @AL_REG_BIT_GET(i32 %57, i32 3)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %92

61:                                               ; preds = %53, %47
  %62 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %63 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AL_ETH_PROTO_ID_ANY, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %69 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @AL_FIELD_MASK(i32 8, i32 4)
  %73 = call i64 @AL_REG_FIELD_GET(i32 %71, i32 %72, i32 4)
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %92

76:                                               ; preds = %67, %61
  %77 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %78 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AL_ETH_FWD_CTRL_IDX_MAC_DA_TYPE_ANY, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %4, align 8
  %84 = getelementptr inbounds %struct.al_eth_fwd_ctrl_table_index, %struct.al_eth_fwd_ctrl_table_index* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @AL_FIELD_MASK(i32 10, i32 9)
  %88 = call i64 @AL_REG_FIELD_GET(i32 %86, i32 %87, i32 9)
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %92

91:                                               ; preds = %82, %76
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %90, %75, %60, %46, %32, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @AL_REG_BIT_GET(i32, i32) #1

declare dso_local i64 @AL_REG_FIELD_GET(i32, i32, i32) #1

declare dso_local i32 @AL_FIELD_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
