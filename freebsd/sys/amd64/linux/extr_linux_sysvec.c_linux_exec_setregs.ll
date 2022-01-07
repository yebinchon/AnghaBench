; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_exec_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_exec_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcb = type { i32, i64, i64, i64, i64, i64, i64, i32, i64, i64 }
%struct.thread = type { %struct.TYPE_4__*, %struct.pcb*, %struct.trapframe* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.trapframe = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i32, i32 }
%struct.image_params = type { i32 }

@PCB_32BIT = common dso_local global i32 0, align 4
@__LINUX_NPXCW__ = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_USER = common dso_local global i32 0, align 4
@_udatasel = common dso_local global i8* null, align 8
@_ucodesel = common dso_local global i32 0, align 4
@_ufssel = common dso_local global i32 0, align 4
@_ugssel = common dso_local global i32 0, align 4
@TF_HASSEGS = common dso_local global i32 0, align 4
@PCB_DBREGS = common dso_local global i32 0, align 4
@curpcb = common dso_local global %struct.pcb* null, align 8
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
  %28 = getelementptr inbounds %struct.pcb, %struct.pcb* %27, i32 0, i32 9
  store i64 0, i64* %28, align 8
  %29 = load %struct.pcb*, %struct.pcb** %8, align 8
  %30 = getelementptr inbounds %struct.pcb, %struct.pcb* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.pcb*, %struct.pcb** %8, align 8
  %32 = load i32, i32* @PCB_32BIT, align 4
  %33 = call i32 @clear_pcb_flags(%struct.pcb* %31, i32 %32)
  %34 = load i32, i32* @__LINUX_NPXCW__, align 4
  %35 = load %struct.pcb*, %struct.pcb** %8, align 8
  %36 = getelementptr inbounds %struct.pcb, %struct.pcb* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pcb*, %struct.pcb** %8, align 8
  %38 = load i32, i32* @PCB_FULL_IRET, align 4
  %39 = call i32 @set_pcb_flags(%struct.pcb* %37, i32 %38)
  %40 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PSL_T, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %46 = bitcast %struct.trapframe* %45 to i8*
  %47 = call i32 @bzero(i8* %46, i32 56)
  %48 = load %struct.image_params*, %struct.image_params** %5, align 8
  %49 = getelementptr inbounds %struct.image_params, %struct.image_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %52 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @PSL_USER, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** @_udatasel, align 8
  %62 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %63 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @_ucodesel, align 4
  %65 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** @_udatasel, align 8
  %68 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %69 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @_udatasel, align 8
  %71 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %72 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @_ufssel, align 4
  %74 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @_ugssel, align 4
  %77 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %78 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @TF_HASSEGS, align 4
  %80 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pcb*, %struct.pcb** %8, align 8
  %83 = getelementptr inbounds %struct.pcb, %struct.pcb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PCB_DBREGS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %26
  %89 = load %struct.pcb*, %struct.pcb** %8, align 8
  %90 = getelementptr inbounds %struct.pcb, %struct.pcb* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.pcb*, %struct.pcb** %8, align 8
  %92 = getelementptr inbounds %struct.pcb, %struct.pcb* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.pcb*, %struct.pcb** %8, align 8
  %94 = getelementptr inbounds %struct.pcb, %struct.pcb* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load %struct.pcb*, %struct.pcb** %8, align 8
  %96 = getelementptr inbounds %struct.pcb, %struct.pcb* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.pcb*, %struct.pcb** %8, align 8
  %98 = getelementptr inbounds %struct.pcb, %struct.pcb* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.pcb*, %struct.pcb** %8, align 8
  %100 = getelementptr inbounds %struct.pcb, %struct.pcb* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load %struct.pcb*, %struct.pcb** %8, align 8
  %102 = load %struct.pcb*, %struct.pcb** @curpcb, align 8
  %103 = icmp eq %struct.pcb* %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %88
  %105 = call i32 (...) @reset_dbregs()
  br label %106

106:                                              ; preds = %104, %88
  %107 = load %struct.pcb*, %struct.pcb** %8, align 8
  %108 = load i32, i32* @PCB_DBREGS, align 4
  %109 = call i32 @clear_pcb_flags(%struct.pcb* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %26
  %111 = load %struct.thread*, %struct.thread** %4, align 8
  %112 = call i32 @fpstate_drop(%struct.thread* %111)
  ret void
}

declare dso_local i32 @user_ldt_free(%struct.thread*) #1

declare dso_local i32 @clear_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @reset_dbregs(...) #1

declare dso_local i32 @fpstate_drop(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
