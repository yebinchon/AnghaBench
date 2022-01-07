; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_get_begin_asm_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_get_begin_asm_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i64* }
%struct.tui_locator_element = type { i64 }
%struct.minimal_symbol = type { i32 }
%struct.tui_win_element = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tui_locator_element }

@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MAIN\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_start\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tui_get_begin_asm_address() #0 {
  %1 = alloca %struct.tui_gen_win_info*, align 8
  %2 = alloca %struct.tui_locator_element*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.minimal_symbol*, align 8
  %5 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %5, %struct.tui_gen_win_info** %1, align 8
  %6 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %1, align 8
  %7 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.tui_win_element*
  %12 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.tui_locator_element* %13, %struct.tui_locator_element** %2, align 8
  %14 = load %struct.tui_locator_element*, %struct.tui_locator_element** %2, align 8
  %15 = getelementptr inbounds %struct.tui_locator_element, %struct.tui_locator_element* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %0
  %19 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %19, %struct.minimal_symbol** %4, align 8
  %20 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %21 = icmp eq %struct.minimal_symbol* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %23, %struct.minimal_symbol** %4, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %26 = icmp eq %struct.minimal_symbol* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %28, %struct.minimal_symbol** %4, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %31 = icmp ne %struct.minimal_symbol* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %34 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %33)
  store i64 %34, i64* %3, align 8
  br label %36

35:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %35, %32
  br label %41

37:                                               ; preds = %0
  %38 = load %struct.tui_locator_element*, %struct.tui_locator_element** %2, align 8
  %39 = getelementptr inbounds %struct.tui_locator_element, %struct.tui_locator_element* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
