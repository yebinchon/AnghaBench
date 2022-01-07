; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_line_pc_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_line_pc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_line_pc_range(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.symtab_and_line, align 8
  %9 = alloca %struct.symtab_and_line, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @find_line_pc(i32 %16, i64 %18, i64* %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %48

22:                                               ; preds = %14, %3
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  call void @find_pc_sect_line(%struct.symtab_and_line* sret %9, i64 %23, i32 %25, i32 0)
  %26 = bitcast %struct.symtab_and_line* %8 to i8*
  %27 = bitcast %struct.symtab_and_line* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 32, i1 false)
  %28 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  br label %47

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %33
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @find_line_pc(i32, i64, i64*) #1

declare dso_local void @find_pc_sect_line(%struct.symtab_and_line* sret, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
