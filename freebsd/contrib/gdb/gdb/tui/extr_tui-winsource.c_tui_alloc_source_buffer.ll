; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_alloc_source_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_alloc_source_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i8** }
%struct.tui_win_element = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@TUI_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Unable to Allocate Memory for Source or Disassembly Display.\0A\00", align 1
@gdb_stderr = common dso_local global i32 0, align 4
@SRC_WIN = common dso_local global i32 0, align 4
@TUI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_alloc_source_buffer(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %8 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %10 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %14 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %19 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %81

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i64 @xmalloc(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @gdb_stderr, align 4
  %36 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %52

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SRC_WIN, align 4
  %40 = call i64 @tui_alloc_content(i32 %38, i32 %39)
  %41 = inttoptr i64 %40 to i8**
  %42 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %43 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i8** %41, i8*** %44, align 8
  %45 = icmp eq i8** %41, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @xfree(i8* %47)
  store i8* null, i8** %3, align 8
  %49 = load i32, i32* @gdb_stderr, align 4
  %50 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %37
  br label %52

52:                                               ; preds = %51, %34
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %76, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %65 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast i8* %71 to %struct.tui_win_element*
  %73 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i8* %63, i8** %75, align 8
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %53

79:                                               ; preds = %53
  %80 = load i32, i32* @TUI_SUCCESS, align 4
  store i32 %80, i32* %7, align 4
  br label %83

81:                                               ; preds = %1
  %82 = load i32, i32* @TUI_SUCCESS, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i64 @tui_alloc_content(i32, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
