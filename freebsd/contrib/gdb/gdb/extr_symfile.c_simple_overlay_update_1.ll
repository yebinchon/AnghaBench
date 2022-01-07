; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_simple_overlay_update_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_simple_overlay_update_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj_section = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@cache_novlys = common dso_local global i32 0, align 4
@cache_ovly_table = common dso_local global i64** null, align 8
@VMA = common dso_local global i64 0, align 8
@LMA = common dso_local global i64 0, align 8
@cache_ovly_table_base = common dso_local global i64 0, align 8
@TARGET_LONG_BYTES = common dso_local global i32 0, align 4
@MAPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obj_section*)* @simple_overlay_update_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_overlay_update_1(%struct.obj_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obj_section*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.obj_section* %0, %struct.obj_section** %3, align 8
  %8 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %9 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %14 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %17 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @bfd_get_section_size(i32* %18)
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %102, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @cache_novlys, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = load i64**, i64*** @cache_ovly_table, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64*, i64** %25, i64 %27
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @VMA, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @bfd_section_vma(i32* %33, i32* %34)
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %101

37:                                               ; preds = %24
  %38 = load i64**, i64*** @cache_ovly_table, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64*, i64** %38, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @LMA, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @bfd_section_lma(i32* %46, i32* %47)
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %37
  %51 = load i64, i64* @cache_ovly_table_base, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @TARGET_LONG_BYTES, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  %57 = load i64**, i64*** @cache_ovly_table, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64*, i64** %57, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = bitcast i64* %61 to i32*
  %63 = call i32 @read_target_long_array(i64 %56, i32* %62, i32 4)
  %64 = load i64**, i64*** @cache_ovly_table, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64*, i64** %64, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @VMA, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @bfd_section_vma(i32* %72, i32* %73)
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %50
  %77 = load i64**, i64*** @cache_ovly_table, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64*, i64** %77, i64 %79
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @LMA, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @bfd_section_lma(i32* %85, i32* %86)
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %76
  %90 = load i64**, i64*** @cache_ovly_table, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64*, i64** %90, i64 %92
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @MAPPED, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %99 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  store i32 1, i32* %2, align 4
  br label %106

100:                                              ; preds = %76, %50
  store i32 0, i32* %2, align 4
  br label %106

101:                                              ; preds = %37, %24
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %20

105:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %100, %89
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @bfd_get_section_size(i32*) #1

declare dso_local i64 @bfd_section_vma(i32*, i32*) #1

declare dso_local i64 @bfd_section_lma(i32*, i32*) #1

declare dso_local i32 @read_target_long_array(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
