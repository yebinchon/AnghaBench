; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somread.c_som_symfile_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somread.c_som_symfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32*, i32, i64, i32*, i32, i32* }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"$GDB_SYMBOLS$\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"$GDB_STRINGS$\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"$TEXT$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, i32)* @som_symfile_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @som_symfile_read(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cleanup*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.objfile*, %struct.objfile** %3, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.objfile*, %struct.objfile** %3, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @symfile_bfd_open(i32 %12)
  %14 = call i32 @do_pxdb(i32 %13)
  %15 = call i32 (...) @init_minimal_symbol_collection()
  %16 = call %struct.cleanup* (...) @make_cleanup_discard_minimal_symbols()
  store %struct.cleanup* %16, %struct.cleanup** %6, align 8
  %17 = load %struct.objfile*, %struct.objfile** %3, align 8
  %18 = call i32 @init_import_symbols(%struct.objfile* %17)
  %19 = load %struct.objfile*, %struct.objfile** %3, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.objfile*, %struct.objfile** %3, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.objfile*, %struct.objfile** %3, align 8
  %25 = load %struct.objfile*, %struct.objfile** %3, align 8
  %26 = getelementptr inbounds %struct.objfile, %struct.objfile* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @som_symtab_read(i32* %23, %struct.objfile* %24, i32 %27)
  %29 = load %struct.objfile*, %struct.objfile** %3, align 8
  %30 = call i32 @install_minimal_symbols(%struct.objfile* %29)
  %31 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %32 = call i32 @do_cleanups(%struct.cleanup* %31)
  %33 = load %struct.objfile*, %struct.objfile** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @stabsect_build_psymtabs(%struct.objfile* %33, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.objfile*, %struct.objfile** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @hpread_build_psymtabs(%struct.objfile* %36, i32 %37)
  %39 = load %struct.objfile*, %struct.objfile** %3, align 8
  %40 = getelementptr inbounds %struct.objfile, %struct.objfile* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  ret void
}

declare dso_local i32 @do_pxdb(i32) #1

declare dso_local i32 @symfile_bfd_open(i32) #1

declare dso_local i32 @init_minimal_symbol_collection(...) #1

declare dso_local %struct.cleanup* @make_cleanup_discard_minimal_symbols(...) #1

declare dso_local i32 @init_import_symbols(%struct.objfile*) #1

declare dso_local i32 @som_symtab_read(i32*, %struct.objfile*, i32) #1

declare dso_local i32 @install_minimal_symbols(%struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @stabsect_build_psymtabs(%struct.objfile*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @hpread_build_psymtabs(%struct.objfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
