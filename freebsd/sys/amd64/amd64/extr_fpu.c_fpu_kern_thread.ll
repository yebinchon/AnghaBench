; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpu_kern_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpu_kern_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@curthread = common dso_local global %struct.TYPE_7__* null, align 8
@TDP_KTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Only kthread may use fpu_kern_thread\00", align 1
@curpcb = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"mangled pcb_save\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"recursive call\00", align 1
@PCB_KERNFPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_kern_thread(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curthread, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TDP_KTHREAD, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curpcb, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curpcb, align 8
  %15 = call i64 @get_pcb_user_save_pcb(%struct.TYPE_6__* %14)
  %16 = icmp eq i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curpcb, align 8
  %20 = call i32 @PCB_USER_FPU(%struct.TYPE_6__* %19)
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curpcb, align 8
  %23 = load i32, i32* @PCB_KERNFPU, align 4
  %24 = call i32 @set_pcb_flags(%struct.TYPE_6__* %22, i32 %23)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @get_pcb_user_save_pcb(%struct.TYPE_6__*) #1

declare dso_local i32 @PCB_USER_FPU(%struct.TYPE_6__*) #1

declare dso_local i32 @set_pcb_flags(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
