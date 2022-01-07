; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_mode_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_mode_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fixture = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_mode_exec = type { i32, i32 }

@ppt_mode = common dso_local global i32 0, align 4
@pt_mol_exec = common dso_local global i32 0, align 4
@pfix_test = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_fixture*, i32)* @mode_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_exec(%struct.packet_fixture* %0, i32 %1) #0 {
  %3 = alloca %struct.ptunit_result, align 4
  %4 = alloca %struct.packet_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_packet_mode_exec, align 4
  %7 = alloca %struct.pt_packet_mode_exec, align 4
  store %struct.packet_fixture* %0, %struct.packet_fixture** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @pt_set_exec_mode(i32 %8)
  %10 = bitcast %struct.pt_packet_mode_exec* %7 to i64*
  store i64 %9, i64* %10, align 4
  %11 = bitcast %struct.pt_packet_mode_exec* %6 to i8*
  %12 = bitcast %struct.pt_packet_mode_exec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 8, i1 false)
  %13 = load i32, i32* @ppt_mode, align 4
  %14 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %15 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* @pt_mol_exec, align 4
  %20 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %21 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 %19, i32* %26, align 4
  %27 = getelementptr inbounds %struct.pt_packet_mode_exec, %struct.pt_packet_mode_exec* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %30 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %28, i32* %37, align 4
  %38 = getelementptr inbounds %struct.pt_packet_mode_exec, %struct.pt_packet_mode_exec* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %41 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %39, i32* %48, align 4
  %49 = load i32, i32* @pfix_test, align 4
  %50 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %51 = call i32 @ptu_test(i32 %49, %struct.packet_fixture* %50)
  %52 = call i32 (...) @ptu_passed()
  %53 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  ret i32 %55
}

declare dso_local i64 @pt_set_exec_mode(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ptu_test(i32, %struct.packet_fixture*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
