; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_aggregate_perfcounters_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_aggregate_perfcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@pc = common dso_local global i32 0, align 4
@IB_PC_EXT_PORT_SELECT_F = common dso_local global i32 0, align 4
@perf_count_ext = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IB_PC_EXT_COUNTER_SELECT_F = common dso_local global i32 0, align 4
@IB_PC_EXT_XMT_BYTES_F = common dso_local global i32 0, align 4
@IB_PC_EXT_RCV_BYTES_F = common dso_local global i32 0, align 4
@IB_PC_EXT_XMT_PKTS_F = common dso_local global i32 0, align 4
@IB_PC_EXT_RCV_PKTS_F = common dso_local global i32 0, align 4
@IB_PM_EXT_WIDTH_SUPPORTED = common dso_local global i32 0, align 4
@IB_PC_EXT_XMT_UPKTS_F = common dso_local global i32 0, align 4
@IB_PC_EXT_RCV_UPKTS_F = common dso_local global i32 0, align 4
@IB_PC_EXT_XMT_MPKTS_F = common dso_local global i32 0, align 4
@IB_PC_EXT_RCV_MPKTS_F = common dso_local global i32 0, align 4
@IB_PM_IS_ADDL_PORT_CTRS_EXT_SUP = common dso_local global i32 0, align 4
@IB_PC_EXT_COUNTER_SELECT2_F = common dso_local global i32 0, align 4
@IB_PC_EXT_ERR_SYM_F = common dso_local global i32 0, align 4
@IB_PC_EXT_LINK_RECOVERS_F = common dso_local global i32 0, align 4
@IB_PC_EXT_LINK_DOWNED_F = common dso_local global i32 0, align 4
@IB_PC_EXT_ERR_RCV_F = common dso_local global i32 0, align 4
@IB_PC_EXT_ERR_PHYSRCV_F = common dso_local global i32 0, align 4
@IB_PC_EXT_ERR_SWITCH_REL_F = common dso_local global i32 0, align 4
@IB_PC_EXT_XMT_DISCARDS_F = common dso_local global i32 0, align 4
@IB_PC_EXT_ERR_XMTCONSTR_F = common dso_local global i32 0, align 4
@IB_PC_EXT_ERR_RCVCONSTR_F = common dso_local global i32 0, align 4
@IB_PC_EXT_ERR_LOCALINTEG_F = common dso_local global i32 0, align 4
@IB_PC_EXT_ERR_EXCESS_OVR_F = common dso_local global i32 0, align 4
@IB_PC_EXT_VL15_DROPPED_F = common dso_local global i32 0, align 4
@IB_PC_EXT_XMT_WAIT_F = common dso_local global i32 0, align 4
@IB_PC_EXT_QP1_DROP_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @aggregate_perfcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggregate_perfcounters_ext(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @pc, align 4
  %8 = load i32, i32* @IB_PC_EXT_PORT_SELECT_F, align 4
  %9 = call i32 @mad_decode_field(i32 %7, i32 %8, i8** %5)
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 24), align 8
  %11 = load i32, i32* @pc, align 4
  %12 = load i32, i32* @IB_PC_EXT_COUNTER_SELECT_F, align 4
  %13 = call i32 @mad_decode_field(i32 %11, i32 %12, i8** %5)
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 23), align 8
  %15 = load i32, i32* @pc, align 4
  %16 = load i32, i32* @IB_PC_EXT_XMT_BYTES_F, align 4
  %17 = call i32 @mad_decode_field(i32 %15, i32 %16, i8** %6)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 22), i8* %18)
  %20 = load i32, i32* @pc, align 4
  %21 = load i32, i32* @IB_PC_EXT_RCV_BYTES_F, align 4
  %22 = call i32 @mad_decode_field(i32 %20, i32 %21, i8** %6)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 21), i8* %23)
  %25 = load i32, i32* @pc, align 4
  %26 = load i32, i32* @IB_PC_EXT_XMT_PKTS_F, align 4
  %27 = call i32 @mad_decode_field(i32 %25, i32 %26, i8** %6)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 20), i8* %28)
  %30 = load i32, i32* @pc, align 4
  %31 = load i32, i32* @IB_PC_EXT_RCV_PKTS_F, align 4
  %32 = call i32 @mad_decode_field(i32 %30, i32 %31, i8** %6)
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 19), i8* %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @IB_PM_EXT_WIDTH_SUPPORTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %2
  %40 = load i32, i32* @pc, align 4
  %41 = load i32, i32* @IB_PC_EXT_XMT_UPKTS_F, align 4
  %42 = call i32 @mad_decode_field(i32 %40, i32 %41, i8** %6)
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 18), i8* %43)
  %45 = load i32, i32* @pc, align 4
  %46 = load i32, i32* @IB_PC_EXT_RCV_UPKTS_F, align 4
  %47 = call i32 @mad_decode_field(i32 %45, i32 %46, i8** %6)
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 17), i8* %48)
  %50 = load i32, i32* @pc, align 4
  %51 = load i32, i32* @IB_PC_EXT_XMT_MPKTS_F, align 4
  %52 = call i32 @mad_decode_field(i32 %50, i32 %51, i8** %6)
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 16), i8* %53)
  %55 = load i32, i32* @pc, align 4
  %56 = load i32, i32* @IB_PC_EXT_RCV_MPKTS_F, align 4
  %57 = call i32 @mad_decode_field(i32 %55, i32 %56, i8** %6)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 15), i8* %58)
  br label %60

