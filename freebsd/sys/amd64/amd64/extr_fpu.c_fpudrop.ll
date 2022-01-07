; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpudrop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpudrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@fpcurthread = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"fpudrop: fpcurthread != curthread\00", align 1
@PCB_FPUINITDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpudrop() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = load i32, i32* @fpcurthread, align 4
  %3 = call %struct.thread* @PCPU_GET(i32 %2)
  store %struct.thread* %3, %struct.thread** %1, align 8
  %4 = load %struct.thread*, %struct.thread** %1, align 8
  %5 = load %struct.thread*, %struct.thread** @curthread, align 8
  %6 = icmp eq %struct.thread* %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.thread*, %struct.thread** %1, align 8
  %10 = call i32 @CRITICAL_ASSERT(%struct.thread* %9)
  %11 = load i32, i32* @fpcurthread, align 4
  %12 = call i32 @PCPU_SET(i32 %11, i32* null)
  %13 = load %struct.thread*, %struct.thread** %1, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCB_FPUINITDONE, align 4
  %17 = call i32 @clear_pcb_flags(i32 %15, i32 %16)
  %18 = call i32 (...) @start_emulating()
  ret void
}

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CRITICAL_ASSERT(%struct.thread*) #1

declare dso_local i32 @PCPU_SET(i32, i32*) #1

declare dso_local i32 @clear_pcb_flags(i32, i32) #1

declare dso_local i32 @start_emulating(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
