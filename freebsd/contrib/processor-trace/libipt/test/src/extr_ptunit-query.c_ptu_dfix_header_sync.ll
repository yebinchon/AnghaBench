; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_ptu_dfix_header_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_ptu_dfix_header_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_query_decoder }
%struct.pt_query_decoder = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @ptu_dfix_header_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptu_dfix_header_sync(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %5 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %6 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %5, i32 0, i32 0
  store %struct.pt_query_decoder* %6, %struct.pt_query_decoder** %4, align 8
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %8 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %12 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @ptu_passed()
  %14 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
