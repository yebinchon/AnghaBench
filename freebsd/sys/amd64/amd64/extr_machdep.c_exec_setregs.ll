; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_exec_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_exec_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcb = type { i32, i64, i64, i64, i64, i64, i64, i32, i64, i64 }
%struct.thread = type { %struct.TYPE_4__*, %struct.pcb*, %struct.trapframe* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i32 }
%struct.image_params = type { i32 }

@PCB_32BIT = common dso_local global i32 0, align 4
@__INITIAL_FPUCW__ = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_USER = common dso_local global i32 0, align 4
@_udatasel = common dso_local global i8* null, align 8
@_ucodesel = common dso_local global i32 0, align 4
@_ufssel = common dso_local global i32 0, align 4
@_ugssel = common dso_local global i32 0, align 4
@TF_HASSEGS = common dso_local global i32 0, align 4
@PCB_DBREGS = common dso_local global i32 0, align 4
@curpcb = common dso_local global %struct.pcb* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_setregs(%struct.thread* %0, %struct.image_params* %1, i32 %2) #0 {
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
  %28 = call i32 @update_pcb_bases(%struct.pcb* %27)
  %29 = load %struct.pcb*, %struct.pcb** %8, align 8
  %30 = getelementptr inbounds %struct.pcb, %struct.pcb* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load %struct.pcb*, %struct.pcb** %8, align 8
  %32 = getelementptr inbounds %struct.pcb, %struct.pcb* %31, i32 0, i32 8
  store i64 0, i64* %32, align 8
  %33 = load %struct.pcb*, %struct.pcb** %8, align 8
  %34 = load i32, i32* @PCB_32BIT, align 4
  %35 = call i32 @clear_pcb_flags(%struct.pcb* %33, i32 %34)
  %36 = load i32, i32* @__INITIAL_FPUCW__, align 4
  %37 = load %struct.pcb*, %struct.pcb** %8, align 8
  %38 = getelementptr inbounds %struct.pcb, %struct.pcb* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  %39 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PSL_T, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %45 = bitcast %struct.trapframe* %44 to i8*
  %46 = call i32 @bzero(i8* %45, i32 64)
  %47 = load %struct.image_params*, %struct.image_params** %5, align 8
  %48 = getelementptr inbounds %struct.image_params, %struct.image_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 8
  %54 = sext i32 %53 to i64
  %55 = and i64 %54, -16
  %56 = add i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %59 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %62 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @PSL_USER, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %67 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** @_udatasel, align 8
  %69 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 9
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @_ucodesel, align 4
  %72 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %73 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** @_udatasel, align 8
  %75 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @_udatasel, align 8
  %78 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @_ufssel, align 4
  %81 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %82 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @_ugssel, align 4
  %84 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %85 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @TF_HASSEGS, align 4
  %87 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %88 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pcb*, %struct.pcb** %8, align 8
  %90 = getelementptr inbounds %struct.pcb, %struct.pcb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PCB_DBREGS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %26
  %96 = load %struct.pcb*, %struct.pcb** %8, align 8
  %97 = getelementptr inbounds %struct.pcb, %struct.pcb* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.pcb*, %struct.pcb** %8, align 8
  %99 = getelementptr inbounds %struct.pcb, %struct.pcb* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load %struct.pcb*, %struct.pcb** %8, align 8
  %101 = getelementptr inbounds %struct.pcb, %struct.pcb* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load %struct.pcb*, %struct.pcb** %8, align 8
  %103 = getelementptr inbounds %struct.pcb, %struct.pcb* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.pcb*, %struct.pcb** %8, align 8
  %105 = getelementptr inbounds %struct.pcb, %struct.pcb* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.pcb*, %struct.pcb** %8, align 8
  %107 = getelementptr inbounds %struct.pcb, %struct.pcb* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.pcb*, %struct.pcb** %8, align 8
  %109 = load %struct.pcb*, %struct.pcb** @curpcb, align 8
  %110 = icmp eq %struct.pcb* %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %95
  %112 = call i32 (...) @reset_dbregs()
  br label %113

113:                                              ; preds = %111, %95
  %114 = load %struct.pcb*, %struct.pcb** %8, align 8
  %115 = load i32, i32* @PCB_DBREGS, align 4
  %116 = call i32 @clear_pcb_flags(%struct.pcb* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %26
  %118 = load %struct.thread*, %struct.thread** %4, align 8
  %119 = call i32 @fpstate_drop(%struct.thread* %118)
  ret void
}

declare dso_local i32 @user_ldt_free(%struct.thread*) #1

declare dso_local i32 @update_pcb_bases(%struct.pcb*) #1

declare dso_local i32 @clear_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @reset_dbregs(...) #1

declare dso_local i32 @fpstate_drop(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
