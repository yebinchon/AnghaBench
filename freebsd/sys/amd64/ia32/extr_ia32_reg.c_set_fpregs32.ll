; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_set_fpregs32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_set_fpregs32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fpreg32 = type { i32 }
%struct.save87 = type { i32*, %struct.env87 }
%struct.env87 = type { i32, i32, i32, i32, i32, i32 }
%struct.savefpu = type { %struct.TYPE_2__*, %struct.envxmm }
%struct.TYPE_2__ = type { i32 }
%struct.envxmm = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_fpregs32(%struct.thread* %0, %struct.fpreg32* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fpreg32*, align 8
  %5 = alloca %struct.save87*, align 8
  %6 = alloca %struct.env87*, align 8
  %7 = alloca %struct.savefpu*, align 8
  %8 = alloca %struct.envxmm*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fpreg32* %1, %struct.fpreg32** %4, align 8
  %10 = load %struct.fpreg32*, %struct.fpreg32** %4, align 8
  %11 = bitcast %struct.fpreg32* %10 to %struct.save87*
  store %struct.save87* %11, %struct.save87** %5, align 8
  %12 = load %struct.save87*, %struct.save87** %5, align 8
  %13 = getelementptr inbounds %struct.save87, %struct.save87* %12, i32 0, i32 1
  store %struct.env87* %13, %struct.env87** %6, align 8
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = call %struct.savefpu* @get_pcb_user_save_td(%struct.thread* %14)
  store %struct.savefpu* %15, %struct.savefpu** %7, align 8
  %16 = load %struct.savefpu*, %struct.savefpu** %7, align 8
  %17 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %16, i32 0, i32 1
  store %struct.envxmm* %17, %struct.envxmm** %8, align 8
  %18 = load %struct.env87*, %struct.env87** %6, align 8
  %19 = getelementptr inbounds %struct.env87, %struct.env87* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %22 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.env87*, %struct.env87** %6, align 8
  %24 = getelementptr inbounds %struct.env87, %struct.env87* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %27 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.env87*, %struct.env87** %6, align 8
  %29 = getelementptr inbounds %struct.env87, %struct.env87* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %32 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.env87*, %struct.env87** %6, align 8
  %34 = getelementptr inbounds %struct.env87, %struct.env87* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %37 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.env87*, %struct.env87** %6, align 8
  %39 = getelementptr inbounds %struct.env87, %struct.env87* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %42 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %44 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %82, %2
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %85

48:                                               ; preds = %45
  %49 = load %struct.save87*, %struct.save87** %5, align 8
  %50 = getelementptr inbounds %struct.save87, %struct.save87* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.savefpu*, %struct.savefpu** %7, align 8
  %57 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load %struct.env87*, %struct.env87** %6, align 8
  %64 = getelementptr inbounds %struct.env87, %struct.env87* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 2
  %68 = shl i32 3, %67
  %69 = and i32 %65, %68
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %70, 2
  %72 = shl i32 3, %71
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %48
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 1, %75
  %77 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %78 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %48
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %45

85:                                               ; preds = %45
  store i32 8, i32* %9, align 4
  br label %86

86:                                               ; preds = %98, %85
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 16
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.savefpu*, %struct.savefpu** %7, align 8
  %91 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @bzero(i32* %96, i32 4)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %86

101:                                              ; preds = %86
  %102 = load %struct.thread*, %struct.thread** %3, align 8
  %103 = call i32 @fpuuserinited(%struct.thread* %102)
  ret i32 0
}

declare dso_local %struct.savefpu* @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @fpuuserinited(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
