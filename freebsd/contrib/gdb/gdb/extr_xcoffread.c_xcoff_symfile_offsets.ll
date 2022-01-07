; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_symfile_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_symfile_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, %struct.section_offsets*, i32, i32, i32, i32, i32, i32 }
%struct.section_offsets = type { i64* }
%struct.section_addr_info = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".rodata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, %struct.section_addr_info*)* @xcoff_symfile_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcoff_symfile_offsets(%struct.objfile* %0, %struct.section_addr_info* %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca %struct.section_addr_info*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store %struct.section_addr_info* %1, %struct.section_addr_info** %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.objfile*, %struct.objfile** %3, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bfd_count_sections(i32 %9)
  %11 = load %struct.objfile*, %struct.objfile** %3, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.objfile*, %struct.objfile** %3, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 7
  %15 = load %struct.objfile*, %struct.objfile** %3, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %17)
  %19 = call i64 @obstack_alloc(i32* %14, i32 %18)
  %20 = inttoptr i64 %19 to %struct.section_offsets*
  %21 = load %struct.objfile*, %struct.objfile** %3, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 1
  store %struct.section_offsets* %20, %struct.section_offsets** %22, align 8
  %23 = load %struct.objfile*, %struct.objfile** %3, align 8
  %24 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %5, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.objfile*, %struct.objfile** %3, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.objfile*, %struct.objfile** %3, align 8
  %37 = getelementptr inbounds %struct.objfile, %struct.objfile* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.objfile*, %struct.objfile** %3, align 8
  %47 = getelementptr inbounds %struct.objfile, %struct.objfile* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.objfile*, %struct.objfile** %3, align 8
  %50 = getelementptr inbounds %struct.objfile, %struct.objfile* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %5, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.objfile*, %struct.objfile** %3, align 8
  %60 = getelementptr inbounds %struct.objfile, %struct.objfile* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.objfile*, %struct.objfile** %3, align 8
  %63 = getelementptr inbounds %struct.objfile, %struct.objfile* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %5, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.objfile*, %struct.objfile** %3, align 8
  %73 = getelementptr inbounds %struct.objfile, %struct.objfile* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %61
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.objfile*, %struct.objfile** %3, align 8
  %78 = getelementptr inbounds %struct.objfile, %struct.objfile* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.objfile*, %struct.objfile** %3, align 8
  %83 = getelementptr inbounds %struct.objfile, %struct.objfile* %82, i32 0, i32 1
  %84 = load %struct.section_offsets*, %struct.section_offsets** %83, align 8
  %85 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %75

93:                                               ; preds = %75
  ret void
}

declare dso_local i32 @bfd_count_sections(i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @SIZEOF_N_SECTION_OFFSETS(i32) #1

declare dso_local %struct.TYPE_3__* @bfd_get_section_by_name(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
