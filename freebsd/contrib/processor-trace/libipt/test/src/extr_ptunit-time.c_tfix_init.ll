; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_tfix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-time.c_tfix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_fixture = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ptunit_result = type { i32 }

@pt_tcal_fcr_shr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.time_fixture*)* @tfix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfix_init(%struct.time_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.time_fixture*, align 8
  store %struct.time_fixture* %0, %struct.time_fixture** %3, align 8
  %4 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %5 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %4, i32 0, i32 2
  %6 = call i32 @memset(%struct.TYPE_2__* %5, i32 0, i32 16)
  %7 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 16, i32* %9, align 4
  %10 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 2, i32* %12, align 4
  %13 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 1, i32* %15, align 4
  %16 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %17 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 4, i32* %18, align 4
  %19 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %20 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %19, i32 0, i32 1
  %21 = call i32 @pt_tcal_init(i32* %20)
  %22 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %22, i32 0, i32 1
  %24 = load i32, i32* @pt_tcal_fcr_shr, align 4
  %25 = zext i32 %24 to i64
  %26 = shl i64 2, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @pt_tcal_set_fcr(i32* %23, i32 %27)
  %29 = load %struct.time_fixture*, %struct.time_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.time_fixture, %struct.time_fixture* %29, i32 0, i32 0
  %31 = call i32 @pt_time_init(i32* %30)
  %32 = call i32 (...) @ptu_passed()
  %33 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @pt_tcal_init(i32*) #1

declare dso_local i32 @pt_tcal_set_fcr(i32*, i32) #1

declare dso_local i32 @pt_time_init(i32*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
