; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_start_psymtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_start_psymtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i8*, i32 }
%struct.objfile = type { i32, i32 }
%struct.partial_symbol = type { i32 }
%struct.symloc = type { i32 }

@xcoff_psymtab_to_symtab = common dso_local global i32 0, align 4
@psymtab_language = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.partial_symtab* (%struct.objfile*, i8*, i32, %struct.partial_symbol**, %struct.partial_symbol**)* @xcoff_start_psymtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.partial_symtab* @xcoff_start_psymtab(%struct.objfile* %0, i8* %1, i32 %2, %struct.partial_symbol** %3, %struct.partial_symbol** %4) #0 {
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.partial_symbol**, align 8
  %10 = alloca %struct.partial_symbol**, align 8
  %11 = alloca %struct.partial_symtab*, align 8
  store %struct.objfile* %0, %struct.objfile** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.partial_symbol** %3, %struct.partial_symbol*** %9, align 8
  store %struct.partial_symbol** %4, %struct.partial_symbol*** %10, align 8
  %12 = load %struct.objfile*, %struct.objfile** %6, align 8
  %13 = load %struct.objfile*, %struct.objfile** %6, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.partial_symbol**, %struct.partial_symbol*** %9, align 8
  %18 = load %struct.partial_symbol**, %struct.partial_symbol*** %10, align 8
  %19 = call %struct.partial_symtab* @start_psymtab_common(%struct.objfile* %12, i32 %15, i8* %16, i32 0, %struct.partial_symbol** %17, %struct.partial_symbol** %18)
  store %struct.partial_symtab* %19, %struct.partial_symtab** %11, align 8
  %20 = load %struct.objfile*, %struct.objfile** %6, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 0
  %22 = call i64 @obstack_alloc(i32* %21, i32 4)
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.partial_symtab*, %struct.partial_symtab** %11, align 8
  %25 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.partial_symtab*, %struct.partial_symtab** %11, align 8
  %28 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.symloc*
  %31 = getelementptr inbounds %struct.symloc, %struct.symloc* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @xcoff_psymtab_to_symtab, align 4
  %33 = load %struct.partial_symtab*, %struct.partial_symtab** %11, align 8
  %34 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @deduce_language_from_filename(i8* %35)
  store i32 %36, i32* @psymtab_language, align 4
  %37 = load %struct.partial_symtab*, %struct.partial_symtab** %11, align 8
  ret %struct.partial_symtab* %37
}

declare dso_local %struct.partial_symtab* @start_psymtab_common(%struct.objfile*, i32, i8*, i32, %struct.partial_symbol**, %struct.partial_symbol**) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @deduce_language_from_filename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
