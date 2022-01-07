; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-tnt_cache.c_update_tnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-tnt_cache.c_update_tnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_tnt_cache = type { i32, i32 }
%struct.pt_packet_tnt = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @update_tnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tnt() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_tnt_cache, align 4
  %3 = alloca %struct.pt_packet_tnt, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @pt_tnt_cache_init(%struct.pt_tnt_cache* %2)
  %6 = getelementptr inbounds %struct.pt_packet_tnt, %struct.pt_packet_tnt* %3, i32 0, i32 0
  store i64 4, i64* %6, align 8
  %7 = getelementptr inbounds %struct.pt_packet_tnt, %struct.pt_packet_tnt* %3, i32 0, i32 1
  store i64 8, i64* %7, align 8
  %8 = call i32 @pt_tnt_cache_update_tnt(%struct.pt_tnt_cache* %2, %struct.pt_packet_tnt* %3, i32* null)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ptu_int_eq(i32 %9, i32 0)
  %11 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ptu_uint_eq(i32 %12, i64 8)
  %14 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ptu_uint_eq(i32 %15, i64 8)
  %17 = call i32 (...) @ptu_passed()
  %18 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  ret i32 %20
}

declare dso_local i32 @pt_tnt_cache_init(%struct.pt_tnt_cache*) #1

declare dso_local i32 @pt_tnt_cache_update_tnt(%struct.pt_tnt_cache*, %struct.pt_packet_tnt*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i64) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
