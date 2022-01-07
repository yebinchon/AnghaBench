; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_skip_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_skip_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64 }
%struct.sparc_frame_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @sparc64_skip_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sparc64_skip_prologue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.symtab_and_line, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sparc_frame_cache, align 4
  %8 = alloca %struct.symtab_and_line, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @find_pc_partial_function(i64 %9, i32* null, i64* %5, i64* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @find_pc_line(i64 %13, i32 0)
  %15 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = bitcast %struct.symtab_and_line* %4 to i8*
  %17 = bitcast %struct.symtab_and_line* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %2, align 8
  br label %34

30:                                               ; preds = %22, %12
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @sparc_analyze_prologue(i64 %32, i32 -1, %struct.sparc_frame_cache* %7)
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i64 @find_pc_partial_function(i64, i32*, i64*, i64*) #1

declare dso_local i64 @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sparc_analyze_prologue(i64, i32, %struct.sparc_frame_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
