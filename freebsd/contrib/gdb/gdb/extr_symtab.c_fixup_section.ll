; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_fixup_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_fixup_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.general_symbol_info = type { i32, i32, i32 }
%struct.objfile = type { i32 }
%struct.minimal_symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.general_symbol_info*, %struct.objfile*)* @fixup_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_section(%struct.general_symbol_info* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.general_symbol_info*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.minimal_symbol*, align 8
  store %struct.general_symbol_info* %0, %struct.general_symbol_info** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %6 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %7 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.objfile*, %struct.objfile** %4, align 8
  %10 = call %struct.minimal_symbol* @lookup_minimal_symbol(i32 %8, i32* null, %struct.objfile* %9)
  store %struct.minimal_symbol* %10, %struct.minimal_symbol** %5, align 8
  %11 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %12 = icmp ne %struct.minimal_symbol* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %15 = call i32 @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %14)
  %16 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %17 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %19 = call i32 @SYMBOL_SECTION(%struct.minimal_symbol* %18)
  %20 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %21 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %13, %2
  ret void
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i32, i32*, %struct.objfile*) #1

declare dso_local i32 @SYMBOL_BFD_SECTION(%struct.minimal_symbol*) #1

declare dso_local i32 @SYMBOL_SECTION(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
