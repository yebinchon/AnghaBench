; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_overflow_fup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_overflow_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_7__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_7__ = type { i32 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }

@ptu_sync_decoder = common dso_local global i32 0, align 4
@pte_noip = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i32)* @event_overflow_fup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_overflow_fup(%struct.ptu_decoder_fixture* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.ptu_decoder_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_query_decoder*, align 8
  %9 = alloca %struct.pt_encoder*, align 8
  %10 = alloca %struct.pt_event, align 4
  %11 = alloca %struct.pt_packet_ip, align 4
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
  %18 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  store i32 204, i32* %19, align 4
  %20 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %21 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %20, i32 0, i32 0
  %22 = call i32 @pt_last_ip_init(%struct.TYPE_7__* %21)
  %23 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %24 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %23, i32 0, i32 0
  %25 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %26 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %25, i32 0, i32 1
  %27 = call i32 @pt_last_ip_update_ip(%struct.TYPE_7__* %24, %struct.pt_packet_ip* %11, i32* %26)
  %28 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %29 = call i32 @pt_encode_ovf(%struct.pt_encoder* %28)
  %30 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %31 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pt_encode_fup(%struct.pt_encoder* %30, i32 %32, i32 %34)
  %36 = load i32, i32* @ptu_sync_decoder, align 4
  %37 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %38 = call i32 @ptu_check(i32 %36, %struct.pt_query_decoder* %37)
  %39 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %40 = call i32 @pt_qry_event(%struct.pt_query_decoder* %39, %struct.pt_event* %10, i32 16)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %79 [
    i32 131, label %42
    i32 130, label %47
    i32 129, label %47
    i32 128, label %47
    i32 132, label %47
    i32 133, label %47
  ]

42:                                               ; preds = %3
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @pte_noip, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @ptu_int_eq(i32 %43, i32 %45)
  br label %79

47:                                               ; preds = %3, %3, %3, %3, %3
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @pts_eos, align 4
  %50 = call i32 @ptu_int_eq(i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ptev_overflow, align 4
  %54 = call i32 @ptu_int_eq(i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %60 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ptu_uint_eq(i32 %58, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ptu_int_eq(i32 %68, i32 0)
  br label %78

70:                                               ; preds = %47
  %71 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ptu_int_eq(i32 %72, i32 1)
  %74 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @ptu_uint_eq(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %66
  br label %79

79:                                               ; preds = %3, %78, %42
  %80 = call i32 (...) @ptu_passed()
  %81 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  ret i32 %83
}

declare dso_local i32 @pt_last_ip_init(%struct.TYPE_7__*) #1

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_7__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_ovf(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_fup(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
