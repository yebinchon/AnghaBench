; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthread_db/arch/arm/extr_libpthread_md.c_pt_ucontext_to_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthread_db/arch/arm/extr_libpthread_md.c_pt_ucontext_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.reg = type { i32, i32, i32, i32, i32* }

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
define dso_local void @pt_ucontext_to_reg(%struct.TYPE_4__* %0, %struct.reg* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.reg*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.reg* %1, %struct.reg** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* @_REG_R0, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.reg*, %struct.reg** %4, align 8
  %17 = getelementptr inbounds %struct.reg, %struct.reg* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* @_REG_R1, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.reg*, %struct.reg** %4, align 8
  %25 = getelementptr inbounds %struct.reg, %struct.reg* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* @_REG_R2, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.reg*, %struct.reg** %4, align 8
  %33 = getelementptr inbounds %struct.reg, %struct.reg* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* @_REG_R3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.reg*, %struct.reg** %4, align 8
  %41 = getelementptr inbounds %struct.reg, %struct.reg* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %39, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* @_REG_R4, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.reg*, %struct.reg** %4, align 8
  %49 = getelementptr inbounds %struct.reg, %struct.reg* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* @_REG_R5, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.reg*, %struct.reg** %4, align 8
  %57 = getelementptr inbounds %struct.reg, %struct.reg* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  store i32 %55, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* @_REG_R6, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.reg*, %struct.reg** %4, align 8
  %65 = getelementptr inbounds %struct.reg, %struct.reg* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 6
  store i32 %63, i32* %67, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* @_REG_R7, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.reg*, %struct.reg** %4, align 8
  %73 = getelementptr inbounds %struct.reg, %struct.reg* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  store i32 %71, i32* %75, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i64, i64* @_REG_R8, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.reg*, %struct.reg** %4, align 8
  %81 = getelementptr inbounds %struct.reg, %struct.reg* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  store i32 %79, i32* %83, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* @_REG_R9, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.reg*, %struct.reg** %4, align 8
  %89 = getelementptr inbounds %struct.reg, %struct.reg* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 9
  store i32 %87, i32* %91, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i64, i64* @_REG_R10, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.reg*, %struct.reg** %4, align 8
  %97 = getelementptr inbounds %struct.reg, %struct.reg* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 10
  store i32 %95, i32* %99, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i64, i64* @_REG_R11, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.reg*, %struct.reg** %4, align 8
  %105 = getelementptr inbounds %struct.reg, %struct.reg* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 11
  store i32 %103, i32* %107, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i64, i64* @_REG_R12, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.reg*, %struct.reg** %4, align 8
  %113 = getelementptr inbounds %struct.reg, %struct.reg* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 12
  store i32 %111, i32* %115, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = load i64, i64* @_REG_SP, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.reg*, %struct.reg** %4, align 8
  %121 = getelementptr inbounds %struct.reg, %struct.reg* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i64, i64* @_REG_LR, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.reg*, %struct.reg** %4, align 8
  %127 = getelementptr inbounds %struct.reg, %struct.reg* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* @_REG_PC, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.reg*, %struct.reg** %4, align 8
  %133 = getelementptr inbounds %struct.reg, %struct.reg* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = load i64, i64* @_REG_CPSR, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.reg*, %struct.reg** %4, align 8
  %139 = getelementptr inbounds %struct.reg, %struct.reg* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
