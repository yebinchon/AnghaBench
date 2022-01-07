; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_fill_fpregs_xmm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_fill_fpregs_xmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savefpu = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.envxmm }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.envxmm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fpreg = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savefpu*, %struct.fpreg*)* @fill_fpregs_xmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_fpregs_xmm(%struct.savefpu* %0, %struct.fpreg* %1) #0 {
  %3 = alloca %struct.savefpu*, align 8
  %4 = alloca %struct.fpreg*, align 8
  %5 = alloca %struct.envxmm*, align 8
  %6 = alloca %struct.envxmm*, align 8
  %7 = alloca i32, align 4
  store %struct.savefpu* %0, %struct.savefpu** %3, align 8
  store %struct.fpreg* %1, %struct.fpreg** %4, align 8
  %8 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %9 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %8, i32 0, i32 2
  %10 = bitcast i32* %9 to %struct.envxmm*
  store %struct.envxmm* %10, %struct.envxmm** %5, align 8
  %11 = load %struct.savefpu*, %struct.savefpu** %3, align 8
  %12 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %11, i32 0, i32 2
  store %struct.envxmm* %12, %struct.envxmm** %6, align 8
  %13 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %14 = call i32 @bzero(%struct.fpreg* %13, i32 24)
  %15 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %16 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %19 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %21 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %24 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %26 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %29 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %31 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %34 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %36 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %39 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %41 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %44 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %46 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.envxmm*, %struct.envxmm** %5, align 8
  %49 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %51 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
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
  %59 = load %struct.savefpu*, %struct.savefpu** %3, align 8
  %60 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %69 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bcopy(i32 %67, i32 %74, i32 10)
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
  %84 = load %struct.savefpu*, %struct.savefpu** %3, align 8
  %85 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %93 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bcopy(i32 %91, i32 %98, i32 16)
  br label %100

100:                                              ; preds = %83
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %80

103:                                              ; preds = %80
  ret void
}

declare dso_local i32 @bzero(%struct.fpreg*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
