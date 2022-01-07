; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_output_aggregate_perfcounters_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_output_aggregate_perfcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ALL_PORTS = common dso_local global i32 0, align 4
@pc = common dso_local global i32 0, align 4
@IB_PC_EXT_PORT_SELECT_F = common dso_local global i32 0, align 4
@IB_PC_EXT_COUNTER_SELECT_F = common dso_local global i32 0, align 4
@perf_count_ext = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
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
@.str = private unnamed_addr constant [75 x i8] c"# Port extended counters: %s port %d (CapMask: 0x%02X CapMask2: 0x%07X)\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @output_aggregate_perfcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_aggregate_perfcounters_ext(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1536 x i8], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ALL_PORTS, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds [1536 x i8], [1536 x i8]* %7, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 1536)
  %12 = load i32, i32* @pc, align 4
  %13 = load i32, i32* @IB_PC_EXT_PORT_SELECT_F, align 4
  %14 = call i32 @mad_encode_field(i32 %12, i32 %13, i32* %8)
  %15 = load i32, i32* @pc, align 4
  %16 = load i32, i32* @IB_PC_EXT_COUNTER_SELECT_F, align 4
  %17 = call i32 @mad_encode_field(i32 %15, i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 0))
  %18 = load i32, i32* @pc, align 4
  %19 = load i32, i32* @IB_PC_EXT_XMT_BYTES_F, align 4
  %20 = call i32 @mad_encode_field(i32 %18, i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 1))
  %21 = load i32, i32* @pc, align 4
  %22 = load i32, i32* @IB_PC_EXT_RCV_BYTES_F, align 4
  %23 = call i32 @mad_encode_field(i32 %21, i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 2))
  %24 = load i32, i32* @pc, align 4
  %25 = load i32, i32* @IB_PC_EXT_XMT_PKTS_F, align 4
  %26 = call i32 @mad_encode_field(i32 %24, i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 3))
  %27 = load i32, i32* @pc, align 4
  %28 = load i32, i32* @IB_PC_EXT_RCV_PKTS_F, align 4
  %29 = call i32 @mad_encode_field(i32 %27, i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 4))
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IB_PM_EXT_WIDTH_SUPPORTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %3
  %35 = load i32, i32* @pc, align 4
  %36 = load i32, i32* @IB_PC_EXT_XMT_UPKTS_F, align 4
  %37 = call i32 @mad_encode_field(i32 %35, i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 5))
  %38 = load i32, i32* @pc, align 4
  %39 = load i32, i32* @IB_PC_EXT_RCV_UPKTS_F, align 4
  %40 = call i32 @mad_encode_field(i32 %38, i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 6))
  %41 = load i32, i32* @pc, align 4
  %42 = load i32, i32* @IB_PC_EXT_XMT_MPKTS_F, align 4
  %43 = call i32 @mad_encode_field(i32 %41, i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 7))
  %44 = load i32, i32* @pc, align 4
  %45 = load i32, i32* @IB_PC_EXT_RCV_MPKTS_F, align 4
  %46 = call i32 @mad_encode_field(i32 %44, i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 8))
  br label %47

47:                                               ; preds = %34, %3
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @htonl(i32 %48)
  %50 = load i32, i32* @IB_PM_IS_ADDL_PORT_CTRS_EXT_SUP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %99

53:                                               ; preds = %47
  %54 = load i32, i32* @pc, align 4
  %55 = load i32, i32* @IB_PC_EXT_COUNTER_SELECT2_F, align 4
  %56 = call i32 @mad_encode_field(i32 %54, i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 9))
  %57 = load i32, i32* @pc, align 4
  %58 = load i32, i32* @IB_PC_EXT_ERR_SYM_F, align 4
  %59 = call i32 @mad_encode_field(i32 %57, i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 10))
  %60 = load i32, i32* @pc, align 4
  %61 = load i32, i32* @IB_PC_EXT_LINK_RECOVERS_F, align 4
  %62 = call i32 @mad_encode_field(i32 %60, i32 %61, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 11))
  %63 = load i32, i32* @pc, align 4
  %64 = load i32, i32* @IB_PC_EXT_LINK_DOWNED_F, align 4
  %65 = call i32 @mad_encode_field(i32 %63, i32 %64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 12))
  %66 = load i32, i32* @pc, align 4
  %67 = load i32, i32* @IB_PC_EXT_ERR_RCV_F, align 4
  %68 = call i32 @mad_encode_field(i32 %66, i32 %67, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 13))
  %69 = load i32, i32* @pc, align 4
  %70 = load i32, i32* @IB_PC_EXT_ERR_PHYSRCV_F, align 4
  %71 = call i32 @mad_encode_field(i32 %69, i32 %70, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 14))
  %72 = load i32, i32* @pc, align 4
  %73 = load i32, i32* @IB_PC_EXT_ERR_SWITCH_REL_F, align 4
  %74 = call i32 @mad_encode_field(i32 %72, i32 %73, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 15))
  %75 = load i32, i32* @pc, align 4
  %76 = load i32, i32* @IB_PC_EXT_XMT_DISCARDS_F, align 4
  %77 = call i32 @mad_encode_field(i32 %75, i32 %76, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 16))
  %78 = load i32, i32* @pc, align 4
  %79 = load i32, i32* @IB_PC_EXT_ERR_XMTCONSTR_F, align 4
  %80 = call i32 @mad_encode_field(i32 %78, i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 17))
  %81 = load i32, i32* @pc, align 4
  %82 = load i32, i32* @IB_PC_EXT_ERR_RCVCONSTR_F, align 4
  %83 = call i32 @mad_encode_field(i32 %81, i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 18))
  %84 = load i32, i32* @pc, align 4
  %85 = load i32, i32* @IB_PC_EXT_ERR_LOCALINTEG_F, align 4
  %86 = call i32 @mad_encode_field(i32 %84, i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 19))
  %87 = load i32, i32* @pc, align 4
  %88 = load i32, i32* @IB_PC_EXT_ERR_EXCESS_OVR_F, align 4
  %89 = call i32 @mad_encode_field(i32 %87, i32 %88, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 20))
  %90 = load i32, i32* @pc, align 4
  %91 = load i32, i32* @IB_PC_EXT_VL15_DROPPED_F, align 4
  %92 = call i32 @mad_encode_field(i32 %90, i32 %91, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 21))
  %93 = load i32, i32* @pc, align 4
  %94 = load i32, i32* @IB_PC_EXT_XMT_WAIT_F, align 4
  %95 = call i32 @mad_encode_field(i32 %93, i32 %94, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 22))
  %96 = load i32, i32* @pc, align 4
  %97 = load i32, i32* @IB_PC_EXT_QP1_DROP_F, align 4
  %98 = call i32 @mad_encode_field(i32 %96, i32 %97, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count_ext, i32 0, i32 23))
  br label %99

99:                                               ; preds = %53, %47
  %100 = getelementptr inbounds [1536 x i8], [1536 x i8]* %7, i64 0, i64 0
  %101 = load i32, i32* @pc, align 4
  %102 = call i32 @mad_dump_perfcounters_ext(i8* %100, i32 1536, i32 %101, i32 4)
  %103 = load i32*, i32** %4, align 8
  %104 = call i8* @portid2str(i32* %103)
  %105 = load i32, i32* @ALL_PORTS, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ntohs(i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = getelementptr inbounds [1536 x i8], [1536 x i8]* %7, i64 0, i64 0
  %110 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %104, i32 %105, i32 %107, i32 %108, i8* %109)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mad_encode_field(i32, i32, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @mad_dump_perfcounters_ext(i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i8*) #1

declare dso_local i8* @portid2str(i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
