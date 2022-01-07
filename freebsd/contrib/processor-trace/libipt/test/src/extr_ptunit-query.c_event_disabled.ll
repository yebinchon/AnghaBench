; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_disabled.c"
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
%struct.TYPE_4__ = type { i32 }

@pt_dfix_sext_ip = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@pt_ipc_suppressed = common dso_local global i32 0, align 4
@ptev_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i32)* @event_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_disabled(%struct.ptu_decoder_fixture* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.ptu_decoder_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_query_decoder*, align 8
  %9 = alloca %struct.pt_encoder*, align 8
  %10 = alloca %struct.pt_packet_ip, align 4
  %11 = alloca %struct.pt_event, align 4
  %12 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %14 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %13, i32 0, i32 3
  store %struct.pt_query_decoder* %14, %struct.pt_query_decoder** %8, align 8
  %15 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %16 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %15, i32 0, i32 2
  store %struct.pt_encoder* %16, %struct.pt_encoder** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @pt_dfix_sext_ip, align 4
  %20 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %22 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %21, i32 0, i32 0
  %23 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %24 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %23, i32 0, i32 1
  %25 = call i32 @pt_last_ip_update_ip(%struct.TYPE_6__* %22, %struct.pt_packet_ip* %10, i32* %24)
  %26 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %27 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pt_encode_tip_pgd(%struct.pt_encoder* %26, i32 %28, i32 %30)
  %32 = load i32, i32* @ptu_sync_decoder, align 4
  %33 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %34 = call i32 @ptu_check(i32 %32, %struct.pt_query_decoder* %33)
  %35 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %36 = call i32 @pt_qry_event(%struct.pt_query_decoder* %35, %struct.pt_event* %11, i32 20)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @pts_eos, align 4
  %39 = call i32 @ptu_int_eq(i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @pt_ipc_suppressed, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %11, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ptu_uint_ne(i32 %45, i32 0)
  br label %60

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %11, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ptu_uint_eq(i32 %49, i32 0)
  %51 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %11, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %56 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ptu_uint_eq(i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %47, %43
  %61 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ptev_disabled, align 4
  %64 = call i32 @ptu_int_eq(i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ptu_int_eq(i32 %69, i32 0)
  br label %79

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %11, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ptu_int_eq(i32 %73, i32 1)
  %75 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %11, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ptu_uint_eq(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %71, %67
  %80 = call i32 (...) @ptu_passed()
  %81 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  ret i32 %83
}

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_6__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_tip_pgd(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_ne(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
