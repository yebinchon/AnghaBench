; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_cutoff_cyc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_cutoff_cyc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fixture = type { %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.ptunit_result = type { i32 }

@ppt_cyc = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_fixture*)* @cutoff_cyc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cutoff_cyc(%struct.packet_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.packet_fixture*, align 8
  %4 = alloca i32, align 4
  store %struct.packet_fixture* %0, %struct.packet_fixture** %3, align 8
  %5 = load i32, i32* @ppt_cyc, align 4
  %6 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %6, i32 0, i32 0
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i32 %5, i32* %10, align 4
  %11 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 168, i32* %17, align 4
  %18 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %18, i32 0, i32 2
  %20 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 0
  %24 = call i32 @pt_enc_next(%struct.TYPE_13__* %19, %struct.TYPE_12__* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ptu_int_gt(i32 %25, i32 0)
  %27 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %28 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %33 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %36, i32 0, i32 1
  %38 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %39 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 1
  %42 = call i32 @pt_pkt_next(%struct.TYPE_11__* %37, %struct.TYPE_12__* %41, i32 8)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @pte_eos, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @ptu_int_eq(i32 %43, i32 %45)
  %47 = call i32 (...) @ptu_passed()
  %48 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  ret i32 %50
}

declare dso_local i32 @pt_enc_next(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_pkt_next(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
