; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_update_gdt_fsbase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_update_gdt_fsbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.user_segment_descriptor = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@fs32p = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_gdt_fsbase(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_segment_descriptor*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  %8 = icmp ne %struct.thread* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %29

10:                                               ; preds = %2
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCB_FULL_IRET, align 4
  %15 = call i32 @set_pcb_flags(i32 %13, i32 %14)
  %16 = call i32 (...) @critical_enter()
  %17 = load i32, i32* @fs32p, align 4
  %18 = call %struct.user_segment_descriptor* @PCPU_GET(i32 %17)
  store %struct.user_segment_descriptor* %18, %struct.user_segment_descriptor** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 16777215
  %21 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %5, align 8
  %22 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = call i32 (...) @critical_exit()
  br label %29

29:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @set_pcb_flags(i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.user_segment_descriptor* @PCPU_GET(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
