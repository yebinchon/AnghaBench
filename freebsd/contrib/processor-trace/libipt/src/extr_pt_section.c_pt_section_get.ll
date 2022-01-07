; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_overflow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_get(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %6 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %7 = icmp ne %struct.pt_section* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %13 = call i32 @pt_section_lock(%struct.pt_section* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %11
  %19 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %20 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %27 = call i32 @pt_section_unlock(%struct.pt_section* %26)
  %28 = load i32, i32* @pte_overflow, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %18
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %33 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %35 = call i32 @pt_section_unlock(%struct.pt_section* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %25, %16, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @pt_section_lock(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unlock(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
