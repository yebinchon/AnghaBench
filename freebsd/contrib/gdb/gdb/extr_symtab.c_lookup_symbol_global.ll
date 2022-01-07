; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.symtab = type { i32 }

@GLOBAL_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @lookup_symbol_global(i8* %0, i8* %1, i32 %2, %struct.symtab** %3) #0 {
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.symtab**, align 8
  %10 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.symtab** %3, %struct.symtab*** %9, align 8
  %11 = load i32, i32* @GLOBAL_BLOCK, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.symtab**, %struct.symtab*** %9, align 8
  %16 = call %struct.symbol* @lookup_symbol_aux_symtabs(i32 %11, i8* %12, i8* %13, i32 %14, %struct.symtab** %15)
  store %struct.symbol* %16, %struct.symbol** %10, align 8
  %17 = load %struct.symbol*, %struct.symbol** %10, align 8
  %18 = icmp ne %struct.symbol* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.symbol*, %struct.symbol** %10, align 8
  store %struct.symbol* %20, %struct.symbol** %5, align 8
  br label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @GLOBAL_BLOCK, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.symtab**, %struct.symtab*** %9, align 8
  %27 = call %struct.symbol* @lookup_symbol_aux_psymtabs(i32 %22, i8* %23, i8* %24, i32 %25, %struct.symtab** %26)
  store %struct.symbol* %27, %struct.symbol** %5, align 8
  br label %28

28:                                               ; preds = %21, %19
  %29 = load %struct.symbol*, %struct.symbol** %5, align 8
  ret %struct.symbol* %29
}

declare dso_local %struct.symbol* @lookup_symbol_aux_symtabs(i32, i8*, i8*, i32, %struct.symtab**) #1

declare dso_local %struct.symbol* @lookup_symbol_aux_psymtabs(i32, i8*, i8*, i32, %struct.symtab**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
