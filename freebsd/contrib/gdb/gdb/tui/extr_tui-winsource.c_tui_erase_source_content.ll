; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_erase_source_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_erase_source_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32* }

@EMPTY_SOURCE_PROMPT = common dso_local global i32 0, align 4
@SRC_WIN = common dso_local global i64 0, align 8
@NO_SRC_STRING = common dso_local global i8* null, align 8
@NO_DISASSEM_STRING = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_erase_source_content(%struct.tui_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %9 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 2
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %15 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %72

19:                                               ; preds = %2
  %20 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %21 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @werase(i32* %23)
  %25 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %26 = call i32 @tui_check_and_display_highlight_if_needed(%struct.tui_win_info* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EMPTY_SOURCE_PROMPT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %19
  %31 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %32 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SRC_WIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8*, i8** @NO_SRC_STRING, align 8
  store i8* %38, i8** %7, align 8
  br label %41

39:                                               ; preds = %30
  %40 = load i8*, i8** @NO_DISASSEM_STRING, align 8
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sub nsw i32 %48, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %46
  %53 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %54 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %58 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 2
  %62 = load i32, i32* %5, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @mvwaddstr(i32* %56, i32 %61, i32 %62, i8* %63)
  %65 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @tui_set_source_content_nil(%struct.tui_win_info* %65, i8* %66)
  br label %68

68:                                               ; preds = %52, %19
  %69 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %70 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %69, i32 0, i32 0
  %71 = call i32 @tui_refresh_win(%struct.TYPE_2__* %70)
  br label %72

72:                                               ; preds = %68, %2
  ret void
}

declare dso_local i32 @werase(i32*) #1

declare dso_local i32 @tui_check_and_display_highlight_if_needed(%struct.tui_win_info*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mvwaddstr(i32*, i32, i32, i8*) #1

declare dso_local i32 @tui_set_source_content_nil(%struct.tui_win_info*, i8*) #1

declare dso_local i32 @tui_refresh_win(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
