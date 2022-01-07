; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_source_windows_with_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_source_windows_with_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32, i32 }
%union.tui_line_or_address = type { i32 }
%struct.tui_win_info = type { i32 }
%struct.TYPE_2__ = type { i32, i64* }

@FALSE = common dso_local global i32 0, align 4
@EMPTY_SOURCE_PROMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_update_source_windows_with_addr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.symtab_and_line, align 4
  %4 = alloca %union.tui_line_or_address, align 4
  %5 = alloca %struct.symtab_and_line, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tui_win_info*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = call i32 (...) @tui_current_layout()
  switch i32 %11, label %18 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %15
  ]

12:                                               ; preds = %10, %10
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @tui_show_disassem(i64 %13)
  br label %33

15:                                               ; preds = %10
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @tui_show_disassem_and_update_source(i64 %16)
  br label %33

18:                                               ; preds = %10
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @find_pc_line(i64 %19, i32 0)
  %21 = bitcast %struct.symtab_and_line* %5 to i64*
  store i64 %20, i64* %21, align 4
  %22 = bitcast %struct.symtab_and_line* %3 to i8*
  %23 = bitcast %struct.symtab_and_line* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %union.tui_line_or_address* %4 to i32*
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tui_show_symtab_source(i32 %28, i32 %31, i32 %29)
  br label %33

33:                                               ; preds = %18, %15, %12
  br label %59

34:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %55, %34
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_2__* (...) @tui_source_windows()
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = call %struct.TYPE_2__* (...) @tui_source_windows()
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.tui_win_info*
  store %struct.tui_win_info* %49, %struct.tui_win_info** %7, align 8
  %50 = load %struct.tui_win_info*, %struct.tui_win_info** %7, align 8
  %51 = load i32, i32* @EMPTY_SOURCE_PROMPT, align 4
  %52 = call i32 @tui_clear_source_content(%struct.tui_win_info* %50, i32 %51)
  %53 = load %struct.tui_win_info*, %struct.tui_win_info** %7, align 8
  %54 = call i32 @tui_clear_exec_info_content(%struct.tui_win_info* %53)
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %35

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58, %33
  ret void
}

declare dso_local i32 @tui_current_layout(...) #1

declare dso_local i32 @tui_show_disassem(i64) #1

declare dso_local i32 @tui_show_disassem_and_update_source(i64) #1

declare dso_local i64 @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tui_show_symtab_source(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @tui_source_windows(...) #1

declare dso_local i32 @tui_clear_source_content(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_clear_exec_info_content(%struct.tui_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
