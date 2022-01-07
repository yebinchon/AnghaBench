; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somread.c_som_symfile_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somread.c_som_symfile_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32, i32, i32, %struct.section_offsets*, i64, i32, i32 }
%struct.section_offsets = type { i32* }
%struct.section_addr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, %struct.section_addr_info*)* @som_symfile_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @som_symfile_offsets(%struct.objfile* %0, %struct.section_addr_info* %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca %struct.section_addr_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store %struct.section_addr_info* %1, %struct.section_addr_info** %4, align 8
  %7 = load %struct.objfile*, %struct.objfile** %3, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bfd_count_sections(i32 %9)
  %11 = load %struct.objfile*, %struct.objfile** %3, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.objfile*, %struct.objfile** %3, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 6
  %15 = load %struct.objfile*, %struct.objfile** %3, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %17)
  %19 = call i64 @obstack_alloc(i32* %14, i32 %18)
  %20 = inttoptr i64 %19 to %struct.section_offsets*
  %21 = load %struct.objfile*, %struct.objfile** %3, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 4
  store %struct.section_offsets* %20, %struct.section_offsets** %22, align 8
  %23 = load %struct.objfile*, %struct.objfile** %3, align 8
  %24 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.objfile*, %struct.objfile** %3, align 8
  %26 = getelementptr inbounds %struct.objfile, %struct.objfile* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.objfile*, %struct.objfile** %3, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 2
  store i32 2, i32* %28, align 8
  %29 = load %struct.objfile*, %struct.objfile** %3, align 8
  %30 = getelementptr inbounds %struct.objfile, %struct.objfile* %29, i32 0, i32 3
  store i32 3, i32* %30, align 4
  %31 = load %struct.objfile*, %struct.objfile** %3, align 8
  %32 = load %struct.objfile*, %struct.objfile** %3, align 8
  %33 = getelementptr inbounds %struct.objfile, %struct.objfile* %32, i32 0, i32 4
  %34 = load %struct.section_offsets*, %struct.section_offsets** %33, align 8
  %35 = call i32 @som_solib_section_offsets(%struct.objfile* %31, %struct.section_offsets* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %101, label %37

37:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %69, %37
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.objfile*, %struct.objfile** %3, align 8
  %41 = getelementptr inbounds %struct.objfile, %struct.objfile* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.section_addr_info*, %struct.section_addr_info** %4, align 8
  %46 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %44, %38
  %55 = phi i1 [ false, %38 ], [ %53, %44 ]
  br i1 %55, label %56, label %72

56:                                               ; preds = %54
  %57 = load %struct.section_addr_info*, %struct.section_addr_info** %4, align 8
  %58 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @strcmp(i64 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %72

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %38

72:                                               ; preds = %67, %54
  %73 = load %struct.section_addr_info*, %struct.section_addr_info** %4, align 8
  %74 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %97, %72
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.objfile*, %struct.objfile** %3, align 8
  %84 = getelementptr inbounds %struct.objfile, %struct.objfile* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.objfile*, %struct.objfile** %3, align 8
  %90 = getelementptr inbounds %struct.objfile, %struct.objfile* %89, i32 0, i32 4
  %91 = load %struct.section_offsets*, %struct.section_offsets** %90, align 8
  %92 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %88, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %81

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %2
  ret void
}

declare dso_local i32 @bfd_count_sections(i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @SIZEOF_N_SECTION_OFFSETS(i32) #1

declare dso_local i32 @som_solib_section_offsets(%struct.objfile*, %struct.section_offsets*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
