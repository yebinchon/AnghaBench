; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_fixup_symbol_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_fixup_symbol_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.objfile = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @fixup_symbol_section(%struct.symbol* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.objfile*, align 8
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.objfile* %1, %struct.objfile** %5, align 8
  %6 = load %struct.symbol*, %struct.symbol** %4, align 8
  %7 = icmp ne %struct.symbol* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.symbol* null, %struct.symbol** %3, align 8
  br label %21

9:                                                ; preds = %2
  %10 = load %struct.symbol*, %struct.symbol** %4, align 8
  %11 = call i64 @SYMBOL_BFD_SECTION(%struct.symbol* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %14, %struct.symbol** %3, align 8
  br label %21

15:                                               ; preds = %9
  %16 = load %struct.symbol*, %struct.symbol** %4, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load %struct.objfile*, %struct.objfile** %5, align 8
  %19 = call i32 @fixup_section(i32* %17, %struct.objfile* %18)
  %20 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %20, %struct.symbol** %3, align 8
  br label %21

21:                                               ; preds = %15, %13, %8
  %22 = load %struct.symbol*, %struct.symbol** %3, align 8
  ret %struct.symbol* %22
}

declare dso_local i64 @SYMBOL_BFD_SECTION(%struct.symbol*) #1

declare dso_local i32 @fixup_section(i32*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
