; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { {}*, i32*, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_unmap(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %7 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %8 = icmp ne %struct.pt_section* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %72

12:                                               ; preds = %1
  %13 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %14 = call i32 @pt_section_lock(%struct.pt_section* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %72

19:                                               ; preds = %12
  %20 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %21 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* @pte_nomap, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %68

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  %30 = sub nsw i64 %29, 1
  store i64 %30, i64* %4, align 8
  %31 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %32 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %37 = call i32 @pt_section_unlock(%struct.pt_section* %36)
  store i32 %37, i32* %2, align 4
  br label %72

38:                                               ; preds = %28
  %39 = load i32, i32* @pte_internal, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  %41 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %42 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.pt_section*)**
  %44 = load i32 (%struct.pt_section*)*, i32 (%struct.pt_section*)** %43, align 8
  %45 = icmp ne i32 (%struct.pt_section*)* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %68

47:                                               ; preds = %38
  %48 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %49 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.pt_section*)**
  %51 = load i32 (%struct.pt_section*)*, i32 (%struct.pt_section*)** %50, align 8
  %52 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %53 = call i32 %51(%struct.pt_section* %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %55 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @pt_bcache_free(i32* %56)
  %58 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %59 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %61 = call i32 @pt_section_unlock(%struct.pt_section* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; preds = %47
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %72

68:                                               ; preds = %46, %27
  %69 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %70 = call i32 @pt_section_unlock(%struct.pt_section* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %66, %64, %35, %17, %9
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @pt_section_lock(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unlock(%struct.pt_section*) #1

declare dso_local i32 @pt_bcache_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
