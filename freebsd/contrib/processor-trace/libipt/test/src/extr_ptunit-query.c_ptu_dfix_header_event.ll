; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_ptu_dfix_header_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_ptu_dfix_header_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @ptu_dfix_header_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptu_dfix_header_event(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_encoder*, align 8
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %6 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %6, i32 0, i32 1
  store %struct.pt_query_decoder* %7, %struct.pt_query_decoder** %4, align 8
  %8 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %8, i32 0, i32 0
  store %struct.pt_encoder* %9, %struct.pt_encoder** %5, align 8
  %10 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %11 = call i32 @pt_encode_pad(%struct.pt_encoder* %10)
  %12 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %13 = call i32 @pt_encode_mtc(%struct.pt_encoder* %12, i32 1)
  %14 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %15 = call i32 @pt_encode_pad(%struct.pt_encoder* %14)
  %16 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %17 = call i32 @pt_encode_tsc(%struct.pt_encoder* %16, i32 4096)
  %18 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %19 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %23 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = call i32 (...) @ptu_passed()
  %25 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local i32 @pt_encode_pad(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_mtc(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_tsc(%struct.pt_encoder*, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
