; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_memsize_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_section.c_pt_section_memsize_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { {}*, i64 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_section*, i64*)* @pt_section_memsize_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_section_memsize_locked(%struct.pt_section* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_section*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (%struct.pt_section*, i64*)*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %11 = icmp ne %struct.pt_section* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %12
  %19 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %20 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.pt_section*, i64*)**
  %22 = load i32 (%struct.pt_section*, i64*)*, i32 (%struct.pt_section*, i64*)** %21, align 8
  store i32 (%struct.pt_section*, i64*)* %22, i32 (%struct.pt_section*, i64*)** %8, align 8
  %23 = load i32 (%struct.pt_section*, i64*)*, i32 (%struct.pt_section*, i64*)** %8, align 8
  %24 = icmp ne i32 (%struct.pt_section*, i64*)* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %27 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @pte_internal, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %25
  %34 = load i64*, i64** %5, align 8
  store i64 0, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %55

35:                                               ; preds = %18
  %36 = load i32 (%struct.pt_section*, i64*)*, i32 (%struct.pt_section*, i64*)** %8, align 8
  %37 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %38 = call i32 %36(%struct.pt_section* %37, i64* %6)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %55

43:                                               ; preds = %35
  %44 = load %struct.pt_section*, %struct.pt_section** %4, align 8
  %45 = call i32 @pt_section_bcache_memsize(%struct.pt_section* %44, i64* %7)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %43
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %51, %52
  %54 = load i64*, i64** %5, align 8
  store i64 %53, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %48, %41, %33, %30, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @pt_section_bcache_memsize(%struct.pt_section*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
