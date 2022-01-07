; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_in_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_in_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_prologue(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.symtab_and_line, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.symtab_and_line, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @find_pc_partial_function(i64 %12, i32* null, i64* %7, i64* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %80

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @SKIP_PROLOGUE(i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %26, %27
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ false, %19 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %80

32:                                               ; preds = %2
  %33 = load i64, i64* %7, align 8
  %34 = call { i64, i64 } @find_pc_line(i64 %33, i32 0)
  %35 = bitcast %struct.symtab_and_line* %10 to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = extractvalue { i64, i64 } %34, 0
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = extractvalue { i64, i64 } %34, 1
  store i64 %39, i64* %38, align 8
  %40 = bitcast %struct.symtab_and_line* %6 to i8*
  %41 = bitcast %struct.symtab_and_line* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %51, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50, %45, %32
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @SKIP_PROLOGUE(i64 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp slt i64 %62, %63
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi i1 [ false, %55 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %80

68:                                               ; preds = %50
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp sle i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %73, %75
  br label %77

77:                                               ; preds = %72, %68
  %78 = phi i1 [ false, %68 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %65, %29, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @find_pc_partial_function(i64, i32*, i64*, i64*) #1

declare dso_local i64 @SKIP_PROLOGUE(i64) #1

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
