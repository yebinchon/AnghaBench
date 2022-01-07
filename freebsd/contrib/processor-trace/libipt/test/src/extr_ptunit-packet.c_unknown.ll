; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_unknown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_fixture = type { i32, %struct.TYPE_6__*, %struct.packet_fixture*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@pt_opc_bad = common dso_local global %struct.packet_fixture zeroinitializer, align 8
@ppt_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_fixture*, i32)* @unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unknown(%struct.packet_fixture* %0, i32 %1) #0 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.packet_fixture* @pt_opc_bad to i8*), i64 32, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %14 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %16 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %15, i32 0, i32 3
  %17 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %18 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 1
  %21 = call i32 @pt_pkt_next(i32* %16, %struct.TYPE_6__* %20, i32 16)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %24 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ptu_int_eq(i32 %22, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %2
  %30 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %31 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ppt_unknown, align 4
  %37 = call i32 @ptu_int_eq(i32 %35, i32 %36)
  %38 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %39 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ptu_uint_eq(i32 %43, i32 %44)
  %46 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %47 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %55 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %54, i32 0, i32 2
  %56 = load %struct.packet_fixture*, %struct.packet_fixture** %55, align 8
  %57 = call i32 @ptu_ptr_eq(i32 %53, %struct.packet_fixture* %56)
  %58 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %59 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.packet_fixture*, %struct.packet_fixture** %4, align 8
  %67 = call i32 @ptu_ptr_eq(i32 %65, %struct.packet_fixture* %66)
  br label %68

68:                                               ; preds = %29, %2
  %69 = call i32 (...) @ptu_passed()
  %70 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  ret i32 %72
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
