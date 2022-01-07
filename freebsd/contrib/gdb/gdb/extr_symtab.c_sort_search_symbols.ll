; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_sort_search_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_sort_search_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol_search = type { %struct.symbol_search* }

@compare_search_syms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol_search* (%struct.symbol_search*, i32)* @sort_search_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol_search* @sort_search_symbols(%struct.symbol_search* %0, i32 %1) #0 {
  %3 = alloca %struct.symbol_search*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symbol_search**, align 8
  %6 = alloca %struct.symbol_search*, align 8
  %7 = alloca %struct.symbol_search*, align 8
  %8 = alloca i32, align 4
  store %struct.symbol_search* %0, %struct.symbol_search** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @xmalloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.symbol_search**
  store %struct.symbol_search** %14, %struct.symbol_search*** %5, align 8
  %15 = load %struct.symbol_search*, %struct.symbol_search** %3, align 8
  %16 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %15, i32 0, i32 0
  %17 = load %struct.symbol_search*, %struct.symbol_search** %16, align 8
  store %struct.symbol_search* %17, %struct.symbol_search** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %24 = load %struct.symbol_search**, %struct.symbol_search*** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.symbol_search*, %struct.symbol_search** %24, i64 %26
  store %struct.symbol_search* %23, %struct.symbol_search** %27, align 8
  %28 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %29 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %28, i32 0, i32 0
  %30 = load %struct.symbol_search*, %struct.symbol_search** %29, align 8
  store %struct.symbol_search* %30, %struct.symbol_search** %6, align 8
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  store %struct.symbol_search* %35, %struct.symbol_search** %7, align 8
  %36 = load %struct.symbol_search**, %struct.symbol_search*** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @compare_search_syms, align 4
  %39 = call i32 @qsort(%struct.symbol_search** %36, i32 %37, i32 8, i32 %38)
  %40 = load %struct.symbol_search*, %struct.symbol_search** %3, align 8
  store %struct.symbol_search* %40, %struct.symbol_search** %6, align 8
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %56, %34
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.symbol_search**, %struct.symbol_search*** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.symbol_search*, %struct.symbol_search** %46, i64 %48
  %50 = load %struct.symbol_search*, %struct.symbol_search** %49, align 8
  %51 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %52 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %51, i32 0, i32 0
  store %struct.symbol_search* %50, %struct.symbol_search** %52, align 8
  %53 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %54 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %53, i32 0, i32 0
  %55 = load %struct.symbol_search*, %struct.symbol_search** %54, align 8
  store %struct.symbol_search* %55, %struct.symbol_search** %6, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load %struct.symbol_search*, %struct.symbol_search** %7, align 8
  %61 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  %62 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %61, i32 0, i32 0
  store %struct.symbol_search* %60, %struct.symbol_search** %62, align 8
  %63 = load %struct.symbol_search**, %struct.symbol_search*** %5, align 8
  %64 = call i32 @xfree(%struct.symbol_search** %63)
  %65 = load %struct.symbol_search*, %struct.symbol_search** %6, align 8
  ret %struct.symbol_search* %65
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @qsort(%struct.symbol_search**, i32, i32, i32) #1

declare dso_local i32 @xfree(%struct.symbol_search**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
