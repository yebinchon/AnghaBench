; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_vmap_add_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_vmap_add_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { i32, i32 }

@objfile_symbol_add = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error while reading shared library symbols:\0A\00", align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmap_add_symbols(%struct.vmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmap*, align 8
  store %struct.vmap* %0, %struct.vmap** %3, align 8
  %4 = load i32, i32* @objfile_symbol_add, align 4
  %5 = load %struct.vmap*, %struct.vmap** %3, align 8
  %6 = getelementptr inbounds %struct.vmap, %struct.vmap* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RETURN_MASK_ALL, align 4
  %9 = call i64 @catch_errors(i32 %4, i32 %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.vmap*, %struct.vmap** %3, align 8
  %13 = getelementptr inbounds %struct.vmap, %struct.vmap* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.vmap*, %struct.vmap** %3, align 8
  %15 = call i32 @vmap_symtab(%struct.vmap* %14)
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @catch_errors(i32, i32, i8*, i32) #1

declare dso_local i32 @vmap_symtab(%struct.vmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
