; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_stress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_stress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type opaque
%struct.ptunit_result = type { i32 }

@num_threads = common dso_local global i32 0, align 4
@ptunit_thrd_create = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*, i32 (i8*)*)* @stress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stress(%struct.iscache_fixture* %0, i32 (i8*)* %1) #0 {
  %3 = alloca %struct.ptunit_result, align 4
  %4 = alloca %struct.iscache_fixture*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %4, align 8
  store i32 (i8*)* %1, i32 (i8*)** %5, align 8
  %7 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %8 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %9 = bitcast %struct.iscache_fixture* %8 to i8*
  %10 = call i32 %7(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ptu_int_eq(i32 %11, i32 0)
  %13 = call i32 (...) @ptu_passed()
  %14 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
