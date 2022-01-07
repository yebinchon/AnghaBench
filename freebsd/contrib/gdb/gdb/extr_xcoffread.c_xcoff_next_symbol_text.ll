; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_next_symbol_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_next_symbol_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.objfile* }
%struct.objfile = type { i32, i64 }
%struct.internal_syment = type { i32, i32, i64 }
%struct.coff_symfile_info = type { i8* }
%struct.TYPE_4__ = type { i64 }

@this_symtab_psymtab = common dso_local global %struct.TYPE_3__* null, align 8
@raw_symbol = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unexpected symbol continuation\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@symnum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.objfile*)* @xcoff_next_symbol_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xcoff_next_symbol_text(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca %struct.internal_syment, align 8
  %4 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_symtab_psymtab, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.objfile*, %struct.objfile** %6, align 8
  store %struct.objfile* %7, %struct.objfile** %2, align 8
  %8 = load %struct.objfile*, %struct.objfile** %2, align 8
  %9 = getelementptr inbounds %struct.objfile, %struct.objfile* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @raw_symbol, align 4
  %12 = call i32 @bfd_coff_swap_sym_in(i32 %10, i32 %11, %struct.internal_syment* %3)
  %13 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %3, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %49

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 128
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load %struct.objfile*, %struct.objfile** %2, align 8
  %25 = getelementptr inbounds %struct.objfile, %struct.objfile* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.coff_symfile_info*
  %28 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %4, align 8
  %34 = load %struct.objfile*, %struct.objfile** %2, align 8
  %35 = getelementptr inbounds %struct.objfile, %struct.objfile* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_4__* @coff_data(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @raw_symbol, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @raw_symbol, align 4
  %44 = load i32, i32* @symnum, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @symnum, align 4
  br label %48

46:                                               ; preds = %18
  %47 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %48

48:                                               ; preds = %46, %23
  br label %49

49:                                               ; preds = %48, %16
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

declare dso_local i32 @bfd_coff_swap_sym_in(i32, i32, %struct.internal_syment*) #1

declare dso_local i32 @complaint(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @coff_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
