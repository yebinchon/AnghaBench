; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_fill_frame_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_fill_frame_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TF_HASSEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_frame_regs(%struct.trapframe* %0, %struct.reg* %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.reg*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store %struct.reg* %1, %struct.reg** %4, align 8
  %5 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %6 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %5, i32 0, i32 24
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.reg*, %struct.reg** %4, align 8
  %9 = getelementptr inbounds %struct.reg, %struct.reg* %8, i32 0, i32 25
  store i32 %7, i32* %9, align 4
  %10 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %11 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %10, i32 0, i32 23
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.reg*, %struct.reg** %4, align 8
  %14 = getelementptr inbounds %struct.reg, %struct.reg* %13, i32 0, i32 24
  store i32 %12, i32* %14, align 8
  %15 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 22
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.reg*, %struct.reg** %4, align 8
  %19 = getelementptr inbounds %struct.reg, %struct.reg* %18, i32 0, i32 23
  store i32 %17, i32* %19, align 4
  %20 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 21
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.reg*, %struct.reg** %4, align 8
  %24 = getelementptr inbounds %struct.reg, %struct.reg* %23, i32 0, i32 22
  store i32 %22, i32* %24, align 8
  %25 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.reg*, %struct.reg** %4, align 8
  %29 = getelementptr inbounds %struct.reg, %struct.reg* %28, i32 0, i32 21
  store i32 %27, i32* %29, align 4
  %30 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %31 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.reg*, %struct.reg** %4, align 8
  %34 = getelementptr inbounds %struct.reg, %struct.reg* %33, i32 0, i32 20
  store i32 %32, i32* %34, align 8
  %35 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.reg*, %struct.reg** %4, align 8
  %39 = getelementptr inbounds %struct.reg, %struct.reg* %38, i32 0, i32 19
  store i32 %37, i32* %39, align 4
  %40 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.reg*, %struct.reg** %4, align 8
  %44 = getelementptr inbounds %struct.reg, %struct.reg* %43, i32 0, i32 18
  store i32 %42, i32* %44, align 8
  %45 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %46 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.reg*, %struct.reg** %4, align 8
  %49 = getelementptr inbounds %struct.reg, %struct.reg* %48, i32 0, i32 17
  store i32 %47, i32* %49, align 4
  %50 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.reg*, %struct.reg** %4, align 8
  %54 = getelementptr inbounds %struct.reg, %struct.reg* %53, i32 0, i32 16
  store i32 %52, i32* %54, align 8
  %55 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %56 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.reg*, %struct.reg** %4, align 8
  %59 = getelementptr inbounds %struct.reg, %struct.reg* %58, i32 0, i32 15
  store i32 %57, i32* %59, align 4
  %60 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.reg*, %struct.reg** %4, align 8
  %64 = getelementptr inbounds %struct.reg, %struct.reg* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 8
  %65 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.reg*, %struct.reg** %4, align 8
  %69 = getelementptr inbounds %struct.reg, %struct.reg* %68, i32 0, i32 13
  store i32 %67, i32* %69, align 4
  %70 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.reg*, %struct.reg** %4, align 8
  %74 = getelementptr inbounds %struct.reg, %struct.reg* %73, i32 0, i32 12
  store i32 %72, i32* %74, align 8
  %75 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.reg*, %struct.reg** %4, align 8
  %79 = getelementptr inbounds %struct.reg, %struct.reg* %78, i32 0, i32 11
  store i32 %77, i32* %79, align 4
  %80 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.reg*, %struct.reg** %4, align 8
  %84 = getelementptr inbounds %struct.reg, %struct.reg* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %86 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.reg*, %struct.reg** %4, align 8
  %89 = getelementptr inbounds %struct.reg, %struct.reg* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  %90 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %91 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.reg*, %struct.reg** %4, align 8
  %94 = getelementptr inbounds %struct.reg, %struct.reg* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  %95 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %96 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.reg*, %struct.reg** %4, align 8
  %99 = getelementptr inbounds %struct.reg, %struct.reg* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.reg*, %struct.reg** %4, align 8
  %104 = getelementptr inbounds %struct.reg, %struct.reg* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %106 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TF_HASSEGS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %2
  %112 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %113 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.reg*, %struct.reg** %4, align 8
  %116 = getelementptr inbounds %struct.reg, %struct.reg* %115, i32 0, i32 5
  store i64 %114, i64* %116, align 8
  %117 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %118 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.reg*, %struct.reg** %4, align 8
  %121 = getelementptr inbounds %struct.reg, %struct.reg* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  %122 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %123 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.reg*, %struct.reg** %4, align 8
  %126 = getelementptr inbounds %struct.reg, %struct.reg* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  %127 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %128 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.reg*, %struct.reg** %4, align 8
  %131 = getelementptr inbounds %struct.reg, %struct.reg* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  br label %141

132:                                              ; preds = %2
  %133 = load %struct.reg*, %struct.reg** %4, align 8
  %134 = getelementptr inbounds %struct.reg, %struct.reg* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load %struct.reg*, %struct.reg** %4, align 8
  %136 = getelementptr inbounds %struct.reg, %struct.reg* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.reg*, %struct.reg** %4, align 8
  %138 = getelementptr inbounds %struct.reg, %struct.reg* %137, i32 0, i32 3
  store i64 0, i64* %138, align 8
  %139 = load %struct.reg*, %struct.reg** %4, align 8
  %140 = getelementptr inbounds %struct.reg, %struct.reg* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %132, %111
  %142 = load %struct.reg*, %struct.reg** %4, align 8
  %143 = getelementptr inbounds %struct.reg, %struct.reg* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.reg*, %struct.reg** %4, align 8
  %145 = getelementptr inbounds %struct.reg, %struct.reg* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
