; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_fetch_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_fetch_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_fixture = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pt_packet = type { i32 }
%struct.pt_decoder_function = type { i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_fixture*, %struct.pt_packet*, %struct.pt_decoder_function*)* @fetch_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_packet(%struct.fetch_fixture* %0, %struct.pt_packet* %1, %struct.pt_decoder_function* %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.fetch_fixture*, align 8
  %6 = alloca %struct.pt_packet*, align 8
  %7 = alloca %struct.pt_decoder_function*, align 8
  %8 = alloca %struct.pt_decoder_function*, align 8
  %9 = alloca i32, align 4
  store %struct.fetch_fixture* %0, %struct.fetch_fixture** %5, align 8
  store %struct.pt_packet* %1, %struct.pt_packet** %6, align 8
  store %struct.pt_decoder_function* %2, %struct.pt_decoder_function** %7, align 8
  %10 = load %struct.fetch_fixture*, %struct.fetch_fixture** %5, align 8
  %11 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %10, i32 0, i32 1
  %12 = load %struct.pt_packet*, %struct.pt_packet** %6, align 8
  %13 = call i32 @pt_enc_next(i32* %11, %struct.pt_packet* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @ptu_int_ge(i32 %14, i32 0)
  %16 = load %struct.fetch_fixture*, %struct.fetch_fixture** %5, align 8
  %17 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fetch_fixture*, %struct.fetch_fixture** %5, align 8
  %21 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %20, i32 0, i32 0
  %22 = call i32 @pt_df_fetch(%struct.pt_decoder_function** %8, i32 %19, %struct.TYPE_2__* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ptu_int_eq(i32 %23, i32 0)
  %25 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %26 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %7, align 8
  %27 = call i32 @ptu_ptr_eq(%struct.pt_decoder_function* %25, %struct.pt_decoder_function* %26)
  %28 = call i32 (...) @ptu_passed()
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @pt_enc_next(i32*, %struct.pt_packet*) #1

declare dso_local i32 @ptu_int_ge(i32, i32) #1

declare dso_local i32 @pt_df_fetch(%struct.pt_decoder_function**, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(%struct.pt_decoder_function*, %struct.pt_decoder_function*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
