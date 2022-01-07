; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_isa.c_dtrace_getreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_isa.c_dtrace_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pcb* }
%struct.pcb = type { i32 }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@REG_RDX = common dso_local global i32 0, align 4
@SS = common dso_local global i32 0, align 4
@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getreg(%struct.trapframe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcb*, align 8
  %7 = alloca [19 x i32], align 16
  store %struct.trapframe* %0, %struct.trapframe** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 0
  store i32 139, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 140, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 141, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 143, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 134, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 131, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 137, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 130, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 136, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* @REG_RDX, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 135, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 138, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 128, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 142, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 132, i32* %23, align 4
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 144, i32* %24, align 4
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 133, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 130, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 129, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %33 = call i32 @DTRACE_CPUFLAG_SET(i32 %32)
  store i32 0, i32* %3, align 4
  br label %126

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp uge i64 %36, 19
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %40 = call i32 @DTRACE_CPUFLAG_SET(i32 %39)
  store i32 0, i32* %3, align 4
  br label %126

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [19 x i32], [19 x i32]* %7, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %123 [
    i32 139, label %47
    i32 140, label %59
    i32 141, label %63
    i32 143, label %67
    i32 134, label %71
    i32 131, label %75
    i32 137, label %79
    i32 130, label %83
    i32 136, label %87
    i32 135, label %91
    i32 138, label %95
    i32 128, label %99
    i32 142, label %103
    i32 132, label %107
    i32 144, label %111
    i32 133, label %115
    i32 129, label %119
  ]

47:                                               ; preds = %41
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.pcb*, %struct.pcb** %49, align 8
  store %struct.pcb* %50, %struct.pcb** %6, align 8
  %51 = icmp eq %struct.pcb* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %54 = call i32 @DTRACE_CPUFLAG_SET(i32 %53)
  store i32 0, i32* %3, align 4
  br label %126

55:                                               ; preds = %47
  %56 = load %struct.pcb*, %struct.pcb** %6, align 8
  %57 = getelementptr inbounds %struct.pcb, %struct.pcb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %3, align 4
  br label %126

59:                                               ; preds = %41
  %60 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 16
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %126

63:                                               ; preds = %41
  %64 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 15
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  br label %126

67:                                               ; preds = %41
  %68 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %69 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %68, i32 0, i32 14
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %3, align 4
  br label %126

71:                                               ; preds = %41
  %72 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %73 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %72, i32 0, i32 13
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %3, align 4
  br label %126

75:                                               ; preds = %41
  %76 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %77 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %3, align 4
  br label %126

79:                                               ; preds = %41
  %80 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %3, align 4
  br label %126

83:                                               ; preds = %41
  %84 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %85 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %3, align 4
  br label %126

87:                                               ; preds = %41
  %88 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %3, align 4
  br label %126

91:                                               ; preds = %41
  %92 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %93 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %3, align 4
  br label %126

95:                                               ; preds = %41
  %96 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %97 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %3, align 4
  br label %126

99:                                               ; preds = %41
  %100 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %3, align 4
  br label %126

103:                                              ; preds = %41
  %104 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %105 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %3, align 4
  br label %126

107:                                              ; preds = %41
  %108 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %109 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %3, align 4
  br label %126

111:                                              ; preds = %41
  %112 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %113 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %3, align 4
  br label %126

115:                                              ; preds = %41
  %116 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %117 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %3, align 4
  br label %126

119:                                              ; preds = %41
  %120 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %121 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %3, align 4
  br label %126

123:                                              ; preds = %41
  %124 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %125 = call i32 @DTRACE_CPUFLAG_SET(i32 %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %52, %38, %31
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
