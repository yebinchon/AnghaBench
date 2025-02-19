; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_sync_bwd_here.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_sync_bwd_here.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_fixture = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ptunit_result = type { i32 }

@ptps_psb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sync_fixture*)* @sync_bwd_here to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_bwd_here(%struct.sync_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.sync_fixture*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.sync_fixture* %0, %struct.sync_fixture** %3, align 8
  %6 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ptps_psb, align 8
  %11 = sub nsw i64 %9, %10
  %12 = call i32 @sfix_encode_psb(i64 %11)
  %13 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %17, i32 0, i32 0
  %19 = call i32 @pt_sync_backward(i32** %4, i64 %16, %struct.TYPE_2__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ptu_int_eq(i32 %20, i32 0)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ptps_psb, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call i32 @ptu_ptr_eq(i32* %22, i64 %28)
  %30 = call i32 (...) @ptu_passed()
  %31 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local i32 @sfix_encode_psb(i64) #1

declare dso_local i32 @pt_sync_backward(i32**, i64, %struct.TYPE_2__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(i32*, i64) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
