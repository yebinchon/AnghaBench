; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_function_start_sal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_function_start_sal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.symtab_and_line = type { i64, i64 }

@FUNCTION_START_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @find_function_start_sal(%struct.symbol* %0, i32 %1) #0 {
  %3 = alloca %struct.symtab_and_line, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.symtab_and_line, align 8
  %9 = alloca %struct.symtab_and_line, align 8
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.symbol*, %struct.symbol** %4, align 8
  %11 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %10)
  %12 = call i64 @BLOCK_START(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.symbol*, %struct.symbol** %4, align 8
  %14 = call i32 @fixup_symbol_section(%struct.symbol* %13, i32* null)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.symbol*, %struct.symbol** %4, align 8
  %19 = call i32* @SYMBOL_BFD_SECTION(%struct.symbol* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @section_is_overlay(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @section_is_mapped(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @overlay_unmapped_address(i64 %28, i32* %29)
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27, %23, %17
  %32 = load i64, i64* @FUNCTION_START_OFFSET, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @SKIP_PROLOGUE(i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @overlay_mapped_address(i64 %37, i32* %38)
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %31, %2
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.symbol*, %struct.symbol** %4, align 8
  %43 = call i32* @SYMBOL_BFD_SECTION(%struct.symbol* %42)
  %44 = call { i64, i64 } @find_pc_sect_line(i64 %41, i32* %43, i32 0)
  %45 = bitcast %struct.symtab_and_line* %8 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = extractvalue { i64, i64 } %44, 0
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = extractvalue { i64, i64 } %44, 1
  store i64 %49, i64* %48, align 8
  %50 = bitcast %struct.symtab_and_line* %3 to i8*
  %51 = bitcast %struct.symtab_and_line* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %40
  %57 = load %struct.symbol*, %struct.symbol** %4, align 8
  %58 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %57)
  %59 = call i64 @BLOCK_START(i32 %58)
  %60 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sle i64 %59, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.symbol*, %struct.symbol** %4, align 8
  %67 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %66)
  %68 = call i64 @BLOCK_END(i32 %67)
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.symbol*, %struct.symbol** %4, align 8
  %75 = call i32* @SYMBOL_BFD_SECTION(%struct.symbol* %74)
  %76 = call { i64, i64 } @find_pc_sect_line(i64 %73, i32* %75, i32 0)
  %77 = bitcast %struct.symtab_and_line* %9 to { i64, i64 }*
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %77, i32 0, i32 0
  %79 = extractvalue { i64, i64 } %76, 0
  store i64 %79, i64* %78, align 8
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %77, i32 0, i32 1
  %81 = extractvalue { i64, i64 } %76, 1
  store i64 %81, i64* %80, align 8
  %82 = bitcast %struct.symtab_and_line* %3 to i8*
  %83 = bitcast %struct.symtab_and_line* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  br label %84

84:                                               ; preds = %70, %63, %56, %40
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  %87 = bitcast %struct.symtab_and_line* %3 to { i64, i64 }*
  %88 = load { i64, i64 }, { i64, i64 }* %87, align 8
  ret { i64, i64 } %88
}

declare dso_local i64 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i32 @fixup_symbol_section(%struct.symbol*, i32*) #1

declare dso_local i32* @SYMBOL_BFD_SECTION(%struct.symbol*) #1

declare dso_local i64 @section_is_overlay(i32*) #1

declare dso_local i32 @section_is_mapped(i32*) #1

declare dso_local i64 @overlay_unmapped_address(i64, i32*) #1

declare dso_local i64 @SKIP_PROLOGUE(i64) #1

declare dso_local i64 @overlay_mapped_address(i64, i32*) #1

declare dso_local { i64, i64 } @find_pc_sect_line(i64, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @BLOCK_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
