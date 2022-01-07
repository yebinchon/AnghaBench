; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_set_regs32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_set_regs32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@TF_HASSEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_regs32(%struct.thread* %0, %struct.reg32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.reg32*, align 8
  %6 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.reg32* %1, %struct.reg32** %5, align 8
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  store %struct.trapframe* %9, %struct.trapframe** %6, align 8
  %10 = load %struct.reg32*, %struct.reg32** %5, align 8
  %11 = getelementptr inbounds %struct.reg32, %struct.reg32* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %14 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @EFL_SECURE(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.reg32*, %struct.reg32** %5, align 8
  %20 = getelementptr inbounds %struct.reg32, %struct.reg32* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CS_SECURE(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %115

26:                                               ; preds = %18
  %27 = load %struct.reg32*, %struct.reg32** %5, align 8
  %28 = getelementptr inbounds %struct.reg32, %struct.reg32* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %31 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %30, i32 0, i32 16
  store i32 %29, i32* %31, align 4
  %32 = load %struct.reg32*, %struct.reg32** %5, align 8
  %33 = getelementptr inbounds %struct.reg32, %struct.reg32* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 4
  %37 = load %struct.reg32*, %struct.reg32** %5, align 8
  %38 = getelementptr inbounds %struct.reg32, %struct.reg32* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 14
  store i32 %39, i32* %41, align 4
  %42 = load %struct.reg32*, %struct.reg32** %5, align 8
  %43 = getelementptr inbounds %struct.reg32, %struct.reg32* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %46 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %45, i32 0, i32 13
  store i32 %44, i32* %46, align 4
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PCB_FULL_IRET, align 4
  %51 = call i32 @set_pcb_flags(i32 %49, i32 %50)
  %52 = load i32, i32* @TF_HASSEGS, align 4
  %53 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 4
  %55 = load %struct.reg32*, %struct.reg32** %5, align 8
  %56 = getelementptr inbounds %struct.reg32, %struct.reg32* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %59 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load %struct.reg32*, %struct.reg32** %5, align 8
  %61 = getelementptr inbounds %struct.reg32, %struct.reg32* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %64 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 4
  %65 = load %struct.reg32*, %struct.reg32** %5, align 8
  %66 = getelementptr inbounds %struct.reg32, %struct.reg32* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %69 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  %70 = load %struct.reg32*, %struct.reg32** %5, align 8
  %71 = getelementptr inbounds %struct.reg32, %struct.reg32* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %74 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 4
  %75 = load %struct.reg32*, %struct.reg32** %5, align 8
  %76 = getelementptr inbounds %struct.reg32, %struct.reg32* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.reg32*, %struct.reg32** %5, align 8
  %81 = getelementptr inbounds %struct.reg32, %struct.reg32* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %84 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.reg32*, %struct.reg32** %5, align 8
  %86 = getelementptr inbounds %struct.reg32, %struct.reg32* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.reg32*, %struct.reg32** %5, align 8
  %91 = getelementptr inbounds %struct.reg32, %struct.reg32* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %94 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.reg32*, %struct.reg32** %5, align 8
  %96 = getelementptr inbounds %struct.reg32, %struct.reg32* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %99 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.reg32*, %struct.reg32** %5, align 8
  %101 = getelementptr inbounds %struct.reg32, %struct.reg32* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %104 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.reg32*, %struct.reg32** %5, align 8
  %106 = getelementptr inbounds %struct.reg32, %struct.reg32* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %109 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.reg32*, %struct.reg32** %5, align 8
  %111 = getelementptr inbounds %struct.reg32, %struct.reg32* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %114 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %26, %24
  %116 = load i32, i32* %3, align 4
  ret i32 %116
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
