; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_cpu_errata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_cpu_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_errata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pt_cpu = type { i64, i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pcv_intel = common dso_local global i64 0, align 8
@pte_bad_cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_cpu_errata(%struct.pt_errata* %0, %struct.pt_cpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_errata*, align 8
  %5 = alloca %struct.pt_cpu*, align 8
  store %struct.pt_errata* %0, %struct.pt_errata** %4, align 8
  store %struct.pt_cpu* %1, %struct.pt_cpu** %5, align 8
  %6 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %7 = icmp ne %struct.pt_errata* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.pt_cpu*, %struct.pt_cpu** %5, align 8
  %10 = icmp ne %struct.pt_cpu* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @pte_invalid, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %8
  %15 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %16 = call i32 @memset(%struct.pt_errata* %15, i32 0, i32 36)
  %17 = load %struct.pt_cpu*, %struct.pt_cpu** %5, align 8
  %18 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @pcv_intel, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @pte_bad_cpu, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %14
  %26 = load %struct.pt_cpu*, %struct.pt_cpu** %5, align 8
  %27 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %67 [
    i32 6, label %29
  ]

29:                                               ; preds = %25
  %30 = load %struct.pt_cpu*, %struct.pt_cpu** %5, align 8
  %31 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %66 [
    i32 61, label %33
    i32 71, label %33
    i32 79, label %33
    i32 86, label %33
    i32 78, label %38
    i32 94, label %38
    i32 142, label %38
    i32 158, label %38
    i32 85, label %51
    i32 102, label %51
    i32 125, label %51
    i32 126, label %51
    i32 92, label %58
    i32 95, label %58
    i32 122, label %63
    i32 134, label %63
  ]

33:                                               ; preds = %29, %29, %29, %29
  %34 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %35 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %37 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %70

38:                                               ; preds = %29, %29, %29, %29
  %39 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %40 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %42 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %44 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %43, i32 0, i32 3
  store i32 1, i32* %44, align 4
  %45 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %46 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %45, i32 0, i32 4
  store i32 1, i32* %46, align 4
  %47 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %48 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %47, i32 0, i32 5
  store i32 1, i32* %48, align 4
  %49 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %50 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %49, i32 0, i32 6
  store i32 1, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %70

51:                                               ; preds = %29, %29, %29, %29
  %52 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %53 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %55 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %54, i32 0, i32 5
  store i32 1, i32* %55, align 4
  %56 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %57 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %56, i32 0, i32 3
  store i32 1, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %70

58:                                               ; preds = %29, %29
  %59 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %60 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %59, i32 0, i32 7
  store i32 1, i32* %60, align 4
  %61 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %62 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %61, i32 0, i32 8
  store i32 1, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %29, %29
  %64 = load %struct.pt_errata*, %struct.pt_errata** %4, align 8
  %65 = getelementptr inbounds %struct.pt_errata, %struct.pt_errata* %64, i32 0, i32 8
  store i32 1, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %70

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %25, %66
  %68 = load i32, i32* @pte_bad_cpu, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %63, %58, %51, %38, %33, %22, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.pt_errata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
