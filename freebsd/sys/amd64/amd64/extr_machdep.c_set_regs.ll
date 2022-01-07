; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_set_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@TF_HASSEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_regs(%struct.thread* %0, %struct.reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.reg*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.reg* %1, %struct.reg** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  store %struct.trapframe* %10, %struct.trapframe** %6, align 8
  %11 = load %struct.reg*, %struct.reg** %5, align 8
  %12 = getelementptr inbounds %struct.reg, %struct.reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EFL_SECURE(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.reg*, %struct.reg** %5, align 8
  %22 = getelementptr inbounds %struct.reg, %struct.reg* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CS_SECURE(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %132

28:                                               ; preds = %20
  %29 = load %struct.reg*, %struct.reg** %5, align 8
  %30 = getelementptr inbounds %struct.reg, %struct.reg* %29, i32 0, i32 23
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %33 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %32, i32 0, i32 24
  store i32 %31, i32* %33, align 4
  %34 = load %struct.reg*, %struct.reg** %5, align 8
  %35 = getelementptr inbounds %struct.reg, %struct.reg* %34, i32 0, i32 22
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %38 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %37, i32 0, i32 23
  store i32 %36, i32* %38, align 4
  %39 = load %struct.reg*, %struct.reg** %5, align 8
  %40 = getelementptr inbounds %struct.reg, %struct.reg* %39, i32 0, i32 21
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 22
  store i32 %41, i32* %43, align 4
  %44 = load %struct.reg*, %struct.reg** %5, align 8
  %45 = getelementptr inbounds %struct.reg, %struct.reg* %44, i32 0, i32 20
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 21
  store i32 %46, i32* %48, align 4
  %49 = load %struct.reg*, %struct.reg** %5, align 8
  %50 = getelementptr inbounds %struct.reg, %struct.reg* %49, i32 0, i32 19
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 20
  store i32 %51, i32* %53, align 4
  %54 = load %struct.reg*, %struct.reg** %5, align 8
  %55 = getelementptr inbounds %struct.reg, %struct.reg* %54, i32 0, i32 18
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 19
  store i32 %56, i32* %58, align 4
  %59 = load %struct.reg*, %struct.reg** %5, align 8
  %60 = getelementptr inbounds %struct.reg, %struct.reg* %59, i32 0, i32 17
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %63 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %62, i32 0, i32 18
  store i32 %61, i32* %63, align 4
  %64 = load %struct.reg*, %struct.reg** %5, align 8
  %65 = getelementptr inbounds %struct.reg, %struct.reg* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 17
  store i32 %66, i32* %68, align 4
  %69 = load %struct.reg*, %struct.reg** %5, align 8
  %70 = getelementptr inbounds %struct.reg, %struct.reg* %69, i32 0, i32 15
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %73 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %72, i32 0, i32 16
  store i32 %71, i32* %73, align 4
  %74 = load %struct.reg*, %struct.reg** %5, align 8
  %75 = getelementptr inbounds %struct.reg, %struct.reg* %74, i32 0, i32 14
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %78 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %77, i32 0, i32 15
  store i32 %76, i32* %78, align 4
  %79 = load %struct.reg*, %struct.reg** %5, align 8
  %80 = getelementptr inbounds %struct.reg, %struct.reg* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %83 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %82, i32 0, i32 14
  store i32 %81, i32* %83, align 4
  %84 = load %struct.reg*, %struct.reg** %5, align 8
  %85 = getelementptr inbounds %struct.reg, %struct.reg* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %88 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %87, i32 0, i32 13
  store i32 %86, i32* %88, align 4
  %89 = load %struct.reg*, %struct.reg** %5, align 8
  %90 = getelementptr inbounds %struct.reg, %struct.reg* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %93 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 4
  %94 = load %struct.reg*, %struct.reg** %5, align 8
  %95 = getelementptr inbounds %struct.reg, %struct.reg* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %98 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %97, i32 0, i32 11
  store i32 %96, i32* %98, align 4
  %99 = load %struct.reg*, %struct.reg** %5, align 8
  %100 = getelementptr inbounds %struct.reg, %struct.reg* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %103 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 4
  %104 = load %struct.reg*, %struct.reg** %5, align 8
  %105 = getelementptr inbounds %struct.reg, %struct.reg* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %108 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %107, i32 0, i32 9
  store i32 %106, i32* %108, align 4
  %109 = load %struct.reg*, %struct.reg** %5, align 8
  %110 = getelementptr inbounds %struct.reg, %struct.reg* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %113 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %116 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.reg*, %struct.reg** %5, align 8
  %118 = getelementptr inbounds %struct.reg, %struct.reg* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %121 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.reg*, %struct.reg** %5, align 8
  %123 = getelementptr inbounds %struct.reg, %struct.reg* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %126 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load %struct.thread*, %struct.thread** %4, align 8
  %128 = getelementptr inbounds %struct.thread, %struct.thread* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PCB_FULL_IRET, align 4
  %131 = call i32 @set_pcb_flags(i32 %129, i32 %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %28, %26
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @EFL_SECURE(i32, i32) #1

declare dso_local i32 @CS_SECURE(i32) #1

declare dso_local i32 @set_pcb_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
