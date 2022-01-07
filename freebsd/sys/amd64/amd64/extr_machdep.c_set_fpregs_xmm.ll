; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_set_fpregs_xmm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_set_fpregs_xmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpreg = type { i32*, i32*, i32 }
%struct.savefpu = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.envxmm }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.envxmm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@cpu_mxcsr_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpreg*, %struct.savefpu*)* @set_fpregs_xmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fpregs_xmm(%struct.fpreg* %0, %struct.savefpu* %1) #0 {
  %3 = alloca %struct.fpreg*, align 8
  %4 = alloca %struct.savefpu*, align 8
  %5 = alloca %struct.envxmm*, align 8
  %6 = alloca %struct.envxmm*, align 8
  %7 = alloca i32, align 4
  store %struct.fpreg* %0, %struct.fpreg** %3, align 8
  store %struct.savefpu* %1, %struct.savefpu** %4, align 8
  %8 = load %struct.savefpu*, %struct.savefpu** %4, align 8
  %9 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %8, i32 0, i32 2
  store %struct.envxmm* %9, %struct.envxmm** %5, align 8
  %10 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %11 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %10, i32 0, i32 2
  %12 = bitcast i32* %11 to %struct.envxmm*
  store %struct.envxmm* %12, %struct.envxmm** %6, align 8
  %13 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %14 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %17 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %19 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %22 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %24 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %27 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %29 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %32 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %34 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %37 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %39 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %42 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %44 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %47 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %49 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @cpu_mxcsr_mask, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %54 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %76, %2
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %60 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.savefpu*, %struct.savefpu** %4, align 8
  %67 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bcopy(i32 %65, i32 %74, i32 10)
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %55

79:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %100, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %103

83:                                               ; preds = %80
  %84 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %85 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.savefpu*, %struct.savefpu** %4, align 8
  %92 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bcopy(i32 %90, i32 %98, i32 16)
  br label %100

100:                                              ; preds = %83
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %80

103:                                              ; preds = %80
  ret void
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
