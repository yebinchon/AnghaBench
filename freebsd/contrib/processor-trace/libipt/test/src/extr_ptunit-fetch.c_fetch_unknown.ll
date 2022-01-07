; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_fetch_unknown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_fetch_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_fixture = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ptunit_result = type { i32 }
%struct.pt_decoder_function = type { i32 }

@pt_opc_bad = common dso_local global i32 0, align 4
@pt_decode_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_fixture*)* @fetch_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_unknown(%struct.fetch_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.fetch_fixture*, align 8
  %4 = alloca %struct.pt_decoder_function*, align 8
  %5 = alloca i32, align 4
  store %struct.fetch_fixture* %0, %struct.fetch_fixture** %3, align 8
  %6 = load i32, i32* @pt_opc_bad, align 4
  %7 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %6, i32* %11, align 4
  %12 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %17 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %16, i32 0, i32 0
  %18 = call i32 @pt_df_fetch(%struct.pt_decoder_function** %4, i32* %15, %struct.TYPE_2__* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %22 = call i32 @ptu_ptr_eq(%struct.pt_decoder_function* %21, i32* @pt_decode_unknown)
  %23 = call i32 (...) @ptu_passed()
  %24 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local i32 @pt_df_fetch(%struct.pt_decoder_function**, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(%struct.pt_decoder_function*, i32*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
