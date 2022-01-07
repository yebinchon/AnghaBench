; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_fill_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_fill_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_mapped_section = type { i32 }
%struct.pt_msec_cache = type { i32 }
%struct.pt_image = type { i32 }
%struct.pt_asid = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fill_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_null() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_mapped_section*, align 8
  %3 = alloca %struct.pt_msec_cache, align 4
  %4 = alloca %struct.pt_image, align 4
  %5 = alloca %struct.pt_asid, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @memset(%struct.pt_msec_cache* %3, i32 0, i32 4)
  %8 = call i32 @pt_msec_cache_fill(%struct.pt_msec_cache* null, %struct.pt_mapped_section** %2, %struct.pt_image* %4, %struct.pt_asid* %5, i64 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @ptu_int_eq(i32 %9, i32 %11)
  %13 = call i32 @pt_msec_cache_fill(%struct.pt_msec_cache* %3, %struct.pt_mapped_section** null, %struct.pt_image* %4, %struct.pt_asid* %5, i64 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @ptu_int_eq(i32 %14, i32 %16)
  %18 = call i32 @pt_msec_cache_fill(%struct.pt_msec_cache* %3, %struct.pt_mapped_section** %2, %struct.pt_image* null, %struct.pt_asid* %5, i64 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @ptu_int_eq(i32 %19, i32 %21)
  %23 = call i32 @pt_msec_cache_fill(%struct.pt_msec_cache* %3, %struct.pt_mapped_section** %2, %struct.pt_image* %4, %struct.pt_asid* null, i64 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @pte_internal, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @ptu_int_eq(i32 %24, i32 %26)
  %28 = call i32 (...) @ptu_passed()
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @memset(%struct.pt_msec_cache*, i32, i32) #1

declare dso_local i32 @pt_msec_cache_fill(%struct.pt_msec_cache*, %struct.pt_mapped_section**, %struct.pt_image*, %struct.pt_asid*, i64) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
