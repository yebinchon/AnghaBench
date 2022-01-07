; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_aggregate_perfcounters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_aggregate_perfcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@pc = common dso_local global i32 0, align 4
@IB_PC_PORT_SELECT_F = common dso_local global i32 0, align 4
@perf_count = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IB_PC_COUNTER_SELECT_F = common dso_local global i32 0, align 4
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
@IB_PC_QP1_DROP_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aggregate_perfcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggregate_perfcounters() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @pc, align 4
  %3 = load i32, i32* @IB_PC_PORT_SELECT_F, align 4
  %4 = call i32 @mad_decode_field(i32 %2, i32 %3, i8** %1)
  %5 = load i8*, i8** %1, align 8
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 19), align 8
  %6 = load i32, i32* @pc, align 4
  %7 = load i32, i32* @IB_PC_COUNTER_SELECT_F, align 4
  %8 = call i32 @mad_decode_field(i32 %6, i32 %7, i8** %1)
  %9 = load i8*, i8** %1, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 18), align 8
  %10 = load i32, i32* @pc, align 4
  %11 = load i32, i32* @IB_PC_ERR_SYM_F, align 4
  %12 = call i32 @mad_decode_field(i32 %10, i32 %11, i8** %1)
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @aggregate_16bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 17), i8* %13)
  %15 = load i32, i32* @pc, align 4
  %16 = load i32, i32* @IB_PC_LINK_RECOVERS_F, align 4
  %17 = call i32 @mad_decode_field(i32 %15, i32 %16, i8** %1)
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @aggregate_8bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 16), i8* %18)
  %20 = load i32, i32* @pc, align 4
  %21 = load i32, i32* @IB_PC_LINK_DOWNED_F, align 4
  %22 = call i32 @mad_decode_field(i32 %20, i32 %21, i8** %1)
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @aggregate_8bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 15), i8* %23)
  %25 = load i32, i32* @pc, align 4
  %26 = load i32, i32* @IB_PC_ERR_RCV_F, align 4
  %27 = call i32 @mad_decode_field(i32 %25, i32 %26, i8** %1)
  %28 = load i8*, i8** %1, align 8
  %29 = call i32 @aggregate_16bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 14), i8* %28)
  %30 = load i32, i32* @pc, align 4
  %31 = load i32, i32* @IB_PC_ERR_PHYSRCV_F, align 4
  %32 = call i32 @mad_decode_field(i32 %30, i32 %31, i8** %1)
  %33 = load i8*, i8** %1, align 8
  %34 = call i32 @aggregate_16bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 13), i8* %33)
  %35 = load i32, i32* @pc, align 4
  %36 = load i32, i32* @IB_PC_ERR_SWITCH_REL_F, align 4
  %37 = call i32 @mad_decode_field(i32 %35, i32 %36, i8** %1)
  %38 = load i8*, i8** %1, align 8
  %39 = call i32 @aggregate_16bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 12), i8* %38)
  %40 = load i32, i32* @pc, align 4
  %41 = load i32, i32* @IB_PC_XMT_DISCARDS_F, align 4
  %42 = call i32 @mad_decode_field(i32 %40, i32 %41, i8** %1)
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @aggregate_16bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 11), i8* %43)
  %45 = load i32, i32* @pc, align 4
  %46 = load i32, i32* @IB_PC_ERR_XMTCONSTR_F, align 4
  %47 = call i32 @mad_decode_field(i32 %45, i32 %46, i8** %1)
  %48 = load i8*, i8** %1, align 8
  %49 = call i32 @aggregate_8bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 10), i8* %48)
  %50 = load i32, i32* @pc, align 4
  %51 = load i32, i32* @IB_PC_ERR_RCVCONSTR_F, align 4
  %52 = call i32 @mad_decode_field(i32 %50, i32 %51, i8** %1)
  %53 = load i8*, i8** %1, align 8
  %54 = call i32 @aggregate_8bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 9), i8* %53)
  %55 = load i32, i32* @pc, align 4
  %56 = load i32, i32* @IB_PC_ERR_LOCALINTEG_F, align 4
  %57 = call i32 @mad_decode_field(i32 %55, i32 %56, i8** %1)
  %58 = load i8*, i8** %1, align 8
  %59 = call i32 @aggregate_4bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 8), i8* %58)
  %60 = load i32, i32* @pc, align 4
  %61 = load i32, i32* @IB_PC_ERR_EXCESS_OVR_F, align 4
  %62 = call i32 @mad_decode_field(i32 %60, i32 %61, i8** %1)
  %63 = load i8*, i8** %1, align 8
  %64 = call i32 @aggregate_4bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 7), i8* %63)
  %65 = load i32, i32* @pc, align 4
  %66 = load i32, i32* @IB_PC_VL15_DROPPED_F, align 4
  %67 = call i32 @mad_decode_field(i32 %65, i32 %66, i8** %1)
  %68 = load i8*, i8** %1, align 8
  %69 = call i32 @aggregate_16bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 5), i8* %68)
  %70 = load i32, i32* @pc, align 4
  %71 = load i32, i32* @IB_PC_XMT_BYTES_F, align 4
  %72 = call i32 @mad_decode_field(i32 %70, i32 %71, i8** %1)
  %73 = load i8*, i8** %1, align 8
  %74 = call i32 @aggregate_32bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 4), i8* %73)
  %75 = load i32, i32* @pc, align 4
  %76 = load i32, i32* @IB_PC_RCV_BYTES_F, align 4
  %77 = call i32 @mad_decode_field(i32 %75, i32 %76, i8** %1)
  %78 = load i8*, i8** %1, align 8
  %79 = call i32 @aggregate_32bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 3), i8* %78)
  %80 = load i32, i32* @pc, align 4
  %81 = load i32, i32* @IB_PC_XMT_PKTS_F, align 4
  %82 = call i32 @mad_decode_field(i32 %80, i32 %81, i8** %1)
  %83 = load i8*, i8** %1, align 8
  %84 = call i32 @aggregate_32bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 2), i8* %83)
  %85 = load i32, i32* @pc, align 4
  %86 = load i32, i32* @IB_PC_RCV_PKTS_F, align 4
  %87 = call i32 @mad_decode_field(i32 %85, i32 %86, i8** %1)
  %88 = load i8*, i8** %1, align 8
  %89 = call i32 @aggregate_32bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 1), i8* %88)
  %90 = load i32, i32* @pc, align 4
  %91 = load i32, i32* @IB_PC_XMT_WAIT_F, align 4
  %92 = call i32 @mad_decode_field(i32 %90, i32 %91, i8** %1)
  %93 = load i8*, i8** %1, align 8
  %94 = call i32 @aggregate_32bit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_count, i32 0, i32 0), i8* %93)
  ret void
}

declare dso_local i32 @mad_decode_field(i32, i32, i8**) #1

declare dso_local i32 @aggregate_16bit(i32*, i8*) #1

declare dso_local i32 @aggregate_8bit(i32*, i8*) #1

declare dso_local i32 @aggregate_4bit(i32*, i8*) #1

declare dso_local i32 @aggregate_32bit(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
