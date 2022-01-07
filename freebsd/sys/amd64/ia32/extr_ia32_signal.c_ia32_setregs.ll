; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_signal.c_ia32_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_signal.c_ia32_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__*, %struct.pcb*, %struct.trapframe* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.pcb = type { i32, i64, i64 }
%struct.trapframe = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32 }
%struct.image_params = type { i32, i32 }

@__INITIAL_FPUCW_I386__ = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_USER = common dso_local global i32 0, align 4
@_udatasel = common dso_local global i8* null, align 8
@_ucode32sel = common dso_local global i32 0, align 4
@_ufssel = common dso_local global i32 0, align 4
@_ugssel = common dso_local global i32 0, align 4
@TF_HASSEGS = common dso_local global i32 0, align 4
@PCB_32BIT = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia32_setregs(%struct.thread* %0, %struct.image_params* %1, i32 %2) #0 {
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
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = call i32 @user_ldt_free(%struct.thread* %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.pcb*, %struct.pcb** %8, align 8
  %28 = getelementptr inbounds %struct.pcb, %struct.pcb* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.pcb*, %struct.pcb** %8, align 8
  %30 = getelementptr inbounds %struct.pcb, %struct.pcb* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @__INITIAL_FPUCW_I386__, align 4
  %32 = load %struct.pcb*, %struct.pcb** %8, align 8
  %33 = getelementptr inbounds %struct.pcb, %struct.pcb* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PSL_T, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %40 = bitcast %struct.trapframe* %39 to i8*
  %41 = call i32 @bzero(i8* %40, i32 56)
  %42 = load %struct.image_params*, %struct.image_params** %5, align 8
  %43 = getelementptr inbounds %struct.image_params, %struct.image_params* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %46 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @PSL_USER, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** @_udatasel, align 8
  %56 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @_ucode32sel, align 4
  %59 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.image_params*, %struct.image_params** %5, align 8
  %62 = getelementptr inbounds %struct.image_params, %struct.image_params* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** @_udatasel, align 8
  %67 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @_udatasel, align 8
  %70 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @_ufssel, align 4
  %73 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %74 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @_ugssel, align 4
  %76 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %77 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @TF_HASSEGS, align 4
  %79 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %80 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.thread*, %struct.thread** %4, align 8
  %82 = call i32 @fpstate_drop(%struct.thread* %81)
  %83 = load %struct.pcb*, %struct.pcb** %8, align 8
  %84 = load i32, i32* @PCB_32BIT, align 4
  %85 = load i32, i32* @PCB_FULL_IRET, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @set_pcb_flags(%struct.pcb* %83, i32 %86)
  ret void
}

declare dso_local i32 @user_ldt_free(%struct.thread*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @fpstate_drop(%struct.thread*) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
