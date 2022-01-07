; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_add_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_add_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_offsets = type { i8** }
%struct.objfile = type { i32, i32, i32 }
%struct.find_sect_args = type { i8*, i8*, i8* }

@find_sect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i8*)* @vx_add_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_add_symbols(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.section_offsets*, align 8
  %12 = alloca %struct.objfile*, align 8
  %13 = alloca %struct.find_sect_args, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.objfile* @symbol_file_add(i8* %14, i32 %15, i32* null, i32 0, i32 0)
  store %struct.objfile* %16, %struct.objfile** %12, align 8
  %17 = load %struct.objfile*, %struct.objfile** %12, align 8
  %18 = call i32 @objfile_to_front(%struct.objfile* %17)
  %19 = load %struct.objfile*, %struct.objfile** %12, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %21)
  %23 = call i64 @alloca(i32 %22)
  %24 = inttoptr i64 %23 to %struct.section_offsets*
  store %struct.section_offsets* %24, %struct.section_offsets** %11, align 8
  %25 = load %struct.section_offsets*, %struct.section_offsets** %11, align 8
  %26 = load %struct.objfile*, %struct.objfile** %12, align 8
  %27 = getelementptr inbounds %struct.objfile, %struct.objfile* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.objfile*, %struct.objfile** %12, align 8
  %30 = getelementptr inbounds %struct.objfile, %struct.objfile* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %31)
  %33 = call i32 @memcpy(%struct.section_offsets* %25, i32 %28, i32 %32)
  %34 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %13, i32 0, i32 0
  store i8* null, i8** %34, align 8
  %35 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %13, i32 0, i32 1
  store i8* null, i8** %35, align 8
  %36 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %13, i32 0, i32 2
  store i8* null, i8** %36, align 8
  %37 = load %struct.objfile*, %struct.objfile** %12, align 8
  %38 = getelementptr inbounds %struct.objfile, %struct.objfile* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @find_sect, align 4
  %41 = call i32 @bfd_map_over_sections(i32 %39, i32 %40, %struct.find_sect_args* %13)
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %13, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %42 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.section_offsets*, %struct.section_offsets** %11, align 8
  %50 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load %struct.objfile*, %struct.objfile** %12, align 8
  %53 = call i64 @SECT_OFF_TEXT(%struct.objfile* %52)
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %13, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.section_offsets*, %struct.section_offsets** %11, align 8
  %63 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load %struct.objfile*, %struct.objfile** %12, align 8
  %66 = call i64 @SECT_OFF_DATA(%struct.objfile* %65)
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %61, i8** %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %13, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %68 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.section_offsets*, %struct.section_offsets** %11, align 8
  %76 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = load %struct.objfile*, %struct.objfile** %12, align 8
  %79 = call i64 @SECT_OFF_BSS(%struct.objfile* %78)
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %74, i8** %80, align 8
  %81 = load %struct.objfile*, %struct.objfile** %12, align 8
  %82 = load %struct.section_offsets*, %struct.section_offsets** %11, align 8
  %83 = call i32 @objfile_relocate(%struct.objfile* %81, %struct.section_offsets* %82)
  ret void
}

declare dso_local %struct.objfile* @symbol_file_add(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @objfile_to_front(%struct.objfile*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @SIZEOF_N_SECTION_OFFSETS(i32) #1

declare dso_local i32 @memcpy(%struct.section_offsets*, i32, i32) #1

declare dso_local i32 @bfd_map_over_sections(i32, i32, %struct.find_sect_args*) #1

declare dso_local i64 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i64 @SECT_OFF_DATA(%struct.objfile*) #1

declare dso_local i64 @SECT_OFF_BSS(%struct.objfile*) #1

declare dso_local i32 @objfile_relocate(%struct.objfile*, %struct.section_offsets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
