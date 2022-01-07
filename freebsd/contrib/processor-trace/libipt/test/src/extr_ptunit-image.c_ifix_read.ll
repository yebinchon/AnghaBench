; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_ifix_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_ifix_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { %struct.ifix_mapping* }
%struct.ifix_mapping = type { i32, i64, i32* }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_section*, i32*, i32, i64)* @ifix_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifix_read(%struct.pt_section* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ifix_mapping*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pt_section* %0, %struct.pt_section** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
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
  br label %84

21:                                               ; preds = %15
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @pte_nomap, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %84

33:                                               ; preds = %21
  %34 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %35 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %34, i32 0, i32 0
  %36 = load %struct.ifix_mapping*, %struct.ifix_mapping** %35, align 8
  store %struct.ifix_mapping* %36, %struct.ifix_mapping** %10, align 8
  %37 = load %struct.ifix_mapping*, %struct.ifix_mapping** %10, align 8
  %38 = icmp ne %struct.ifix_mapping* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @pte_nomap, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %84

42:                                               ; preds = %33
  %43 = load %struct.ifix_mapping*, %struct.ifix_mapping** %10, align 8
  %44 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.ifix_mapping*, %struct.ifix_mapping** %10, align 8
  %49 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %5, align 4
  br label %84

51:                                               ; preds = %42
  %52 = load %struct.ifix_mapping*, %struct.ifix_mapping** %10, align 8
  %53 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @pte_nomap, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %84

60:                                               ; preds = %51
  %61 = load %struct.ifix_mapping*, %struct.ifix_mapping** %10, align 8
  %62 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.ifix_mapping*, %struct.ifix_mapping** %10, align 8
  %68 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub nsw i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %66, %60
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.ifix_mapping*, %struct.ifix_mapping** %10, align 8
  %77 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @memcpy(i32* %75, i32* %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %74, %57, %47, %39, %30, %18
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
