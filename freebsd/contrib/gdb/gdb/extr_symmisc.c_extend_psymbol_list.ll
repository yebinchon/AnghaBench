; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_extend_psymbol_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_extend_psymbol_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psymbol_allocation_list = type { i32, %struct.partial_symbol**, %struct.partial_symbol** }
%struct.partial_symbol = type { i32 }
%struct.objfile = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extend_psymbol_list(%struct.psymbol_allocation_list* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.psymbol_allocation_list*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i32, align 4
  store %struct.psymbol_allocation_list* %0, %struct.psymbol_allocation_list** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %6 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %7 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  store i32 255, i32* %5, align 4
  %11 = load %struct.objfile*, %struct.objfile** %4, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @xmmalloc(i32 %13, i32 %17)
  %19 = inttoptr i64 %18 to %struct.partial_symbol**
  %20 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %21 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %20, i32 0, i32 1
  store %struct.partial_symbol** %19, %struct.partial_symbol*** %21, align 8
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %24 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %5, align 4
  %27 = load %struct.objfile*, %struct.objfile** %4, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %31 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %30, i32 0, i32 1
  %32 = load %struct.partial_symbol**, %struct.partial_symbol*** %31, align 8
  %33 = bitcast %struct.partial_symbol** %32 to i8*
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @xmrealloc(i32 %29, i8* %33, i32 %37)
  %39 = inttoptr i64 %38 to %struct.partial_symbol**
  %40 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %41 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %40, i32 0, i32 1
  store %struct.partial_symbol** %39, %struct.partial_symbol*** %41, align 8
  br label %42

42:                                               ; preds = %22, %10
  %43 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %44 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %43, i32 0, i32 1
  %45 = load %struct.partial_symbol**, %struct.partial_symbol*** %44, align 8
  %46 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %47 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %45, i64 %49
  %51 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %52 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %51, i32 0, i32 2
  store %struct.partial_symbol** %50, %struct.partial_symbol*** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.psymbol_allocation_list*, %struct.psymbol_allocation_list** %3, align 8
  %55 = getelementptr inbounds %struct.psymbol_allocation_list, %struct.psymbol_allocation_list* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  ret void
}

declare dso_local i64 @xmmalloc(i32, i32) #1

declare dso_local i64 @xmrealloc(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
