; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_tma_bad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_tma_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fixture = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@ppt_tma = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_fixture*)* @tma_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tma_bad(%struct.packet_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.packet_fixture*, align 8
  %4 = alloca i32, align 4
  store %struct.packet_fixture* %0, %struct.packet_fixture** %3, align 8
  %5 = load i32, i32* @ppt_tma, align 4
  %6 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %5, i32* %10, align 4
  %11 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 66, i32* %17, align 4
  %18 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 512, i32* %24, align 4
  %25 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %26 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %25, i32 0, i32 1
  %27 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = call i32 @pt_enc_next(i32* %26, %struct.TYPE_6__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @pte_bad_packet, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @ptu_int_eq(i32 %32, i32 %34)
  %36 = call i32 (...) @ptu_passed()
  %37 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local i32 @pt_enc_next(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
