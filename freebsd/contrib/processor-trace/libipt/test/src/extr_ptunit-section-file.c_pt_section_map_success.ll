; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section-file.c_pt_section_map_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section-file.c_pt_section_map_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_section*)* @pt_section_map_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_section_map_success(%struct.pt_section* %0) #0 {
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
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %14 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %21 = call i32 @pt_section_unlock(%struct.pt_section* %20)
  %22 = load i32, i32* @pte_overflow, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %12
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %27 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %29 = call i32 @pt_section_unlock(%struct.pt_section* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %24
  %35 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %36 = call i32 @pt_section_on_map(%struct.pt_section* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %41 = call i32 @pt_section_unmap(%struct.pt_section* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %39, %32, %19, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @pt_section_unlock(%struct.pt_section*) #1

declare dso_local i32 @pt_section_on_map(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unmap(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
