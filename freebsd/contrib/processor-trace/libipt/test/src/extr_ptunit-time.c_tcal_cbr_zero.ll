; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_tcal_cbr_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_tcal_cbr_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_fixture = type { i32, %struct.pt_config }
%struct.pt_config = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_cbr = type { i64 }

@pte_bad_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.time_fixture*)* @tcal_cbr_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcal_cbr_zero(%struct.time_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.time_fixture*, align 8
  %4 = alloca %struct.pt_packet_cbr, align 8
  %5 = alloca %struct.pt_config, align 4
  %6 = alloca i32, align 4
  store %struct.time_fixture* %0, %struct.time_fixture** %3, align 8
  %7 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %7, i32 0, i32 1
  %9 = bitcast %struct.pt_config* %5 to i8*
  %10 = bitcast %struct.pt_config* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %5, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.pt_packet_cbr, %struct.pt_packet_cbr* %4, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %13, i32 0, i32 0
  %15 = call i32 @pt_tcal_update_cbr(i32* %14, %struct.pt_packet_cbr* %4, %struct.pt_config* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @pte_bad_packet, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @ptu_int_eq(i32 %16, i32 %18)
  %20 = call i32 (...) @ptu_passed()
  %21 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_tcal_update_cbr(i32*, %struct.pt_packet_cbr*, %struct.pt_config*) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
