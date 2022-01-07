; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_get_mcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_get_mcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.thread = type { %struct.trapframe*, %struct.pcb* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pcb = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@GET_MC_CLEAR_RET = common dso_local global i32 0, align 4
@PSL_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mcontext(%struct.thread* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcb*, align 8
  %8 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.pcb*, %struct.pcb** %10, align 8
  store %struct.pcb* %11, %struct.pcb** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  store %struct.trapframe* %14, %struct.trapframe** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PROC_LOCK(i32 %17)
  %19 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sigonstack(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 31
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PROC_UNLOCK(i32 %27)
  %29 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %30 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %29, i32 0, i32 24
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 30
  store i32 %31, i32* %33, align 8
  %34 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 23
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 29
  store i32 %36, i32* %38, align 4
  %39 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 22
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 28
  store i32 %41, i32* %43, align 8
  %44 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 21
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 27
  store i32 %46, i32* %48, align 4
  %49 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 20
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 26
  store i32 %51, i32* %53, align 8
  %54 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 19
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 25
  store i32 %56, i32* %58, align 4
  %59 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 18
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 24
  store i32 %61, i32* %63, align 8
  %64 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 17
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 23
  store i32 %66, i32* %68, align 4
  %69 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 16
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 22
  store i32 %71, i32* %73, align 8
  %74 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 15
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 21
  store i32 %76, i32* %78, align 4
  %79 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %80 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %79, i32 0, i32 14
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 20
  store i32 %81, i32* %83, align 8
  %84 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %85 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %84, i32 0, i32 13
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 19
  store i32 %86, i32* %88, align 4
  %89 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %90 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 18
  store i32 %91, i32* %93, align 8
  %94 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %95 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %94, i32 0, i32 11
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 17
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @GET_MC_CLEAR_RET, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %3
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 16
  store i32 0, i32* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 15
  store i32 0, i32* %107, align 4
  %108 = load i32, i32* @PSL_C, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 17
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %125

114:                                              ; preds = %3
  %115 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %116 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 16
  store i32 %117, i32* %119, align 8
  %120 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %121 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 15
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %114, %103
  %126 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %127 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 14
  store i32 %128, i32* %130, align 8
  %131 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %132 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 13
  store i32 %133, i32* %135, align 4
  %136 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %137 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 12
  store i32 %138, i32* %140, align 8
  %141 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %142 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 11
  store i32 %143, i32* %145, align 4
  %146 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %147 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 10
  store i32 %148, i32* %150, align 8
  %151 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %152 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 4
  %156 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %157 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 8
  %161 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %162 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 4
  %166 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %167 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 136, i32* %172, align 8
  %173 = load %struct.thread*, %struct.thread** %4, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = call i32 @get_fpcontext(%struct.thread* %173, %struct.TYPE_5__* %174, i32* null, i32 0)
  %176 = load %struct.pcb*, %struct.pcb** %7, align 8
  %177 = call i32 @update_pcb_bases(%struct.pcb* %176)
  %178 = load %struct.pcb*, %struct.pcb** %7, align 8
  %179 = getelementptr inbounds %struct.pcb, %struct.pcb* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load %struct.pcb*, %struct.pcb** %7, align 8
  %184 = getelementptr inbounds %struct.pcb, %struct.pcb* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  store i64 0, i64* %189, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @bzero(i32 %194, i32 4)
  ret i32 0
}

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @get_fpcontext(%struct.thread*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @update_pcb_bases(%struct.pcb*) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
