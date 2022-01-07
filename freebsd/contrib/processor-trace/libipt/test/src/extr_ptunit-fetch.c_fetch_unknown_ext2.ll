; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_fetch_unknown_ext2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_fetch_unknown_ext2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_fixture = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ptunit_result = type { i32 }
%struct.pt_decoder_function = type { i32 }

@pt_opc_ext = common dso_local global i32 0, align 4
@pt_ext_ext2 = common dso_local global i32 0, align 4
@pt_ext2_bad = common dso_local global i32 0, align 4
@pt_decode_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_fixture*)* @fetch_unknown_ext2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_unknown_ext2(%struct.fetch_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.fetch_fixture*, align 8
  %4 = alloca %struct.pt_decoder_function*, align 8
  %5 = alloca i32, align 4
  store %struct.fetch_fixture* %0, %struct.fetch_fixture** %3, align 8
  %6 = load i32, i32* @pt_opc_ext, align 4
  %7 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %6, i32* %11, align 4
  %12 = load i32, i32* @pt_ext_ext2, align 4
  %13 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %12, i32* %17, align 4
  %18 = load i32, i32* @pt_ext2_bad, align 4
  %19 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %18, i32* %23, align 4
  %24 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %28, i32 0, i32 0
  %30 = call i32 @pt_df_fetch(%struct.pt_decoder_function** %4, i32* %27, %struct.TYPE_2__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ptu_int_eq(i32 %31, i32 0)
  %33 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %34 = call i32 @ptu_ptr_eq(%struct.pt_decoder_function* %33, i32* @pt_decode_unknown)
  %35 = call i32 (...) @ptu_passed()
  %36 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  ret i32 %38
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
