; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_unknown_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_unknown_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fixture = type { i32, %struct.TYPE_6__*, %struct.packet_fixture*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@pt_opc_ext = common dso_local global %struct.packet_fixture zeroinitializer, align 8
@pt_ext_bad = common dso_local global %struct.packet_fixture zeroinitializer, align 8
@ppt_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_fixture*, i32)* @unknown_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unknown_ext(%struct.packet_fixture* %0, i32 %1) #0 {
  %3 = alloca %struct.ptunit_result, align 4
  %4 = alloca %struct.packet_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.packet_fixture* %0, %struct.packet_fixture** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %8 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %7, i32 0, i32 2
  %9 = load %struct.packet_fixture*, %struct.packet_fixture** %8, align 8
  %10 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %9, i64 0
  %11 = bitcast %struct.packet_fixture* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.packet_fixture* @pt_opc_ext to i8*), i64 32, i1 false)
  %12 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %13 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %12, i32 0, i32 2
  %14 = load %struct.packet_fixture*, %struct.packet_fixture** %13, align 8
  %15 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %14, i64 1
  %16 = bitcast %struct.packet_fixture* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.packet_fixture* @pt_ext_bad to i8*), i64 32, i1 false)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %19 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %21 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %20, i32 0, i32 3
  %22 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %23 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 1
  %26 = call i32 @pt_pkt_next(i32* %21, %struct.TYPE_6__* %25, i32 16)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %29 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ptu_int_eq(i32 %27, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %73

34:                                               ; preds = %2
  %35 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %36 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ppt_unknown, align 4
  %42 = call i32 @ptu_int_eq(i32 %40, i32 %41)
  %43 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %44 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ptu_uint_eq(i32 %48, i32 %49)
  %51 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %52 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %60 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %59, i32 0, i32 2
  %61 = load %struct.packet_fixture*, %struct.packet_fixture** %60, align 8
  %62 = call i32 @ptu_ptr_eq(i32 %58, %struct.packet_fixture* %61)
  %63 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %64 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %72 = call i32 @ptu_ptr_eq(i32 %70, %struct.packet_fixture* %71)
  br label %73

73:                                               ; preds = %34, %2
  %74 = call i32 (...) @ptu_passed()
  %75 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_pkt_next(i32*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_uint_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr_eq(i32, %struct.packet_fixture*) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
