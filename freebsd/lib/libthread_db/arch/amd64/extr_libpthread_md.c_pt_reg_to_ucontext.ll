; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthread_db/arch/amd64/extr_libpthread_md.c_pt_reg_to_ucontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthread_db/arch/amd64/extr_libpthread_md.c_pt_reg_to_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_reg_to_ucontext(%struct.reg* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.reg*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.reg* %0, %struct.reg** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.reg*, %struct.reg** %3, align 8
  %9 = getelementptr inbounds %struct.reg, %struct.reg* %8, i32 0, i32 19
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 19
  store i32 %10, i32* %12, align 4
  %13 = load %struct.reg*, %struct.reg** %3, align 8
  %14 = getelementptr inbounds %struct.reg, %struct.reg* %13, i32 0, i32 18
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 18
  store i32 %15, i32* %17, align 4
  %18 = load %struct.reg*, %struct.reg** %3, align 8
  %19 = getelementptr inbounds %struct.reg, %struct.reg* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 17
  store i32 %20, i32* %22, align 4
  %23 = load %struct.reg*, %struct.reg** %3, align 8
  %24 = getelementptr inbounds %struct.reg, %struct.reg* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 16
  store i32 %25, i32* %27, align 4
  %28 = load %struct.reg*, %struct.reg** %3, align 8
  %29 = getelementptr inbounds %struct.reg, %struct.reg* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 15
  store i32 %30, i32* %32, align 4
  %33 = load %struct.reg*, %struct.reg** %3, align 8
  %34 = getelementptr inbounds %struct.reg, %struct.reg* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 14
  store i32 %35, i32* %37, align 4
  %38 = load %struct.reg*, %struct.reg** %3, align 8
  %39 = getelementptr inbounds %struct.reg, %struct.reg* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 13
  store i32 %40, i32* %42, align 4
  %43 = load %struct.reg*, %struct.reg** %3, align 8
  %44 = getelementptr inbounds %struct.reg, %struct.reg* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 4
  %48 = load %struct.reg*, %struct.reg** %3, align 8
  %49 = getelementptr inbounds %struct.reg, %struct.reg* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load %struct.reg*, %struct.reg** %3, align 8
  %54 = getelementptr inbounds %struct.reg, %struct.reg* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 4
  %58 = load %struct.reg*, %struct.reg** %3, align 8
  %59 = getelementptr inbounds %struct.reg, %struct.reg* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.reg*, %struct.reg** %3, align 8
  %64 = getelementptr inbounds %struct.reg, %struct.reg* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.reg*, %struct.reg** %3, align 8
  %69 = getelementptr inbounds %struct.reg, %struct.reg* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.reg*, %struct.reg** %3, align 8
  %74 = getelementptr inbounds %struct.reg, %struct.reg* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.reg*, %struct.reg** %3, align 8
  %79 = getelementptr inbounds %struct.reg, %struct.reg* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.reg*, %struct.reg** %3, align 8
  %84 = getelementptr inbounds %struct.reg, %struct.reg* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.reg*, %struct.reg** %3, align 8
  %89 = getelementptr inbounds %struct.reg, %struct.reg* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.reg*, %struct.reg** %3, align 8
  %94 = getelementptr inbounds %struct.reg, %struct.reg* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.reg*, %struct.reg** %3, align 8
  %99 = getelementptr inbounds %struct.reg, %struct.reg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.reg*, %struct.reg** %3, align 8
  %104 = getelementptr inbounds %struct.reg, %struct.reg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
