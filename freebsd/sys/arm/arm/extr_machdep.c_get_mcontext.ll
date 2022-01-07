; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_get_mcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_get_mcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32*, i64 }

@GET_MC_CLEAR_RET = common dso_local global i32 0, align 4
@_REG_R0 = common dso_local global i64 0, align 8
@PSR_C = common dso_local global i32 0, align 4
@_REG_CPSR = common dso_local global i64 0, align 8
@_REG_R1 = common dso_local global i64 0, align 8
@_REG_R2 = common dso_local global i64 0, align 8
@_REG_R3 = common dso_local global i64 0, align 8
@_REG_R4 = common dso_local global i64 0, align 8
@_REG_R5 = common dso_local global i64 0, align 8
@_REG_R6 = common dso_local global i64 0, align 8
@_REG_R7 = common dso_local global i64 0, align 8
@_REG_R8 = common dso_local global i64 0, align 8
@_REG_R9 = common dso_local global i64 0, align 8
@_REG_R10 = common dso_local global i64 0, align 8
@_REG_R11 = common dso_local global i64 0, align 8
@_REG_R12 = common dso_local global i64 0, align 8
@_REG_SP = common dso_local global i64 0, align 8
@_REG_LR = common dso_local global i64 0, align 8
@_REG_PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mcontext(%struct.thread* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i32*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  store %struct.trapframe* %11, %struct.trapframe** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GET_MC_CLEAR_RET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* @_REG_R0, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PSR_C, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* @_REG_CPSR, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  br label %45

32:                                               ; preds = %3
  %33 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %34 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* @_REG_R0, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* @_REG_CPSR, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %32, %19
  %46 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i64, i64* @_REG_R1, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* @_REG_R2, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %59 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i64, i64* @_REG_R3, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* @_REG_R4, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* @_REG_R5, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %77 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i64, i64* @_REG_R6, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %83 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i64, i64* @_REG_R7, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* @_REG_R8, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %95 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i64, i64* @_REG_R9, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i64, i64* @_REG_R10, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %102, i32* %105, align 4
  %106 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %107 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i64, i64* @_REG_R11, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %113 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %112, i32 0, i32 13
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i64, i64* @_REG_R12, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %119 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i64, i64* @_REG_SP, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 %120, i32* %123, align 4
  %124 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %125 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i64, i64* @_REG_LR, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 %126, i32* %129, align 4
  %130 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %131 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %130, i32 0, i32 16
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i64, i64* @_REG_PC, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = call i32 @memset(i32* %141, i32 0, i32 4)
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
