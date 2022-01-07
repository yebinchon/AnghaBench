; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section_file.c_pt_sec_file_memsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section_file.c_pt_sec_file_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sec_file_memsize(%struct.pt_section* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i64*, align 8
  store %struct.pt_section* %0, %struct.pt_section** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %7 = icmp ne %struct.pt_section* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64*, i64** %5, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %8
  %15 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %16 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i64*, i64** %5, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %19, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
