; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_section_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_section_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.so_list*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i32 }
%struct.objfile = type { i32, i32 }
%struct.section_offsets = type { i8** }
%struct.TYPE_5__ = type { i8* }

@so_list_head = common dso_local global %struct.so_list* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"$PRIVATE$\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to find $PRIVATE$ in shared library!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @som_solib_section_offsets(%struct.objfile* %0, %struct.section_offsets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.section_offsets*, align 8
  %6 = alloca %struct.so_list*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store %struct.section_offsets* %1, %struct.section_offsets** %5, align 8
  %8 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %8, %struct.so_list** %6, align 8
  br label %9

9:                                                ; preds = %99, %2
  %10 = load %struct.so_list*, %struct.so_list** %6, align 8
  %11 = icmp ne %struct.so_list* %10, null
  br i1 %11, label %12, label %103

12:                                               ; preds = %9
  %13 = load %struct.objfile*, %struct.objfile** %4, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.so_list*, %struct.so_list** %6, align 8
  %17 = getelementptr inbounds %struct.so_list, %struct.so_list* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @strstr(i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %99

22:                                               ; preds = %12
  %23 = load %struct.so_list*, %struct.so_list** %6, align 8
  %24 = getelementptr inbounds %struct.so_list, %struct.so_list* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.so_list*, %struct.so_list** %6, align 8
  %28 = getelementptr inbounds %struct.so_list, %struct.so_list* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %26 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.section_offsets*, %struct.section_offsets** %5, align 8
  %36 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct.objfile*, %struct.objfile** %4, align 8
  %39 = call i64 @SECT_OFF_TEXT(%struct.objfile* %38)
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %34, i8** %40, align 8
  %41 = load %struct.section_offsets*, %struct.section_offsets** %5, align 8
  %42 = load %struct.objfile*, %struct.objfile** %4, align 8
  %43 = call i64 @SECT_OFF_TEXT(%struct.objfile* %42)
  %44 = call i8* @ANOFFSET(%struct.section_offsets* %41, i64 %43)
  %45 = load %struct.section_offsets*, %struct.section_offsets** %5, align 8
  %46 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = load %struct.objfile*, %struct.objfile** %4, align 8
  %49 = call i64 @SECT_OFF_RODATA(%struct.objfile* %48)
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %44, i8** %50, align 8
  %51 = load %struct.objfile*, %struct.objfile** %4, align 8
  %52 = getelementptr inbounds %struct.objfile, %struct.objfile* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_5__* @bfd_get_section_by_name(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %7, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %22
  %58 = call i32 @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.section_offsets*, %struct.section_offsets** %5, align 8
  %60 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = load %struct.objfile*, %struct.objfile** %4, align 8
  %63 = call i64 @SECT_OFF_DATA(%struct.objfile* %62)
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* null, i8** %64, align 8
  %65 = load %struct.section_offsets*, %struct.section_offsets** %5, align 8
  %66 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load %struct.objfile*, %struct.objfile** %4, align 8
  %69 = call i64 @SECT_OFF_BSS(%struct.objfile* %68)
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* null, i8** %70, align 8
  store i32 1, i32* %3, align 4
  br label %104

71:                                               ; preds = %22
  %72 = load %struct.so_list*, %struct.so_list** %6, align 8
  %73 = getelementptr inbounds %struct.so_list, %struct.so_list* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = ptrtoint i8* %75 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.section_offsets*, %struct.section_offsets** %5, align 8
  %84 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = load %struct.objfile*, %struct.objfile** %4, align 8
  %87 = call i64 @SECT_OFF_DATA(%struct.objfile* %86)
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  %89 = load %struct.section_offsets*, %struct.section_offsets** %5, align 8
  %90 = load %struct.objfile*, %struct.objfile** %4, align 8
  %91 = call i64 @SECT_OFF_DATA(%struct.objfile* %90)
  %92 = call i8* @ANOFFSET(%struct.section_offsets* %89, i64 %91)
  %93 = load %struct.section_offsets*, %struct.section_offsets** %5, align 8
  %94 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = load %struct.objfile*, %struct.objfile** %4, align 8
  %97 = call i64 @SECT_OFF_BSS(%struct.objfile* %96)
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  store i8* %92, i8** %98, align 8
  store i32 1, i32* %3, align 4
  br label %104

99:                                               ; preds = %12
  %100 = load %struct.so_list*, %struct.so_list** %6, align 8
  %101 = getelementptr inbounds %struct.so_list, %struct.so_list* %100, i32 0, i32 0
  %102 = load %struct.so_list*, %struct.so_list** %101, align 8
  store %struct.so_list* %102, %struct.so_list** %6, align 8
  br label %9

103:                                              ; preds = %9
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %71, %57
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @strstr(i32, i32) #1

declare dso_local i64 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i8* @ANOFFSET(%struct.section_offsets*, i64) #1

declare dso_local i64 @SECT_OFF_RODATA(%struct.objfile*) #1

declare dso_local %struct.TYPE_5__* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @SECT_OFF_DATA(%struct.objfile*) #1

declare dso_local i64 @SECT_OFF_BSS(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
