; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_pt_section_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_pt_section_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { {}* }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_read(%struct.pt_section* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %11 = icmp ne %struct.pt_section* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %34

15:                                               ; preds = %4
  %16 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %17 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.pt_section*, i32*, i32, i32)**
  %19 = load i32 (%struct.pt_section*, i32*, i32, i32)*, i32 (%struct.pt_section*, i32*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.pt_section*, i32*, i32, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @pte_nomap, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %26 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.pt_section*, i32*, i32, i32)**
  %28 = load i32 (%struct.pt_section*, i32*, i32, i32)*, i32 (%struct.pt_section*, i32*, i32, i32)** %27, align 8
  %29 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 %28(%struct.pt_section* %29, i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %24, %21, %12
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
