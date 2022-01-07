; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_sync_fwd_cutoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_sync_fwd_cutoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_fixture = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ptunit_result = type { i32 }

@ptps_psb = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sync_fixture*)* @sync_fwd_cutoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_fwd_cutoff(%struct.sync_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.sync_fixture*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.sync_fixture* %0, %struct.sync_fixture** %3, align 8
  %6 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sfix_encode_psb(i32 %9)
  %11 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ptps_psb, align 4
  %16 = sub nsw i32 %14, %15
  %17 = call i32 @sfix_encode_psb(i32 %16)
  %18 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %24 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %33 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %32, i32 0, i32 0
  %34 = call i32 @pt_sync_forward(i32** %4, i32 %31, %struct.TYPE_2__* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @pte_eos, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @ptu_int_eq(i32 %35, i32 %37)
  %39 = call i32 (...) @ptu_passed()
  %40 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  ret i32 %42
}

declare dso_local i32 @sfix_encode_psb(i32) #1

declare dso_local i32 @pt_sync_forward(i32**, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
