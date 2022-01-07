; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_show_source_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_show_source_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64* }
%struct.tui_win_element = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@A_STANDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_win_info*, i32)* @tui_show_source_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_show_source_line(%struct.tui_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tui_win_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %9 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.tui_win_element*
  store %struct.tui_win_element* %17, %struct.tui_win_element** %5, align 8
  %18 = load %struct.tui_win_element*, %struct.tui_win_element** %5, align 8
  %19 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %26 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @A_STANDOUT, align 4
  %30 = call i32 @wattron(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %33 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.tui_win_element*, %struct.tui_win_element** %5, align 8
  %38 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mvwaddstr(i32 %35, i32 %36, i32 1, i32 %41)
  %43 = load %struct.tui_win_element*, %struct.tui_win_element** %5, align 8
  %44 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %31
  %50 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %51 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @A_STANDOUT, align 4
  %55 = call i32 @wattroff(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %31
  %57 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %58 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @getyx(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %72, %56
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %68 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %74 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @waddch(i32 %76, i8 signext 32)
  %78 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %79 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @getyx(i32 %81, i32 %82, i32 %83)
  br label %64

85:                                               ; preds = %64
  ret void
}

declare dso_local i32 @wattron(i32, i32) #1

declare dso_local i32 @mvwaddstr(i32, i32, i32, i32) #1

declare dso_local i32 @wattroff(i32, i32) #1

declare dso_local i32 @getyx(i32, i32, i32) #1

declare dso_local i32 @waddch(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
