; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_ffix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_ffix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_fixture = type { %struct.TYPE_3__, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.ptunit_result = type { i32 }

@pt_opc_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_fixture*)* @ffix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffix_init(%struct.fetch_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.fetch_fixture*, align 8
  store %struct.fetch_fixture* %0, %struct.fetch_fixture** %3, align 8
  %4 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %5 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* @pt_opc_bad, align 4
  %8 = call i32 @memset(%struct.TYPE_3__* %6, i32 %7, i32 8)
  %9 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %9, i32 0, i32 0
  %11 = call i32 @memset(%struct.TYPE_3__* %10, i32 0, i32 24)
  %12 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 24, i32* %14, align 8
  %15 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %16 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %19 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 8
  %25 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %26 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %28, i32 0, i32 1
  %30 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.fetch_fixture, %struct.fetch_fixture* %30, i32 0, i32 0
  %32 = call i32 @pt_encoder_init(i32* %29, %struct.TYPE_3__* %31)
  %33 = call i32 (...) @ptu_passed()
  %34 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @pt_encoder_init(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
