; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-block_decoder.c_tfix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-block_decoder.c_tfix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_fixture = type { i32, i32*, %struct.pt_config }
%struct.pt_config = type { i32*, i32* }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_fixture*)* @tfix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfix_init(%struct.test_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.test_fixture*, align 8
  %4 = alloca %struct.pt_config*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.test_fixture* %0, %struct.test_fixture** %3, align 8
  %7 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %7, i32 0, i32 2
  store %struct.pt_config* %8, %struct.pt_config** %4, align 8
  %9 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @memset(i32* %12, i32 0, i32 8)
  %14 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %15 = call i32 @pt_config_init(%struct.pt_config* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %18 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 8
  %21 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %22 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.test_fixture*, %struct.test_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %23, i32 0, i32 0
  %25 = load %struct.pt_config*, %struct.pt_config** %4, align 8
  %26 = call i32 @pt_blk_decoder_init(i32* %24, %struct.pt_config* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ptu_int_eq(i32 %27, i32 0)
  %29 = call i32 (...) @ptu_passed()
  %30 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  ret i32 %32
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pt_config_init(%struct.pt_config*) #1

declare dso_local i32 @pt_blk_decoder_init(i32*, %struct.pt_config*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
