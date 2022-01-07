; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_pfix_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_pfix_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fixture = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_fixture*)* @pfix_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfix_test(%struct.packet_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.packet_fixture*, align 8
  %4 = alloca i32, align 4
  store %struct.packet_fixture* %0, %struct.packet_fixture** %3, align 8
  %5 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %6 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %5, i32 0, i32 2
  %7 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 0
  %11 = call i32 @pt_enc_next(i32* %6, %struct.TYPE_5__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ptu_int_gt(i32 %12, i32 0)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 4
  %20 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %21 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %20, i32 0, i32 1
  %22 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 1
  %26 = call i32 @pt_pkt_next(i32* %21, %struct.TYPE_5__* %25, i32 4)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ptu_int_gt(i32 %27, i32 0)
  %29 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = load %struct.packet_fixture*, %struct.packet_fixture** %3, align 8
  %34 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 1
  %37 = call i32 @ptu_pkt_eq(%struct.TYPE_5__* %32, %struct.TYPE_5__* %36)
  %38 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local i32 @pt_enc_next(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_pkt_next(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ptu_pkt_eq(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
