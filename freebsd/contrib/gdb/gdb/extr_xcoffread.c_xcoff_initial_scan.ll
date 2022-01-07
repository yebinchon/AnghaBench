; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_initial_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_initial_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i8*, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.cleanup = type { i32 }
%struct.coff_symfile_info = type { i8*, i32, i64, i64, i64 }
%struct.bfd_section = type { i32 }
%struct.TYPE_6__ = type { i32 }

@symfile_bfd = common dso_local global i32* null, align 8
@find_linenos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".debug\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Error reading .debug section of `%s': %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Error reading symbols from %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"reading symbol table\00", align 1
@really_free_pendings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, i32)* @xcoff_initial_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcoff_initial_scan(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.coff_symfile_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bfd_section*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.objfile*, %struct.objfile** %3, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.coff_symfile_info*
  store %struct.coff_symfile_info* %20, %struct.coff_symfile_info** %11, align 8
  %21 = load %struct.objfile*, %struct.objfile** %3, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  store i32* %23, i32** @symfile_bfd, align 8
  %24 = load %struct.objfile*, %struct.objfile** %3, align 8
  %25 = getelementptr inbounds %struct.objfile, %struct.objfile* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @bfd_get_symcount(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @obj_sym_filepos(i32* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.TYPE_6__* @coff_data(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %31, %38
  store i64 %39, i64* %10, align 8
  %40 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %11, align 8
  %41 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %11, align 8
  %43 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @find_linenos, align 4
  %46 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %11, align 8
  %47 = call i32 @bfd_map_over_sections(i32* %44, i32 %45, %struct.coff_symfile_info* %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %2
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.objfile*, %struct.objfile** %3, align 8
  %54 = call i32 @init_stringtab(i32* %51, i64 %52, %struct.objfile* %53)
  store i8* null, i8** %16, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call %struct.bfd_section* @bfd_get_section_by_name(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.bfd_section* %56, %struct.bfd_section** %14, align 8
  %57 = load %struct.bfd_section*, %struct.bfd_section** %14, align 8
  %58 = icmp ne %struct.bfd_section* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %50
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.bfd_section*, %struct.bfd_section** %14, align 8
  %62 = call i32 @bfd_section_size(i32* %60, %struct.bfd_section* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.objfile*, %struct.objfile** %3, align 8
  %67 = getelementptr inbounds %struct.objfile, %struct.objfile* %66, i32 0, i32 4
  %68 = load i32, i32* %15, align 4
  %69 = call i64 @obstack_alloc(i32* %67, i32 %68)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %16, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.bfd_section*, %struct.bfd_section** %14, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @bfd_get_section_contents(i32* %71, %struct.bfd_section* %72, i8* %73, i64 0, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %65
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 (...) @bfd_get_error()
  %80 = call i8* @bfd_errmsg(i32 %79)
  %81 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %78, i8* %80)
  br label %82

82:                                               ; preds = %77, %65
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %50
  %85 = load i8*, i8** %16, align 8
  %86 = load %struct.objfile*, %struct.objfile** %3, align 8
  %87 = getelementptr inbounds %struct.objfile, %struct.objfile* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.coff_symfile_info*
  %90 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %89, i32 0, i32 0
  store i8* %85, i8** %90, align 8
  br label %91

91:                                               ; preds = %84, %2
  %92 = load i32*, i32** %5, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i32, i32* @SEEK_SET, align 4
  %95 = call i32 @bfd_seek(i32* %92, i64 %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 (...) @bfd_get_error()
  %101 = call i8* @bfd_errmsg(i32 %100)
  %102 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %99, i8* %101)
  br label %103

103:                                              ; preds = %98, %91
  %104 = load i32*, i32** %5, align 8
  %105 = call %struct.TYPE_6__* @coff_data(i32* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %107, %108
  store i32 %109, i32* %13, align 4
  %110 = load %struct.objfile*, %struct.objfile** %3, align 8
  %111 = getelementptr inbounds %struct.objfile, %struct.objfile* %110, i32 0, i32 4
  %112 = load i32, i32* %13, align 4
  %113 = call i64 @obstack_alloc(i32* %111, i32 %112)
  %114 = load %struct.objfile*, %struct.objfile** %3, align 8
  %115 = getelementptr inbounds %struct.objfile, %struct.objfile* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.coff_symfile_info*
  %118 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %117, i32 0, i32 2
  store i64 %113, i64* %118, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.objfile*, %struct.objfile** %3, align 8
  %121 = getelementptr inbounds %struct.objfile, %struct.objfile* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.coff_symfile_info*
  %124 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %123, i32 0, i32 1
  store i32 %119, i32* %124, align 8
  %125 = load %struct.objfile*, %struct.objfile** %3, align 8
  %126 = getelementptr inbounds %struct.objfile, %struct.objfile* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.coff_symfile_info*
  %129 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @bfd_bread(i64 %130, i32 %131, i32* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %103
  %138 = call i32 @perror_with_name(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %103
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %139
  %143 = load %struct.objfile*, %struct.objfile** %3, align 8
  %144 = getelementptr inbounds %struct.objfile, %struct.objfile* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load %struct.objfile*, %struct.objfile** %3, align 8
  %150 = getelementptr inbounds %struct.objfile, %struct.objfile* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %148, %139
  %155 = load %struct.objfile*, %struct.objfile** %3, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @init_psymbol_list(%struct.objfile* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %148, %142
  %159 = call i32 (...) @free_pending_blocks()
  %160 = load i32, i32* @really_free_pendings, align 4
  %161 = call %struct.cleanup* @make_cleanup(i32 %160, i32 0)
  store %struct.cleanup* %161, %struct.cleanup** %7, align 8
  %162 = call i32 (...) @init_minimal_symbol_collection()
  %163 = call i32 (...) @make_cleanup_discard_minimal_symbols()
  %164 = load %struct.objfile*, %struct.objfile** %3, align 8
  %165 = call i32 @scan_xcoff_symtab(%struct.objfile* %164)
  %166 = load %struct.objfile*, %struct.objfile** %3, align 8
  %167 = call i32 @install_minimal_symbols(%struct.objfile* %166)
  %168 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %169 = call i32 @do_cleanups(%struct.cleanup* %168)
  ret void
}

declare dso_local i32 @bfd_get_symcount(i32*) #1

declare dso_local i64 @obj_sym_filepos(i32*) #1

declare dso_local %struct.TYPE_6__* @coff_data(i32*) #1

declare dso_local i32 @bfd_map_over_sections(i32*, i32, %struct.coff_symfile_info*) #1

declare dso_local i32 @init_stringtab(i32*, i64, %struct.objfile*) #1

declare dso_local %struct.bfd_section* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_section_size(i32*, %struct.bfd_section*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, %struct.bfd_section*, i8*, i64, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_seek(i32*, i64, i32) #1

declare dso_local i32 @bfd_bread(i64, i32, i32*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @init_psymbol_list(%struct.objfile*, i32) #1

declare dso_local i32 @free_pending_blocks(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i32 @init_minimal_symbol_collection(...) #1

declare dso_local i32 @make_cleanup_discard_minimal_symbols(...) #1

declare dso_local i32 @scan_xcoff_symtab(%struct.objfile*) #1

declare dso_local i32 @install_minimal_symbols(%struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
