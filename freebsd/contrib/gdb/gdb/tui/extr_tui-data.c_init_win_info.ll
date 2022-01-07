; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_init_win_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_init_win_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_11__, %struct.TYPE_12__, i8*, i8* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i32, i8*, i32, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i8*, %struct.tui_gen_win_info* }
%struct.TYPE_7__ = type { i32 }
%struct.tui_gen_win_info = type { i32 }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@TUI_UNDEFINED_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_win_info(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %3 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %4 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %3, i32 0, i32 1
  %5 = call i32 @tui_init_generic_part(%struct.TYPE_12__* %4)
  %6 = load i8*, i8** @FALSE, align 8
  %7 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %8 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %10 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %9, i32 0, i32 3
  store i8* %6, i8** %10, align 8
  %11 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %12 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %82 [
    i32 128, label %15
    i32 129, label %15
    i32 130, label %38
    i32 131, label %73
  ]

15:                                               ; preds = %1, %1
  %16 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %17 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  store %struct.tui_gen_win_info* null, %struct.tui_gen_win_info** %19, align 8
  %20 = load i8*, i8** @FALSE, align 8
  %21 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %22 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i8* %20, i8** %24, align 8
  %25 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %26 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %30 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %35 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %86

38:                                               ; preds = %1
  %39 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %40 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 7
  store i8* null, i8** %42, align 8
  %43 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %44 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  store i32 0, i32* %46, align 8
  %47 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %48 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  store i8* null, i8** %50, align 8
  %51 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %52 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @TUI_UNDEFINED_REGS, align 4
  %56 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %57 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  store i32 %55, i32* %59, align 8
  %60 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %61 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i8*, i8** @FALSE, align 8
  %65 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %66 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i8* %64, i8** %68, align 8
  %69 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %70 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %86

73:                                               ; preds = %1
  %74 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %75 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %79 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %86

82:                                               ; preds = %1
  %83 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %84 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %82, %73, %38, %15
  ret void
}

declare dso_local i32 @tui_init_generic_part(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
