; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol_aux_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_lookup_symbol_aux_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*, i8*, %struct.block*, i32, %struct.symtab**)* @lookup_symbol_aux_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @lookup_symbol_aux_local(i8* %0, i8* %1, %struct.block* %2, i32 %3, %struct.symtab** %4) #0 {
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.symtab**, align 8
  %12 = alloca %struct.symbol*, align 8
  %13 = alloca %struct.block*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.block* %2, %struct.block** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.symtab** %4, %struct.symtab*** %11, align 8
  %14 = load %struct.block*, %struct.block** %9, align 8
  %15 = call %struct.block* @block_static_block(%struct.block* %14)
  store %struct.block* %15, %struct.block** %13, align 8
  %16 = load %struct.block*, %struct.block** %13, align 8
  %17 = icmp eq %struct.block* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.symbol* null, %struct.symbol** %6, align 8
  br label %39

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %35, %19
  %21 = load %struct.block*, %struct.block** %9, align 8
  %22 = load %struct.block*, %struct.block** %13, align 8
  %23 = icmp ne %struct.block* %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.block*, %struct.block** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.symtab**, %struct.symtab*** %11, align 8
  %30 = call %struct.symbol* @lookup_symbol_aux_block(i8* %25, i8* %26, %struct.block* %27, i32 %28, %struct.symtab** %29)
  store %struct.symbol* %30, %struct.symbol** %12, align 8
  %31 = load %struct.symbol*, %struct.symbol** %12, align 8
  %32 = icmp ne %struct.symbol* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load %struct.symbol*, %struct.symbol** %12, align 8
  store %struct.symbol* %34, %struct.symbol** %6, align 8
  br label %39

35:                                               ; preds = %24
  %36 = load %struct.block*, %struct.block** %9, align 8
  %37 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %36)
  store %struct.block* %37, %struct.block** %9, align 8
  br label %20

38:                                               ; preds = %20
  store %struct.symbol* null, %struct.symbol** %6, align 8
  br label %39

39:                                               ; preds = %38, %33, %18
  %40 = load %struct.symbol*, %struct.symbol** %6, align 8
  ret %struct.symbol* %40
}

declare dso_local %struct.block* @block_static_block(%struct.block*) #1

declare dso_local %struct.symbol* @lookup_symbol_aux_block(i8*, i8*, %struct.block*, i32, %struct.symtab**) #1

declare dso_local %struct.block* @BLOCK_SUPERBLOCK(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
