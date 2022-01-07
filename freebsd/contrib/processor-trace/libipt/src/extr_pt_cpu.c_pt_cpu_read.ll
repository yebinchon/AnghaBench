; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_cpu.c_pt_cpu_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_cpu.c_pt_cpu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_cpu = type { i32, i32, i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_cpu_read(%struct.pt_cpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_cpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_cpu* %0, %struct.pt_cpu** %3, align 8
  %6 = load %struct.pt_cpu*, %struct.pt_cpu** %3, align 8
  %7 = icmp ne %struct.pt_cpu* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_invalid, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %56

11:                                               ; preds = %1
  %12 = call i32 (...) @cpu_vendor()
  %13 = load %struct.pt_cpu*, %struct.pt_cpu** %3, align 8
  %14 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = call i32 (...) @cpu_info()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 15
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pt_cpu*, %struct.pt_cpu** %3, align 8
  %20 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 20
  %26 = and i32 %25, 15
  %27 = load %struct.pt_cpu*, %struct.pt_cpu** %3, align 8
  %28 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23, %11
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 15
  %35 = load %struct.pt_cpu*, %struct.pt_cpu** %3, align 8
  %36 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 15
  br i1 %41, label %42, label %50

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 12
  %45 = and i32 %44, 240
  %46 = load %struct.pt_cpu*, %struct.pt_cpu** %3, align 8
  %47 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 0
  %53 = and i32 %52, 15
  %54 = load %struct.pt_cpu*, %struct.pt_cpu** %3, align 8
  %55 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %8
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @cpu_vendor(...) #1

declare dso_local i32 @cpu_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