60:                                               ; preds = %39, %2
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @htonl(i8* %61)
  %63 = load i32, i32* @IB_PM_IS_ADDL_PORT_CTRS_EXT_SUP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %141

66:                                               ; preds = %60
  %67 = load i32, i32* @pc, align 4
  %68 = load i32, i32* @IB_PC_EXT_COUNTER_SELECT2_F, align 4
  %69 = call i32 @mad_decode_field(i32 %67, i32 %68, i8** %5)
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 14), align 8
  %71 = load i32, i32* @pc, align 4
  %72 = load i32, i32* @IB_PC_EXT_ERR_SYM_F, align 4
  %73 = call i32 @mad_decode_field(i32 %71, i32 %72, i8** %6)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 13), i8* %74)
  %76 = load i32, i32* @pc, align 4
  %77 = load i32, i32* @IB_PC_EXT_LINK_RECOVERS_F, align 4
  %78 = call i32 @mad_decode_field(i32 %76, i32 %77, i8** %6)
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 12), i8* %79)
  %81 = load i32, i32* @pc, align 4
  %82 = load i32, i32* @IB_PC_EXT_LINK_DOWNED_F, align 4
  %83 = call i32 @mad_decode_field(i32 %81, i32 %82, i8** %6)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 11), i8* %84)
  %86 = load i32, i32* @pc, align 4
  %87 = load i32, i32* @IB_PC_EXT_ERR_RCV_F, align 4
  %88 = call i32 @mad_decode_field(i32 %86, i32 %87, i8** %6)
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 10), i8* %89)
  %91 = load i32, i32* @pc, align 4
  %92 = load i32, i32* @IB_PC_EXT_ERR_PHYSRCV_F, align 4
  %93 = call i32 @mad_decode_field(i32 %91, i32 %92, i8** %6)
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 9), i8* %94)
  %96 = load i32, i32* @pc, align 4
  %97 = load i32, i32* @IB_PC_EXT_ERR_SWITCH_REL_F, align 4
  %98 = call i32 @mad_decode_field(i32 %96, i32 %97, i8** %6)
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 8), i8* %99)
  %101 = load i32, i32* @pc, align 4
  %102 = load i32, i32* @IB_PC_EXT_XMT_DISCARDS_F, align 4
  %103 = call i32 @mad_decode_field(i32 %101, i32 %102, i8** %6)
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 7), i8* %104)
  %106 = load i32, i32* @pc, align 4
  %107 = load i32, i32* @IB_PC_EXT_ERR_XMTCONSTR_F, align 4
  %108 = call i32 @mad_decode_field(i32 %106, i32 %107, i8** %6)
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 6), i8* %109)
  %111 = load i32, i32* @pc, align 4
  %112 = load i32, i32* @IB_PC_EXT_ERR_RCVCONSTR_F, align 4
  %113 = call i32 @mad_decode_field(i32 %111, i32 %112, i8** %6)
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 5), i8* %114)
  %116 = load i32, i32* @pc, align 4
  %117 = load i32, i32* @IB_PC_EXT_ERR_LOCALINTEG_F, align 4
  %118 = call i32 @mad_decode_field(i32 %116, i32 %117, i8** %6)
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 4), i8* %119)
  %121 = load i32, i32* @pc, align 4
  %122 = load i32, i32* @IB_PC_EXT_ERR_EXCESS_OVR_F, align 4
  %123 = call i32 @mad_decode_field(i32 %121, i32 %122, i8** %6)
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 3), i8* %124)
  %126 = load i32, i32* @pc, align 4
  %127 = load i32, i32* @IB_PC_EXT_VL15_DROPPED_F, align 4
  %128 = call i32 @mad_decode_field(i32 %126, i32 %127, i8** %6)
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 2), i8* %129)
  %131 = load i32, i32* @pc, align 4
  %132 = load i32, i32* @IB_PC_EXT_XMT_WAIT_F, align 4
  %133 = call i32 @mad_decode_field(i32 %131, i32 %132, i8** %6)
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 1), i8* %134)
  %136 = load i32, i32* @pc, align 4
  %137 = load i32, i32* @IB_PC_EXT_QP1_DROP_F, align 4
  %138 = call i32 @mad_decode_field(i32 %136, i32 %137, i8** %6)
  %139 = load i8*, i8** %6, align 8
  %140 = call i32 @aggregate_64bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 0), i8* %139)
  br label %141

141:                                              ; preds = %66, %60
  ret void
}

declare dso_local i32 @mad_decode_field(i32, i32, i8**) #1

declare dso_local i32 @aggregate_64bit(i32*, i8*) #1

declare dso_local i32 @htonl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
