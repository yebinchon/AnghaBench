; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_map_regs_to_linux_regset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_map_regs_to_linux_regset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.linux_pt_regset = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reg*, i64, i64, %struct.linux_pt_regset*)* @map_regs_to_linux_regset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_regs_to_linux_regset(%struct.reg* %0, i64 %1, i64 %2, %struct.linux_pt_regset* %3) #0 {
  %5 = alloca %struct.reg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.linux_pt_regset*, align 8
  store %struct.reg* %0, %struct.reg** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.linux_pt_regset* %3, %struct.linux_pt_regset** %8, align 8
  %9 = load %struct.reg*, %struct.reg** %5, align 8
  %10 = getelementptr inbounds %struct.reg, %struct.reg* %9, i32 0, i32 23
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %13 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %12, i32 0, i32 26
  store i32 %11, i32* %13, align 8
  %14 = load %struct.reg*, %struct.reg** %5, align 8
  %15 = getelementptr inbounds %struct.reg, %struct.reg* %14, i32 0, i32 22
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %18 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %17, i32 0, i32 25
  store i32 %16, i32* %18, align 4
  %19 = load %struct.reg*, %struct.reg** %5, align 8
  %20 = getelementptr inbounds %struct.reg, %struct.reg* %19, i32 0, i32 21
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %23 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %22, i32 0, i32 24
  store i32 %21, i32* %23, align 8
  %24 = load %struct.reg*, %struct.reg** %5, align 8
  %25 = getelementptr inbounds %struct.reg, %struct.reg* %24, i32 0, i32 20
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %28 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %27, i32 0, i32 23
  store i32 %26, i32* %28, align 4
  %29 = load %struct.reg*, %struct.reg** %5, align 8
  %30 = getelementptr inbounds %struct.reg, %struct.reg* %29, i32 0, i32 19
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %33 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %32, i32 0, i32 22
  store i32 %31, i32* %33, align 8
  %34 = load %struct.reg*, %struct.reg** %5, align 8
  %35 = getelementptr inbounds %struct.reg, %struct.reg* %34, i32 0, i32 18
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %38 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %37, i32 0, i32 21
  store i32 %36, i32* %38, align 4
  %39 = load %struct.reg*, %struct.reg** %5, align 8
  %40 = getelementptr inbounds %struct.reg, %struct.reg* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %43 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %42, i32 0, i32 20
  store i32 %41, i32* %43, align 8
  %44 = load %struct.reg*, %struct.reg** %5, align 8
  %45 = getelementptr inbounds %struct.reg, %struct.reg* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %48 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %47, i32 0, i32 19
  store i32 %46, i32* %48, align 4
  %49 = load %struct.reg*, %struct.reg** %5, align 8
  %50 = getelementptr inbounds %struct.reg, %struct.reg* %49, i32 0, i32 15
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %53 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %52, i32 0, i32 18
  store i32 %51, i32* %53, align 8
  %54 = load %struct.reg*, %struct.reg** %5, align 8
  %55 = getelementptr inbounds %struct.reg, %struct.reg* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %58 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %57, i32 0, i32 17
  store i32 %56, i32* %58, align 4
  %59 = load %struct.reg*, %struct.reg** %5, align 8
  %60 = getelementptr inbounds %struct.reg, %struct.reg* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %63 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %62, i32 0, i32 16
  store i32 %61, i32* %63, align 8
  %64 = load %struct.reg*, %struct.reg** %5, align 8
  %65 = getelementptr inbounds %struct.reg, %struct.reg* %64, i32 0, i32 13
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %68 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 4
  %69 = load %struct.reg*, %struct.reg** %5, align 8
  %70 = getelementptr inbounds %struct.reg, %struct.reg* %69, i32 0, i32 12
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %73 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %72, i32 0, i32 14
  store i32 %71, i32* %73, align 8
  %74 = load %struct.reg*, %struct.reg** %5, align 8
  %75 = getelementptr inbounds %struct.reg, %struct.reg* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %78 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %77, i32 0, i32 13
  store i32 %76, i32* %78, align 4
  %79 = load %struct.reg*, %struct.reg** %5, align 8
  %80 = getelementptr inbounds %struct.reg, %struct.reg* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %83 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %82, i32 0, i32 12
  store i32 %81, i32* %83, align 8
  %84 = load %struct.reg*, %struct.reg** %5, align 8
  %85 = getelementptr inbounds %struct.reg, %struct.reg* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %88 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 4
  %89 = load %struct.reg*, %struct.reg** %5, align 8
  %90 = getelementptr inbounds %struct.reg, %struct.reg* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %93 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %92, i32 0, i32 10
  store i32 %91, i32* %93, align 8
  %94 = load %struct.reg*, %struct.reg** %5, align 8
  %95 = getelementptr inbounds %struct.reg, %struct.reg* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %98 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %97, i32 0, i32 9
  store i32 %96, i32* %98, align 4
  %99 = load %struct.reg*, %struct.reg** %5, align 8
  %100 = getelementptr inbounds %struct.reg, %struct.reg* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %103 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  %104 = load %struct.reg*, %struct.reg** %5, align 8
  %105 = getelementptr inbounds %struct.reg, %struct.reg* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %108 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.reg*, %struct.reg** %5, align 8
  %110 = getelementptr inbounds %struct.reg, %struct.reg* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %113 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %116 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %119 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.reg*, %struct.reg** %5, align 8
  %121 = getelementptr inbounds %struct.reg, %struct.reg* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %124 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.reg*, %struct.reg** %5, align 8
  %126 = getelementptr inbounds %struct.reg, %struct.reg* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %129 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.reg*, %struct.reg** %5, align 8
  %131 = getelementptr inbounds %struct.reg, %struct.reg* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %134 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.reg*, %struct.reg** %5, align 8
  %136 = getelementptr inbounds %struct.reg, %struct.reg* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.linux_pt_regset*, %struct.linux_pt_regset** %8, align 8
  %139 = getelementptr inbounds %struct.linux_pt_regset, %struct.linux_pt_regset* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
