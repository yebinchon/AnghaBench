; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_set_top_of_stack_td.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_set_top_of_stack_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@XSAVE_AREA_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_top_of_stack_td(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %3 = load %struct.thread*, %struct.thread** %2, align 8
  %4 = getelementptr inbounds %struct.thread, %struct.thread* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %5, %11
  %13 = load i32, i32* @cpu_max_ext_state_size, align 4
  %14 = load i32, i32* @XSAVE_AREA_ALIGN, align 4
  %15 = call i64 @roundup2(i32 %13, i32 %14)
  %16 = sub nsw i64 %12, %15
  %17 = load %struct.thread*, %struct.thread** %2, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  ret void
}

declare dso_local i64 @roundup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
