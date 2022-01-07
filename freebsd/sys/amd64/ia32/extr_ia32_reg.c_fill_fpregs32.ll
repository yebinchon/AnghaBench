; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_fill_fpregs32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_reg.c_fill_fpregs32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fpreg32 = type { i32 }
%struct.savefpu = type { %struct.TYPE_4__*, %struct.envxmm }
%struct.TYPE_4__ = type { i32 }
%struct.envxmm = type { i32, i32, i32, i32, i32, i32 }
%struct.save87 = type { i32*, %struct.env87 }
%struct.env87 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_fpregs32(%struct.thread* %0, %struct.fpreg32* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fpreg32*, align 8
  %5 = alloca %struct.savefpu*, align 8
  %6 = alloca %struct.save87*, align 8
  %7 = alloca %struct.env87*, align 8
  %8 = alloca %struct.envxmm*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fpreg32* %1, %struct.fpreg32** %4, align 8
  %10 = load %struct.fpreg32*, %struct.fpreg32** %4, align 8
  %11 = call i32 @bzero(%struct.fpreg32* %10, i32 4)
  %12 = load %struct.fpreg32*, %struct.fpreg32** %4, align 8
  %13 = bitcast %struct.fpreg32* %12 to %struct.save87*
  store %struct.save87* %13, %struct.save87** %6, align 8
  %14 = load %struct.save87*, %struct.save87** %6, align 8
  %15 = getelementptr inbounds %struct.save87, %struct.save87* %14, i32 0, i32 1
  store %struct.env87* %15, %struct.env87** %7, align 8
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = call i32 @fpugetregs(%struct.thread* %16)
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = call %struct.savefpu* @get_pcb_user_save_td(%struct.thread* %18)
  store %struct.savefpu* %19, %struct.savefpu** %5, align 8
  %20 = load %struct.savefpu*, %struct.savefpu** %5, align 8
  %21 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %20, i32 0, i32 1
  store %struct.envxmm* %21, %struct.envxmm** %8, align 8
  %22 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %23 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.env87*, %struct.env87** %7, align 8
  %26 = getelementptr inbounds %struct.env87, %struct.env87* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %28 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.env87*, %struct.env87** %7, align 8
  %31 = getelementptr inbounds %struct.env87, %struct.env87* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %33 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.env87*, %struct.env87** %7, align 8
  %36 = getelementptr inbounds %struct.env87, %struct.env87* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.thread*, %struct.thread** %3, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.env87*, %struct.env87** %7, align 8
  %43 = getelementptr inbounds %struct.env87, %struct.env87* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %45 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.env87*, %struct.env87** %7, align 8
  %48 = getelementptr inbounds %struct.env87, %struct.env87* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %50 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.env87*, %struct.env87** %7, align 8
  %53 = getelementptr inbounds %struct.env87, %struct.env87* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.thread*, %struct.thread** %3, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.env87*, %struct.env87** %7, align 8
  %60 = getelementptr inbounds %struct.env87, %struct.env87* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.env87*, %struct.env87** %7, align 8
  %62 = getelementptr inbounds %struct.env87, %struct.env87* %61, i32 0, i32 0
  store i32 65535, i32* %62, align 4
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %98, %2
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %101

66:                                               ; preds = %63
  %67 = load %struct.savefpu*, %struct.savefpu** %5, align 8
  %68 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.save87*, %struct.save87** %6, align 8
  %76 = getelementptr inbounds %struct.save87, %struct.save87* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load %struct.envxmm*, %struct.envxmm** %8, align 8
  %82 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 1, %84
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %66
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %89, 2
  %91 = shl i32 3, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.env87*, %struct.env87** %7, align 8
  %94 = getelementptr inbounds %struct.env87, %struct.env87* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %88, %66
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %63

101:                                              ; preds = %63
  ret i32 0
}

declare dso_local i32 @bzero(%struct.fpreg32*, i32) #1

declare dso_local i32 @fpugetregs(%struct.thread*) #1

declare dso_local %struct.savefpu* @get_pcb_user_save_td(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
