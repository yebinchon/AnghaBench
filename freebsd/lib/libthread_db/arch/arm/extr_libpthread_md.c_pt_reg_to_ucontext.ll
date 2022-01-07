; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthread_db/arch/arm/extr_libpthread_md.c_pt_reg_to_ucontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthread_db/arch/arm/extr_libpthread_md.c_pt_reg_to_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@_REG_R0 = common dso_local global i64 0, align 8
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
@_REG_CPSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_reg_to_ucontext(%struct.reg* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.reg*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store %struct.reg* %0, %struct.reg** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.reg*, %struct.reg** %3, align 8
  %13 = getelementptr inbounds %struct.reg, %struct.reg* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* @_REG_R0, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load %struct.reg*, %struct.reg** %3, align 8
  %21 = getelementptr inbounds %struct.reg, %struct.reg* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* @_REG_R1, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load %struct.reg*, %struct.reg** %3, align 8
  %29 = getelementptr inbounds %struct.reg, %struct.reg* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* @_REG_R2, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load %struct.reg*, %struct.reg** %3, align 8
  %37 = getelementptr inbounds %struct.reg, %struct.reg* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* @_REG_R3, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load %struct.reg*, %struct.reg** %3, align 8
  %45 = getelementptr inbounds %struct.reg, %struct.reg* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* @_REG_R4, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load %struct.reg*, %struct.reg** %3, align 8
  %53 = getelementptr inbounds %struct.reg, %struct.reg* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* @_REG_R5, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = load %struct.reg*, %struct.reg** %3, align 8
  %61 = getelementptr inbounds %struct.reg, %struct.reg* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* @_REG_R6, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load %struct.reg*, %struct.reg** %3, align 8
  %69 = getelementptr inbounds %struct.reg, %struct.reg* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* @_REG_R7, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load %struct.reg*, %struct.reg** %3, align 8
  %77 = getelementptr inbounds %struct.reg, %struct.reg* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* @_REG_R8, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load %struct.reg*, %struct.reg** %3, align 8
  %85 = getelementptr inbounds %struct.reg, %struct.reg* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 9
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* @_REG_R9, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load %struct.reg*, %struct.reg** %3, align 8
  %93 = getelementptr inbounds %struct.reg, %struct.reg* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 10
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i64, i64* @_REG_R10, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load %struct.reg*, %struct.reg** %3, align 8
  %101 = getelementptr inbounds %struct.reg, %struct.reg* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 11
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* @_REG_R11, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %104, i32* %107, align 4
  %108 = load %struct.reg*, %struct.reg** %3, align 8
  %109 = getelementptr inbounds %struct.reg, %struct.reg* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 12
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i64, i64* @_REG_R12, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %112, i32* %115, align 4
  %116 = load %struct.reg*, %struct.reg** %3, align 8
  %117 = getelementptr inbounds %struct.reg, %struct.reg* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = load i64, i64* @_REG_SP, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %118, i32* %121, align 4
  %122 = load %struct.reg*, %struct.reg** %3, align 8
  %123 = getelementptr inbounds %struct.reg, %struct.reg* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load i64, i64* @_REG_LR, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %124, i32* %127, align 4
  %128 = load %struct.reg*, %struct.reg** %3, align 8
  %129 = getelementptr inbounds %struct.reg, %struct.reg* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = load i64, i64* @_REG_PC, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = load %struct.reg*, %struct.reg** %3, align 8
  %135 = getelementptr inbounds %struct.reg, %struct.reg* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load i64, i64* @_REG_CPSR, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 %136, i32* %139, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
