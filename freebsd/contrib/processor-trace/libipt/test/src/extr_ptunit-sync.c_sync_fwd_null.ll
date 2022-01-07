; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_sync_fwd_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_sync_fwd_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_fixture = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ptunit_result = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sync_fixture*)* @sync_fwd_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_fwd_null(%struct.sync_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.sync_fixture*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.sync_fixture* %0, %struct.sync_fixture** %3, align 8
  %6 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %10, i32 0, i32 0
  %12 = call i32 @pt_sync_forward(i32** null, i32* %9, %struct.TYPE_2__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @ptu_int_eq(i32 %13, i32 %15)
  %17 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %18 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %17, i32 0, i32 0
  %19 = call i32 @pt_sync_forward(i32** %4, i32* null, %struct.TYPE_2__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @pte_internal, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @ptu_int_eq(i32 %20, i32 %22)
  %24 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @pt_sync_forward(i32** %4, i32* %27, %struct.TYPE_2__* null)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @pte_internal, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @ptu_int_eq(i32 %29, i32 %31)
  %33 = call i32 (...) @ptu_passed()
  %34 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local i32 @pt_sync_forward(i32**, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
