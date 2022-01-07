; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_refresh_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_refresh_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i64, i64, i32*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tui_gen_win_info }

@DATA_WIN = common dso_local global i64 0, align 8
@CMD_WIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_refresh_win(%struct.tui_gen_win_info* %0) #0 {
  %2 = alloca %struct.tui_gen_win_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tui_gen_win_info*, align 8
  store %struct.tui_gen_win_info* %0, %struct.tui_gen_win_info** %2, align 8
  %5 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %6 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DATA_WIN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %12 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %47, %15
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %20 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %25 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_4__**
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.tui_gen_win_info* %33, %struct.tui_gen_win_info** %4, align 8
  %34 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %35 = icmp ne %struct.tui_gen_win_info* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %23
  %37 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %38 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %43 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @wrefresh(i32* %44)
  br label %46

46:                                               ; preds = %41, %36, %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %16

50:                                               ; preds = %16
  br label %70

51:                                               ; preds = %10, %1
  %52 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %53 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CMD_WIN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %69

58:                                               ; preds = %51
  %59 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %60 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %65 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @wrefresh(i32* %66)
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %50
  ret void
}

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
