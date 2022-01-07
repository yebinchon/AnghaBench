; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_show_disassem_and_update_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_show_disassem_and_update_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }
%union.tui_line_or_address = type { i32 }

@SRC_DISASSEM_COMMAND = common dso_local global i64 0, align 8
@TUI_SRC_WIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_show_disassem_and_update_source(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.symtab_and_line, align 8
  %4 = alloca %union.tui_line_or_address, align 4
  %5 = alloca %struct.symtab_and_line, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @tui_show_disassem(i32 %6)
  %8 = call i64 (...) @tui_current_layout()
  %9 = load i64, i64* @SRC_DISASSEM_COMMAND, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call { %struct.TYPE_2__*, i32 } @find_pc_line(i32 %12, i32 0)
  %14 = bitcast %struct.symtab_and_line* %5 to { %struct.TYPE_2__*, i32 }*
  %15 = getelementptr inbounds { %struct.TYPE_2__*, i32 }, { %struct.TYPE_2__*, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { %struct.TYPE_2__*, i32 } %13, 0
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds { %struct.TYPE_2__*, i32 }, { %struct.TYPE_2__*, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { %struct.TYPE_2__*, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = bitcast %struct.symtab_and_line* %3 to i8*
  %20 = bitcast %struct.symtab_and_line* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = bitcast %union.tui_line_or_address* %4 to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @TUI_SRC_WIN, align 4
  %25 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tui_update_source_window(i32 %24, %struct.TYPE_2__* %26, i32 %29, i32 %27)
  %31 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %11
  %35 = call i32 @set_current_source_symtab_and_line(%struct.symtab_and_line* %3)
  %36 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @tui_update_locator_filename(i8* %39)
  br label %43

41:                                               ; preds = %11
  %42 = call i32 @tui_update_locator_filename(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @tui_show_disassem(i32) #1

declare dso_local i64 @tui_current_layout(...) #1

declare dso_local { %struct.TYPE_2__*, i32 } @find_pc_line(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tui_update_source_window(i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @set_current_source_symtab_and_line(%struct.symtab_and_line*) #1

declare dso_local i32 @tui_update_locator_filename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
