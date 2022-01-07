; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_psymtab_to_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_psymtab_to_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { %struct.TYPE_2__*, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.symloc = type { i64 }

@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Psymtab for %s already read in.  Shouldn't happen.\0A\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Reading in symbols for %s...\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@xcoff_next_symbol_text = common dso_local global i32 0, align 4
@next_symbol_text_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @xcoff_psymtab_to_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcoff_psymtab_to_symtab(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  %3 = alloca i32*, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  %4 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %5 = icmp ne %struct.partial_symtab* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %59

7:                                                ; preds = %1
  %8 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %9 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i32, i32* @gdb_stderr, align 4
  %14 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %15 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @fprintf_unfiltered(i32 %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %59

18:                                               ; preds = %7
  %19 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %20 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.symloc*
  %23 = getelementptr inbounds %struct.symloc, %struct.symloc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %28 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %26, %18
  %32 = load i64, i64* @info_verbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %36 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @gdb_stdout, align 4
  %40 = call i32 @gdb_flush(i32 %39)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %43 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %3, align 8
  %47 = load i32, i32* @xcoff_next_symbol_text, align 4
  store i32 %47, i32* @next_symbol_text_func, align 4
  %48 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %49 = call i32 @xcoff_psymtab_to_symtab_1(%struct.partial_symtab* %48)
  %50 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %51 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @scan_file_globals(%struct.TYPE_2__* %52)
  %54 = load i64, i64* @info_verbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %41
  br label %59

59:                                               ; preds = %6, %12, %58, %26
  ret void
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @xcoff_psymtab_to_symtab_1(%struct.partial_symtab*) #1

declare dso_local i32 @scan_file_globals(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
