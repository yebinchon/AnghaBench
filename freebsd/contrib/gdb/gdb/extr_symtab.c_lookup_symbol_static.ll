; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol_static.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @lookup_symbol_static(i8* %0, i8* %1, %struct.block* %2, i32 %3, %struct.symtab** %4) #0 {
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.symtab**, align 8
  %12 = alloca %struct.block*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.block* %2, %struct.block** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.symtab** %4, %struct.symtab*** %11, align 8
  %13 = load %struct.block*, %struct.block** %9, align 8
  %14 = call %struct.block* @block_static_block(%struct.block* %13)
  store %struct.block* %14, %struct.block** %12, align 8
  %15 = load %struct.block*, %struct.block** %12, align 8
  %16 = icmp ne %struct.block* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.block*, %struct.block** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.symtab**, %struct.symtab*** %11, align 8
  %23 = call %struct.symbol* @lookup_symbol_aux_block(i8* %18, i8* %19, %struct.block* %20, i32 %21, %struct.symtab** %22)
  store %struct.symbol* %23, %struct.symbol** %6, align 8
  br label %25

24:                                               ; preds = %5
  store %struct.symbol* null, %struct.symbol** %6, align 8
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.symbol*, %struct.symbol** %6, align 8
  ret %struct.symbol* %26
}

declare dso_local %struct.block* @block_static_block(%struct.block*) #1

declare dso_local %struct.symbol* @lookup_symbol_aux_block(i8*, i8*, %struct.block*, i32, %struct.symtab**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
