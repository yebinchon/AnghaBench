; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_free_data_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_free_data_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tui_gen_win_info }
%struct.tui_gen_win_info = type { i32* }

@DATA_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_free_data_content(%struct.TYPE_6__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_gen_win_info*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.tui_gen_win_info* %18, %struct.tui_gen_win_info** %6, align 8
  %19 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %20 = icmp ne %struct.tui_gen_win_info* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %23 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @tui_delete_win(i32* %24)
  %26 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %27 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %29 = call i32 @tui_free_win_content(%struct.tui_gen_win_info* %28)
  br label %30

30:                                               ; preds = %21, %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @DATA_WIN, align 4
  %38 = call i32 @free_content(%struct.TYPE_6__** %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @tui_delete_win(i32*) #1

declare dso_local i32 @tui_free_win_content(%struct.tui_gen_win_info*) #1

declare dso_local i32 @free_content(%struct.TYPE_6__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
