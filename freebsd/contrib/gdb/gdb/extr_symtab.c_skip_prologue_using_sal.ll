; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_skip_prologue_using_sal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_skip_prologue_using_sal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i64 }

@FUNCTION_START_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @skip_prologue_using_sal(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.symtab_and_line, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.symtab_and_line, align 8
  %7 = alloca %struct.symtab_and_line, align 8
  %8 = alloca %struct.symtab_and_line, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @find_pc_partial_function(i64 %9, i32* null, i64* %4, i64* %5)
  %11 = load i64, i64* @FUNCTION_START_OFFSET, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add nsw i64 %12, %11
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call { i64, i64 } @find_pc_line(i64 %14, i32 0)
  %16 = bitcast %struct.symtab_and_line* %6 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = extractvalue { i64, i64 } %15, 0
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = extractvalue { i64, i64 } %15, 1
  store i64 %20, i64* %19, align 8
  %21 = bitcast %struct.symtab_and_line* %3 to i8*
  %22 = bitcast %struct.symtab_and_line* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %54, %26
  %28 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call { i64, i64 } @find_pc_line(i64 %34, i32 0)
  %36 = bitcast %struct.symtab_and_line* %8 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %35, 1
  store i64 %40, i64* %39, align 8
  %41 = bitcast %struct.symtab_and_line* %7 to i8*
  %42 = bitcast %struct.symtab_and_line* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %57

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %57

54:                                               ; preds = %47
  %55 = bitcast %struct.symtab_and_line* %3 to i8*
  %56 = bitcast %struct.symtab_and_line* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  br label %27

57:                                               ; preds = %53, %46, %27
  br label %58

58:                                               ; preds = %57, %1
  %59 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  ret i64 %60
}

declare dso_local i32 @find_pc_partial_function(i64, i32*, i64*, i64*) #1

declare dso_local { i64, i64 } @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
