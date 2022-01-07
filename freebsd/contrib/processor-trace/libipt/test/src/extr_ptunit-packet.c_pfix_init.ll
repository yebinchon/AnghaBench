; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_pfix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_pfix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fixture = type { i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.packet_fixture*, i32 }
%struct.ptunit_result = type { i32 }

@pfix_decode_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_fixture*)* @pfix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfix_init(%struct.packet_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.packet_fixture*, align 8
  %4 = alloca i32, align 4
  store %struct.packet_fixture* %0, %struct.packet_fixture** %3, align 8
  %5 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %6 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %5, i32 0, i32 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 8)
  %9 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %9, i32 0, i32 5
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 8)
  %13 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %13, i32 0, i32 2
  %15 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 40)
  %16 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %17 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 40, i32* %18, align 8
  %19 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %26 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 8
  %29 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %31, align 8
  %32 = load i32, i32* @pfix_decode_unknown, align 4
  %33 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %34 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 8
  %37 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %38 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %39 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store %struct.packet_fixture* %37, %struct.packet_fixture** %41, align 8
  %42 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %43 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %42, i32 0, i32 3
  %44 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %44, i32 0, i32 2
  %46 = call i32 @pt_encoder_init(i32* %43, %struct.TYPE_6__* %45)
  %47 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %48 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %47, i32 0, i32 1
  %49 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %50 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %49, i32 0, i32 2
  %51 = call i32 @pt_pkt_decoder_init(i32* %48, %struct.TYPE_6__* %50)
  %52 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %53 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %52, i32 0, i32 1
  %54 = call i32 @pt_pkt_sync_set(i32* %53, i32 0)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ptu_int_eq(i32 %55, i32 0)
  %57 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %58 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = call i32 (...) @ptu_passed()
  %60 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pt_encoder_init(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @pt_pkt_decoder_init(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @pt_pkt_sync_set(i32*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
