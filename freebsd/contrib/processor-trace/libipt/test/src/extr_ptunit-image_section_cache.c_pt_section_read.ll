; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i32* }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_read(%struct.pt_section* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pt_section* %0, %struct.pt_section** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %14 = icmp ne %struct.pt_section* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %60

21:                                               ; preds = %15
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %11, align 8
  store i64 8, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @pte_nomap, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %60

32:                                               ; preds = %21
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @pte_invalid, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %60

45:                                               ; preds = %38
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %48 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %52, %53
  %55 = call i32 @memcpy(i32* %46, i32* %51, i64 %54)
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %45, %42, %29, %18
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
