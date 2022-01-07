; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_set_pcb_flags_fsgsbase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_set_pcb_flags_fsgsbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcb = type { i32, i32, i32 }

@curpcb = common dso_local global %struct.pcb* null, align 8
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@_ufssel = common dso_local global i64 0, align 8
@_ugssel = common dso_local global i64 0, align 8
@MSR_KGSBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcb*, i32)* @set_pcb_flags_fsgsbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pcb_flags_fsgsbase(%struct.pcb* %0, i32 %1) #0 {
  %3 = alloca %struct.pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcb* %0, %struct.pcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pcb*, %struct.pcb** @curpcb, align 8
  %7 = load %struct.pcb*, %struct.pcb** %3, align 8
  %8 = icmp eq %struct.pcb* %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PCB_FULL_IRET, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %9
  %15 = load %struct.pcb*, %struct.pcb** %3, align 8
  %16 = getelementptr inbounds %struct.pcb, %struct.pcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCB_FULL_IRET, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %14
  %22 = call i32 (...) @intr_disable()
  store i32 %22, i32* %5, align 4
  %23 = load %struct.pcb*, %struct.pcb** %3, align 8
  %24 = getelementptr inbounds %struct.pcb, %struct.pcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PCB_FULL_IRET, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = call i64 (...) @rfs()
  %31 = load i64, i64* @_ufssel, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 (...) @rdfsbase()
  %35 = load %struct.pcb*, %struct.pcb** %3, align 8
  %36 = getelementptr inbounds %struct.pcb, %struct.pcb* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = call i64 (...) @rgs()
  %39 = load i64, i64* @_ugssel, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @MSR_KGSBASE, align 4
  %43 = call i32 @rdmsr(i32 %42)
  %44 = load %struct.pcb*, %struct.pcb** %3, align 8
  %45 = getelementptr inbounds %struct.pcb, %struct.pcb* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.pcb*, %struct.pcb** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @set_pcb_flags_raw(%struct.pcb* %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @intr_restore(i32 %51)
  br label %57

53:                                               ; preds = %14, %9, %2
  %54 = load %struct.pcb*, %struct.pcb** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @set_pcb_flags_raw(%struct.pcb* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %47
  ret void
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i64 @rfs(...) #1

declare dso_local i32 @rdfsbase(...) #1

declare dso_local i64 @rgs(...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @set_pcb_flags_raw(%struct.pcb*, i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
