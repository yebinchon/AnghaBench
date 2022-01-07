; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux_exec_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux_exec_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__*, %struct.pcb*, %struct.trapframe* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.pcb = type { i32, i64, i64 }
%struct.trapframe = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.image_params = type { i32, i32 }

@MSR_FSBASE = common dso_local global i32 0, align 4
@MSR_KGSBASE = common dso_local global i32 0, align 4
@__LINUX_NPXCW__ = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_USER = common dso_local global i32 0, align 4
@_ugssel = common dso_local global i32 0, align 4
@_ufssel = common dso_local global i32 0, align 4
@_udatasel = common dso_local global i8* null, align 8
@TF_HASSEGS = common dso_local global i32 0, align 4
@_ucode32sel = common dso_local global i32 0, align 4
@PCB_32BIT = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.image_params*, i32)* @linux_exec_setregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_exec_setregs(%struct.thread* %0, %struct.image_params* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.pcb*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 2
  %12 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  store %struct.trapframe* %12, %struct.trapframe** %7, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.pcb*, %struct.pcb** %14, align 8
  store %struct.pcb* %15, %struct.pcb** %8, align 8
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 2
  %18 = load %struct.trapframe*, %struct.trapframe** %17, align 8
  store %struct.trapframe* %18, %struct.trapframe** %7, align 8
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 1
  %21 = load %struct.pcb*, %struct.pcb** %20, align 8
  store %struct.pcb* %21, %struct.pcb** %8, align 8
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = call i32 @user_ldt_free(%struct.thread* %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = call i32 (...) @critical_enter()
  %34 = load i32, i32* @MSR_FSBASE, align 4
  %35 = call i32 @wrmsr(i32 %34, i32 0)
  %36 = load i32, i32* @MSR_KGSBASE, align 4
  %37 = call i32 @wrmsr(i32 %36, i32 0)
  %38 = load %struct.pcb*, %struct.pcb** %8, align 8
  %39 = getelementptr inbounds %struct.pcb, %struct.pcb* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.pcb*, %struct.pcb** %8, align 8
  %41 = getelementptr inbounds %struct.pcb, %struct.pcb* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = call i32 (...) @critical_exit()
  %43 = load i32, i32* @__LINUX_NPXCW__, align 4
  %44 = load %struct.pcb*, %struct.pcb** %8, align 8
  %45 = getelementptr inbounds %struct.pcb, %struct.pcb* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PSL_T, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %52 = bitcast %struct.trapframe* %51 to i8*
  %53 = call i32 @bzero(i8* %52, i32 56)
  %54 = load %struct.image_params*, %struct.image_params** %5, align 8
  %55 = getelementptr inbounds %struct.image_params, %struct.image_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @PSL_USER, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @_ugssel, align 4
  %68 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %69 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @_ufssel, align 4
  %71 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %72 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @_udatasel, align 8
  %74 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @_udatasel, align 8
  %77 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %78 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @_udatasel, align 8
  %80 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @TF_HASSEGS, align 4
  %83 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %84 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @_ucode32sel, align 4
  %86 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %87 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.image_params*, %struct.image_params** %5, align 8
  %89 = getelementptr inbounds %struct.image_params, %struct.image_params* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %92 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.thread*, %struct.thread** %4, align 8
  %94 = call i32 @fpstate_drop(%struct.thread* %93)
  %95 = load %struct.pcb*, %struct.pcb** %8, align 8
  %96 = load i32, i32* @PCB_32BIT, align 4
  %97 = load i32, i32* @PCB_FULL_IRET, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @set_pcb_flags(%struct.pcb* %95, i32 %98)
  ret void
}

declare dso_local i32 @user_ldt_free(%struct.thread*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @fpstate_drop(%struct.thread*) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
