; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_make_all_visible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_make_all_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tui_gen_win_info* }
%struct.tui_gen_win_info = type { i32 }
%struct.TYPE_7__ = type { i64 }

@MAX_MAJOR_WINDOWS = common dso_local global i32 0, align 4
@tui_win_list = common dso_local global %struct.TYPE_8__** null, align 8
@CMD_WIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @make_all_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_all_visible(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %59, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_MAJOR_WINDOWS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %62

8:                                                ; preds = %4
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @tui_win_list, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %9, i64 %11
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %8
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @tui_win_list, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %18
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CMD_WIN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %15
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @tui_win_list, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @tui_win_is_source_type(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @tui_win_list, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i64 %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %45, align 8
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @make_visible(%struct.tui_gen_win_info* %46, i32 %47)
  br label %49

49:                                               ; preds = %37, %26
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @tui_win_list, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = bitcast %struct.TYPE_8__* %54 to %struct.tui_gen_win_info*
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @make_visible(%struct.tui_gen_win_info* %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %15, %8
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %4

62:                                               ; preds = %4
  ret void
}

declare dso_local i64 @tui_win_is_source_type(i64) #1

declare dso_local i32 @make_visible(%struct.tui_gen_win_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
