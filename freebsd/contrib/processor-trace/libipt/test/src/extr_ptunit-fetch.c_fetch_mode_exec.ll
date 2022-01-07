; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_fetch_mode_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-fetch.c_fetch_mode_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_fixture = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ppt_mode = common dso_local global i32 0, align 4
@pt_mol_exec = common dso_local global i32 0, align 4
@fetch_packet = common dso_local global i32 0, align 4
@pt_decode_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_fixture*)* @fetch_mode_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_mode_exec(%struct.fetch_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.fetch_fixture*, align 8
  %4 = alloca %struct.pt_packet, align 4
  store %struct.fetch_fixture* %0, %struct.fetch_fixture** %3, align 8
  %5 = call i32 @memset(%struct.pt_packet* %4, i32 0, i32 8)
  %6 = load i32, i32* @ppt_mode, align 4
  %7 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %4, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @pt_mol_exec, align 4
  %9 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %4, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @fetch_packet, align 4
  %13 = load %struct.fetch_fixture*, %struct.fetch_fixture** %3, align 8
  %14 = call i32 @ptu_test(i32 %12, %struct.fetch_fixture* %13, %struct.pt_packet* %4, i32* @pt_decode_mode)
  %15 = call i32 (...) @ptu_passed()
  %16 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  ret i32 %18
}

declare dso_local i32 @memset(%struct.pt_packet*, i32, i32) #1

declare dso_local i32 @ptu_test(i32, %struct.fetch_fixture*, %struct.pt_packet*, i32*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
