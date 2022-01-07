; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_default_symfile_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_default_symfile_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.section_offsets*, i32, i32, i32 }
%struct.section_offsets = type { i64* }
%struct.section_addr_info = type { i32, %struct.other_sections* }
%struct.other_sections = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_symfile_offsets(%struct.objfile* %0, %struct.section_addr_info* %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca %struct.section_addr_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.other_sections*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store %struct.section_addr_info* %1, %struct.section_addr_info** %4, align 8
  %7 = load %struct.objfile*, %struct.objfile** %3, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @bfd_count_sections(i32 %9)
  %11 = load %struct.objfile*, %struct.objfile** %3, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.objfile*, %struct.objfile** %3, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 2
  %15 = load %struct.objfile*, %struct.objfile** %3, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %17)
  %19 = call i64 @obstack_alloc(i32* %14, i32 %18)
  %20 = inttoptr i64 %19 to %struct.section_offsets*
  %21 = load %struct.objfile*, %struct.objfile** %3, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 0
  store %struct.section_offsets* %20, %struct.section_offsets** %22, align 8
  %23 = load %struct.objfile*, %struct.objfile** %3, align 8
  %24 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i32 0, i32 0
  %25 = load %struct.section_offsets*, %struct.section_offsets** %24, align 8
  %26 = load %struct.objfile*, %struct.objfile** %3, align 8
  %27 = getelementptr inbounds %struct.objfile, %struct.objfile* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %28)
  %30 = call i32 @memset(%struct.section_offsets* %25, i32 0, i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %74, %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.section_addr_info*, %struct.section_addr_info** %4, align 8
  %34 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.section_addr_info*, %struct.section_addr_info** %4, align 8
  %39 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %38, i32 0, i32 1
  %40 = load %struct.other_sections*, %struct.other_sections** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.other_sections, %struct.other_sections* %40, i64 %42
  %44 = getelementptr inbounds %struct.other_sections, %struct.other_sections* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %37, %31
  %48 = phi i1 [ false, %31 ], [ %46, %37 ]
  br i1 %48, label %49, label %77

49:                                               ; preds = %47
  %50 = load %struct.section_addr_info*, %struct.section_addr_info** %4, align 8
  %51 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %50, i32 0, i32 1
  %52 = load %struct.other_sections*, %struct.other_sections** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.other_sections, %struct.other_sections* %52, i64 %54
  store %struct.other_sections* %55, %struct.other_sections** %6, align 8
  %56 = load %struct.other_sections*, %struct.other_sections** %6, align 8
  %57 = getelementptr inbounds %struct.other_sections, %struct.other_sections* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.other_sections*, %struct.other_sections** %6, align 8
  %63 = getelementptr inbounds %struct.other_sections, %struct.other_sections* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.objfile*, %struct.objfile** %3, align 8
  %66 = getelementptr inbounds %struct.objfile, %struct.objfile* %65, i32 0, i32 0
  %67 = load %struct.section_offsets*, %struct.section_offsets** %66, align 8
  %68 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.other_sections*, %struct.other_sections** %6, align 8
  %71 = getelementptr inbounds %struct.other_sections, %struct.other_sections* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  store i64 %64, i64* %73, align 8
  br label %74

74:                                               ; preds = %61, %60
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %31

77:                                               ; preds = %47
  %78 = load %struct.objfile*, %struct.objfile** %3, align 8
  %79 = call i32 @init_objfile_sect_indices(%struct.objfile* %78)
  ret void
}

declare dso_local i32 @bfd_count_sections(i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @SIZEOF_N_SECTION_OFFSETS(i32) #1

declare dso_local i32 @memset(%struct.section_offsets*, i32, i32) #1

declare dso_local i32 @init_objfile_sect_indices(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
