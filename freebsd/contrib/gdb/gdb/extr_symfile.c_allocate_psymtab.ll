; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_allocate_psymtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_allocate_psymtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { %struct.partial_symtab*, %struct.objfile*, i32*, i32 }
%struct.objfile = type { %struct.partial_symtab*, i32, %struct.partial_symtab* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.partial_symtab* @allocate_psymtab(i8* %0, %struct.objfile* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.partial_symtab*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %6 = load %struct.objfile*, %struct.objfile** %4, align 8
  %7 = getelementptr inbounds %struct.objfile, %struct.objfile* %6, i32 0, i32 2
  %8 = load %struct.partial_symtab*, %struct.partial_symtab** %7, align 8
  %9 = icmp ne %struct.partial_symtab* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.objfile*, %struct.objfile** %4, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 2
  %13 = load %struct.partial_symtab*, %struct.partial_symtab** %12, align 8
  store %struct.partial_symtab* %13, %struct.partial_symtab** %5, align 8
  %14 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %15 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %14, i32 0, i32 0
  %16 = load %struct.partial_symtab*, %struct.partial_symtab** %15, align 8
  %17 = load %struct.objfile*, %struct.objfile** %4, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 2
  store %struct.partial_symtab* %16, %struct.partial_symtab** %18, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.objfile*, %struct.objfile** %4, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 1
  %22 = call i64 @obstack_alloc(i32* %21, i32 32)
  %23 = inttoptr i64 %22 to %struct.partial_symtab*
  store %struct.partial_symtab* %23, %struct.partial_symtab** %5, align 8
  br label %24

24:                                               ; preds = %19, %10
  %25 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %26 = call i32 @memset(%struct.partial_symtab* %25, i32 0, i32 32)
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = load %struct.objfile*, %struct.objfile** %4, align 8
  %31 = getelementptr inbounds %struct.objfile, %struct.objfile* %30, i32 0, i32 1
  %32 = call i32 @obsavestring(i8* %27, i32 %29, i32* %31)
  %33 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %34 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %36 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.objfile*, %struct.objfile** %4, align 8
  %38 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %39 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %38, i32 0, i32 1
  store %struct.objfile* %37, %struct.objfile** %39, align 8
  %40 = load %struct.objfile*, %struct.objfile** %4, align 8
  %41 = getelementptr inbounds %struct.objfile, %struct.objfile* %40, i32 0, i32 0
  %42 = load %struct.partial_symtab*, %struct.partial_symtab** %41, align 8
  %43 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %44 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %43, i32 0, i32 0
  store %struct.partial_symtab* %42, %struct.partial_symtab** %44, align 8
  %45 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %46 = load %struct.objfile*, %struct.objfile** %4, align 8
  %47 = getelementptr inbounds %struct.objfile, %struct.objfile* %46, i32 0, i32 0
  store %struct.partial_symtab* %45, %struct.partial_symtab** %47, align 8
  %48 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  ret %struct.partial_symtab* %48
}

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.partial_symtab*, i32, i32) #1

declare dso_local i32 @obsavestring(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
