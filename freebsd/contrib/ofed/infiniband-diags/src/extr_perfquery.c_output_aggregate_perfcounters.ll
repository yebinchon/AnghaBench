; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_output_aggregate_perfcounters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_output_aggregate_perfcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ALL_PORTS = common dso_local global i32 0, align 4
@pc = common dso_local global i32 0, align 4
@IB_PC_PORT_SELECT_F = common dso_local global i32 0, align 4
@IB_PC_COUNTER_SELECT_F = common dso_local global i32 0, align 4
@perf_count = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IB_PC_ERR_SYM_F = common dso_local global i32 0, align 4
@IB_PC_LINK_RECOVERS_F = common dso_local global i32 0, align 4
@IB_PC_LINK_DOWNED_F = common dso_local global i32 0, align 4
@IB_PC_ERR_RCV_F = common dso_local global i32 0, align 4
@IB_PC_ERR_PHYSRCV_F = common dso_local global i32 0, align 4
@IB_PC_ERR_SWITCH_REL_F = common dso_local global i32 0, align 4
@IB_PC_XMT_DISCARDS_F = common dso_local global i32 0, align 4
@IB_PC_ERR_XMTCONSTR_F = common dso_local global i32 0, align 4
@IB_PC_ERR_RCVCONSTR_F = common dso_local global i32 0, align 4
@IB_PC_ERR_LOCALINTEG_F = common dso_local global i32 0, align 4
@IB_PC_ERR_EXCESS_OVR_F = common dso_local global i32 0, align 4
@IB_PC_VL15_DROPPED_F = common dso_local global i32 0, align 4
@IB_PC_XMT_BYTES_F = common dso_local global i32 0, align 4
@IB_PC_RCV_BYTES_F = common dso_local global i32 0, align 4
@IB_PC_XMT_PKTS_F = common dso_local global i32 0, align 4
@IB_PC_RCV_PKTS_F = common dso_local global i32 0, align 4
@IB_PC_XMT_WAIT_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"# Port counters: %s port %d (CapMask: 0x%02X)\0A%s\00", align 1
@IB_PC_QP1_DROP_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @output_aggregate_perfcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_aggregate_perfcounters(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ALL_PORTS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @pc, align 4
  %9 = load i32, i32* @IB_PC_PORT_SELECT_F, align 4
  %10 = call i32 @mad_encode_field(i32 %8, i32 %9, i32* %6)
  %11 = load i32, i32* @pc, align 4
  %12 = load i32, i32* @IB_PC_COUNTER_SELECT_F, align 4
  %13 = call i32 @mad_encode_field(i32 %11, i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 0))
  %14 = load i32, i32* @pc, align 4
  %15 = load i32, i32* @IB_PC_ERR_SYM_F, align 4
  %16 = call i32 @mad_encode_field(i32 %14, i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 1))
  %17 = load i32, i32* @pc, align 4
  %18 = load i32, i32* @IB_PC_LINK_RECOVERS_F, align 4
  %19 = call i32 @mad_encode_field(i32 %17, i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 2))
  %20 = load i32, i32* @pc, align 4
  %21 = load i32, i32* @IB_PC_LINK_DOWNED_F, align 4
  %22 = call i32 @mad_encode_field(i32 %20, i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 3))
  %23 = load i32, i32* @pc, align 4
  %24 = load i32, i32* @IB_PC_ERR_RCV_F, align 4
  %25 = call i32 @mad_encode_field(i32 %23, i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 4))
  %26 = load i32, i32* @pc, align 4
  %27 = load i32, i32* @IB_PC_ERR_PHYSRCV_F, align 4
  %28 = call i32 @mad_encode_field(i32 %26, i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 5))
  %29 = load i32, i32* @pc, align 4
  %30 = load i32, i32* @IB_PC_ERR_SWITCH_REL_F, align 4
  %31 = call i32 @mad_encode_field(i32 %29, i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 6))
  %32 = load i32, i32* @pc, align 4
  %33 = load i32, i32* @IB_PC_XMT_DISCARDS_F, align 4
  %34 = call i32 @mad_encode_field(i32 %32, i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 7))
  %35 = load i32, i32* @pc, align 4
  %36 = load i32, i32* @IB_PC_ERR_XMTCONSTR_F, align 4
  %37 = call i32 @mad_encode_field(i32 %35, i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 8))
  %38 = load i32, i32* @pc, align 4
  %39 = load i32, i32* @IB_PC_ERR_RCVCONSTR_F, align 4
  %40 = call i32 @mad_encode_field(i32 %38, i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 9))
  %41 = load i32, i32* @pc, align 4
  %42 = load i32, i32* @IB_PC_ERR_LOCALINTEG_F, align 4
  %43 = call i32 @mad_encode_field(i32 %41, i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 10))
  %44 = load i32, i32* @pc, align 4
  %45 = load i32, i32* @IB_PC_ERR_EXCESS_OVR_F, align 4
  %46 = call i32 @mad_encode_field(i32 %44, i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 11))
  %47 = load i32, i32* @pc, align 4
  %48 = load i32, i32* @IB_PC_VL15_DROPPED_F, align 4
  %49 = call i32 @mad_encode_field(i32 %47, i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 13))
  %50 = load i32, i32* @pc, align 4
  %51 = load i32, i32* @IB_PC_XMT_BYTES_F, align 4
  %52 = call i32 @mad_encode_field(i32 %50, i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 14))
  %53 = load i32, i32* @pc, align 4
  %54 = load i32, i32* @IB_PC_RCV_BYTES_F, align 4
  %55 = call i32 @mad_encode_field(i32 %53, i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 15))
  %56 = load i32, i32* @pc, align 4
  %57 = load i32, i32* @IB_PC_XMT_PKTS_F, align 4
  %58 = call i32 @mad_encode_field(i32 %56, i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 16))
  %59 = load i32, i32* @pc, align 4
  %60 = load i32, i32* @IB_PC_RCV_PKTS_F, align 4
  %61 = call i32 @mad_encode_field(i32 %59, i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 17))
  %62 = load i32, i32* @pc, align 4
  %63 = load i32, i32* @IB_PC_XMT_WAIT_F, align 4
  %64 = call i32 @mad_encode_field(i32 %62, i32 %63, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 18))
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %66 = load i32, i32* @pc, align 4
  %67 = call i32 @mad_dump_perfcounters(i8* %65, i32 1024, i32 %66, i32 4)
  %68 = load i32*, i32** %3, align 8
  %69 = call i8* @portid2str(i32* %68)
  %70 = load i32, i32* @ALL_PORTS, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ntohs(i32 %71)
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %74 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70, i32 %72, i8* %73)
  ret void
}

declare dso_local i32 @mad_encode_field(i32, i32, i32*) #1

declare dso_local i32 @mad_dump_perfcounters(i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i8*) #1

declare dso_local i8* @portid2str(i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
