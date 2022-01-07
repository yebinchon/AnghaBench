; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_signal.c_ia32_get_mcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_signal.c_ia32_get_mcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.thread = type { %struct.trapframe*, %struct.pcb* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pcb = type { i32, i32 }
%struct.ia32_mcontext = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@GET_MC_CLEAR_RET = common dso_local global i32 0, align 4
@PSL_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.ia32_mcontext*, i32)* @ia32_get_mcontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia32_get_mcontext(%struct.thread* %0, %struct.ia32_mcontext* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ia32_mcontext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcb*, align 8
  %8 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ia32_mcontext* %1, %struct.ia32_mcontext** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.pcb*, %struct.pcb** %10, align 8
  store %struct.pcb* %11, %struct.pcb** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  store %struct.trapframe* %14, %struct.trapframe** %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PROC_LOCK(i32 %17)
  %19 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sigonstack(i32 %21)
  %23 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %24 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %23, i32 0, i32 24
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PROC_UNLOCK(i32 %27)
  %29 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %30 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %29, i32 0, i32 16
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %33 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %32, i32 0, i32 23
  store i32 %31, i32* %33, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 15
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %38 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %37, i32 0, i32 22
  store i32 %36, i32* %38, align 8
  %39 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %43 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %42, i32 0, i32 21
  store i32 %41, i32* %43, align 4
  %44 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %48 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %47, i32 0, i32 20
  store i32 %46, i32* %48, align 8
  %49 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %53 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %52, i32 0, i32 19
  store i32 %51, i32* %53, align 4
  %54 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %58 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %57, i32 0, i32 18
  store i32 %56, i32* %58, align 8
  %59 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %63 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %62, i32 0, i32 17
  store i32 %61, i32* %63, align 4
  %64 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %68 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %67, i32 0, i32 16
  store i32 %66, i32* %68, align 8
  %69 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %73 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %72, i32 0, i32 15
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @GET_MC_CLEAR_RET, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %3
  %79 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %80 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %79, i32 0, i32 14
  store i32 0, i32* %80, align 8
  %81 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %82 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %81, i32 0, i32 13
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @PSL_C, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %86 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %85, i32 0, i32 15
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %100

89:                                               ; preds = %3
  %90 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %91 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %94 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %93, i32 0, i32 14
  store i32 %92, i32* %94, align 8
  %95 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %96 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %99 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %98, i32 0, i32 13
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %89, %78
  %101 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %102 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %105 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %104, i32 0, i32 12
  store i32 %103, i32* %105, align 8
  %106 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %107 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %110 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 4
  %111 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %112 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %115 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 8
  %116 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %117 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %120 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 4
  %121 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %122 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %125 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  %126 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %127 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %130 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %132 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %131, i32 0, i32 0
  store i32 112, i32* %132, align 8
  %133 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %134 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %137 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load %struct.thread*, %struct.thread** %4, align 8
  %139 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %140 = call i32 @ia32_get_fpcontext(%struct.thread* %138, %struct.ia32_mcontext* %139, i32* null, i32 0)
  %141 = load %struct.pcb*, %struct.pcb** %7, align 8
  %142 = getelementptr inbounds %struct.pcb, %struct.pcb* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %145 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.pcb*, %struct.pcb** %7, align 8
  %147 = getelementptr inbounds %struct.pcb, %struct.pcb* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %150 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %152 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %151, i32 0, i32 3
  store i64 0, i64* %152, align 8
  %153 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %154 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %5, align 8
  %156 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @bzero(i32 %157, i32 4)
  ret i32 0
}

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @ia32_get_fpcontext(%struct.thread*, %struct.ia32_mcontext*, i32*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
