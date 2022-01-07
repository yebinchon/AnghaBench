; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_tsx_fup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_tsx_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_6__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_6__ = type { i32 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }
%struct.pt_event = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@pt_dfix_max_ip = common dso_local global i32 0, align 4
@pt_ipc_sext_48 = common dso_local global i32 0, align 4
@pt_dfix_sext_ip = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pt_ipc_suppressed = common dso_local global i32 0, align 4
@ptev_tsx = common dso_local global i32 0, align 4
@pt_mob_tsx_intx = common dso_local global i32 0, align 4
@pt_mob_tsx_abrt = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i32, i32)* @event_tsx_fup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_tsx_fup(%struct.ptu_decoder_fixture* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ptunit_result, align 4
  %6 = alloca %struct.ptu_decoder_fixture*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_query_decoder*, align 8
  %11 = alloca %struct.pt_encoder*, align 8
  %12 = alloca %struct.pt_packet_ip, align 4
  %13 = alloca %struct.pt_packet_ip, align 4
  %14 = alloca %struct.pt_event, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %6, align 8
  %18 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %17, i32 0, i32 3
  store %struct.pt_query_decoder* %18, %struct.pt_query_decoder** %10, align 8
  %19 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %6, align 8
  %20 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %19, i32 0, i32 2
  store %struct.pt_encoder* %20, %struct.pt_encoder** %11, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %12, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @pt_dfix_max_ip, align 4
  %24 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %12, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %6, align 8
  %26 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %25, i32 0, i32 0
  %27 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %6, align 8
  %28 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %27, i32 0, i32 1
  %29 = call i32 @pt_last_ip_update_ip(%struct.TYPE_6__* %26, %struct.pt_packet_ip* %12, i32* %28)
  %30 = load i32, i32* @pt_ipc_sext_48, align 4
  %31 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %13, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @pt_dfix_sext_ip, align 4
  %33 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %13, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.pt_encoder*, %struct.pt_encoder** %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @pt_encode_mode_tsx(%struct.pt_encoder* %34, i32 %35)
  %37 = load %struct.pt_encoder*, %struct.pt_encoder** %11, align 8
  %38 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %12, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pt_encode_fup(%struct.pt_encoder* %37, i32 %39, i32 %41)
  %43 = load %struct.pt_encoder*, %struct.pt_encoder** %11, align 8
  %44 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %13, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pt_encode_tip(%struct.pt_encoder* %43, i32 %45, i32 %47)
  %49 = load i32, i32* @ptu_sync_decoder, align 4
  %50 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %10, align 8
  %51 = call i32 @ptu_check(i32 %49, %struct.pt_query_decoder* %50)
  %52 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %10, align 8
  %53 = call i32 @pt_qry_event(%struct.pt_query_decoder* %52, %struct.pt_event* %14, i32 28)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @ptu_int_eq(i32 %54, i32 0)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @pt_ipc_suppressed, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %4
  %60 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ptu_uint_ne(i32 %61, i32 0)
  br label %76

63:                                               ; preds = %4
  %64 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ptu_uint_eq(i32 %65, i32 0)
  %67 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %6, align 8
  %72 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ptu_uint_eq(i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %63, %59
  %77 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ptev_tsx, align 4
  %80 = call i32 @ptu_int_eq(i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @pt_mob_tsx_intx, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ptu_int_eq(i32 %84, i32 %89)
  %91 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @pt_mob_tsx_abrt, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ptu_int_eq(i32 %94, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %76
  %104 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ptu_int_eq(i32 %105, i32 0)
  br label %115

107:                                              ; preds = %76
  %108 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ptu_int_eq(i32 %109, i32 1)
  %111 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ptu_uint_eq(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %107, %103
  %116 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %10, align 8
  %117 = call i32 @pt_qry_indirect_branch(%struct.pt_query_decoder* %116, i32* %15)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @pts_eos, align 4
  %120 = call i32 @ptu_int_eq(i32 %118, i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %13, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ptu_uint_eq(i32 %121, i32 %123)
  %125 = call i32 (...) @ptu_passed()
  %126 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %5, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %5, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  ret i32 %128
}

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_6__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_mode_tsx(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_fup(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_tip(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_ne(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @pt_qry_indirect_branch(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
