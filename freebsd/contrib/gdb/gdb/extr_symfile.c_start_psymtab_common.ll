; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_start_psymtab_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_start_psymtab_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { %struct.partial_symbol**, %struct.partial_symbol**, i32, i32, %struct.section_offsets* }
%struct.objfile = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.section_offsets = type { i32 }
%struct.partial_symbol = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.partial_symtab* @start_psymtab_common(%struct.objfile* %0, %struct.section_offsets* %1, i8* %2, i32 %3, %struct.partial_symbol** %4, %struct.partial_symbol** %5) #0 {
  %7 = alloca %struct.objfile*, align 8
  %8 = alloca %struct.section_offsets*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.partial_symbol**, align 8
  %12 = alloca %struct.partial_symbol**, align 8
  %13 = alloca %struct.partial_symtab*, align 8
  store %struct.objfile* %0, %struct.objfile** %7, align 8
  store %struct.section_offsets* %1, %struct.section_offsets** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.partial_symbol** %4, %struct.partial_symbol*** %11, align 8
  store %struct.partial_symbol** %5, %struct.partial_symbol*** %12, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.objfile*, %struct.objfile** %7, align 8
  %16 = call %struct.partial_symtab* @allocate_psymtab(i8* %14, %struct.objfile* %15)
  store %struct.partial_symtab* %16, %struct.partial_symtab** %13, align 8
  %17 = load %struct.section_offsets*, %struct.section_offsets** %8, align 8
  %18 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  %19 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %18, i32 0, i32 4
  store %struct.section_offsets* %17, %struct.section_offsets** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  %22 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  %24 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  %27 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.partial_symbol**, %struct.partial_symbol*** %11, align 8
  %29 = load %struct.objfile*, %struct.objfile** %7, align 8
  %30 = getelementptr inbounds %struct.objfile, %struct.objfile* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %28, i64 %34
  %36 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  %37 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %36, i32 0, i32 1
  store %struct.partial_symbol** %35, %struct.partial_symbol*** %37, align 8
  %38 = load %struct.partial_symbol**, %struct.partial_symbol*** %12, align 8
  %39 = load %struct.objfile*, %struct.objfile** %7, align 8
  %40 = getelementptr inbounds %struct.objfile, %struct.objfile* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %38, i64 %44
  %46 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  %47 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %46, i32 0, i32 0
  store %struct.partial_symbol** %45, %struct.partial_symbol*** %47, align 8
  %48 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  ret %struct.partial_symtab* %48
}

declare dso_local %struct.partial_symtab* @allocate_psymtab(i8*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
