; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_compare_search_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_compare_search_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol_search = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_search_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_search_syms(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symbol_search**, align 8
  %6 = alloca %struct.symbol_search**, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.symbol_search**
  store %struct.symbol_search** %8, %struct.symbol_search*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.symbol_search**
  store %struct.symbol_search** %10, %struct.symbol_search*** %6, align 8
  %11 = load %struct.symbol_search**, %struct.symbol_search*** %5, align 8
  %12 = load %struct.symbol_search*, %struct.symbol_search** %11, align 8
  %13 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SYMBOL_PRINT_NAME(i32 %14)
  %16 = load %struct.symbol_search**, %struct.symbol_search*** %6, align 8
  %17 = load %struct.symbol_search*, %struct.symbol_search** %16, align 8
  %18 = getelementptr inbounds %struct.symbol_search, %struct.symbol_search* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SYMBOL_PRINT_NAME(i32 %19)
  %21 = call i32 @strcmp(i32 %15, i32 %20)
  ret i32 %21
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
