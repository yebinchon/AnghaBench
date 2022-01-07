; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_sync_bwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_sync_bwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_fixture = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sync_fixture*)* @sync_bwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_bwd(%struct.sync_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.sync_fixture*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.sync_fixture* %0, %struct.sync_fixture** %3, align 8
  %6 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 35
  %11 = call i32 @sfix_encode_psb(i64 %10)
  %12 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %17 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %16, i32 0, i32 0
  %18 = call i32 @pt_sync_backward(i32** %4, i32 %15, %struct.TYPE_2__* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.sync_fixture*, %struct.sync_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 35
  %27 = call i32 @ptu_ptr_eq(i32* %21, i64 %26)
  %28 = call i32 (...) @ptu_passed()
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @sfix_encode_psb(i64) #1

declare dso_local i32 @pt_sync_backward(i32**, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(i32*, i64) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
