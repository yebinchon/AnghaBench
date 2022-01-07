; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_allocate_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_allocate_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { %struct.symtab*, %struct.objfile*, i8*, i32, i32*, i8* }
%struct.objfile = type { %struct.symtab*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symtab* @allocate_symtab(i8* %0, %struct.objfile* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.symtab*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %6 = load %struct.objfile*, %struct.objfile** %4, align 8
  %7 = getelementptr inbounds %struct.objfile, %struct.objfile* %6, i32 0, i32 1
  %8 = call i64 @obstack_alloc(i32* %7, i32 48)
  %9 = inttoptr i64 %8 to %struct.symtab*
  store %struct.symtab* %9, %struct.symtab** %5, align 8
  %10 = load %struct.symtab*, %struct.symtab** %5, align 8
  %11 = call i32 @memset(%struct.symtab* %10, i32 0, i32 48)
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load %struct.objfile*, %struct.objfile** %4, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 1
  %17 = call i8* @obsavestring(i8* %12, i32 %14, i32* %16)
  %18 = load %struct.symtab*, %struct.symtab** %5, align 8
  %19 = getelementptr inbounds %struct.symtab, %struct.symtab* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load %struct.symtab*, %struct.symtab** %5, align 8
  %21 = getelementptr inbounds %struct.symtab, %struct.symtab* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @deduce_language_from_filename(i8* %22)
  %24 = load %struct.symtab*, %struct.symtab** %5, align 8
  %25 = getelementptr inbounds %struct.symtab, %struct.symtab* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.objfile*, %struct.objfile** %4, align 8
  %27 = getelementptr inbounds %struct.objfile, %struct.objfile* %26, i32 0, i32 1
  %28 = call i8* @obsavestring(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7, i32* %27)
  %29 = load %struct.symtab*, %struct.symtab** %5, align 8
  %30 = getelementptr inbounds %struct.symtab, %struct.symtab* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.objfile*, %struct.objfile** %4, align 8
  %32 = load %struct.symtab*, %struct.symtab** %5, align 8
  %33 = getelementptr inbounds %struct.symtab, %struct.symtab* %32, i32 0, i32 1
  store %struct.objfile* %31, %struct.objfile** %33, align 8
  %34 = load %struct.objfile*, %struct.objfile** %4, align 8
  %35 = getelementptr inbounds %struct.objfile, %struct.objfile* %34, i32 0, i32 0
  %36 = load %struct.symtab*, %struct.symtab** %35, align 8
  %37 = load %struct.symtab*, %struct.symtab** %5, align 8
  %38 = getelementptr inbounds %struct.symtab, %struct.symtab* %37, i32 0, i32 0
  store %struct.symtab* %36, %struct.symtab** %38, align 8
  %39 = load %struct.symtab*, %struct.symtab** %5, align 8
  %40 = load %struct.objfile*, %struct.objfile** %4, align 8
  %41 = getelementptr inbounds %struct.objfile, %struct.objfile* %40, i32 0, i32 0
  store %struct.symtab* %39, %struct.symtab** %41, align 8
  %42 = load %struct.symtab*, %struct.symtab** %5, align 8
  ret %struct.symtab* %42
}

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.symtab*, i32, i32) #1

declare dso_local i8* @obsavestring(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @deduce_language_from_filename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
