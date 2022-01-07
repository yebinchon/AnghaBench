; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/powerpc/extr_fbt_isa.c_fbt_invop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/powerpc/extr_fbt_isa.c_fbt_invop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, %struct.TYPE_6__* }
%struct.trapframe = type { i64*, i64 }

@solaris_cpu = common dso_local global %struct.TYPE_5__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@fbt_probetab = common dso_local global %struct.TYPE_6__** null, align 8
@DTRACE_INVOP_JUMP = common dso_local global i64 0, align 8
@FBT_BR_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_invop(i64 %0, %struct.trapframe* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.trapframe* %1, %struct.trapframe** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @solaris_cpu, align 8
  %12 = load i64, i64* @curcpu, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %12
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fbt_probetab, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @FBT_ADDR2NDX(i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  br label %19

19:                                               ; preds = %114, %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %118

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %113

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %46 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 5
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %56 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 6
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 7
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dtrace_probe(i32 %39, i64 %44, i64 %49, i64 %54, i64 %59, i64 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %108

68:                                               ; preds = %28
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @dtrace_probe(i32 %71, i64 %74, i64 %75, i64 0, i64 0, i64 0)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DTRACE_INVOP_JUMP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %68
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %87 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FBT_BR_MASK, align 8
  %92 = and i64 %90, %91
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = and i64 %93, 33554432
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = load i64, i64* %10, align 8
  %98 = or i64 %97, 4227858432
  store i64 %98, i64* %10, align 8
  br label %99

99:                                               ; preds = %96, %82
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %102 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %99, %68
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %33
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %119

113:                                              ; preds = %22
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %9, align 8
  br label %19

118:                                              ; preds = %19
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %108
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @FBT_ADDR2NDX(i64) #1

declare dso_local i32 @dtrace_probe(i32, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
