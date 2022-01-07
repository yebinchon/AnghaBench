; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-stack.c_tui_show_locator_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-stack.c_tui_show_locator_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i32, i32*, i64* }
%struct.tui_win_element = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_show_locator_content() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.tui_gen_win_info*, align 8
  %3 = alloca %struct.tui_win_element*, align 8
  %4 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %4, %struct.tui_gen_win_info** %2, align 8
  %5 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %6 = icmp ne %struct.tui_gen_win_info* %5, null
  br i1 %6, label %7, label %55

7:                                                ; preds = %0
  %8 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %9 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %7
  %13 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %14 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.tui_win_element*
  store %struct.tui_win_element* %18, %struct.tui_win_element** %3, align 8
  %19 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %20 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i8* @tui_make_status_line(i32* %21)
  store i8* %22, i8** %1, align 8
  %23 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %24 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @wmove(i32* %25, i32 0, i32 0)
  %27 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %28 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @wstandout(i32* %29)
  %31 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %32 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @waddstr(i32* %33, i8* %34)
  %36 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %37 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @wclrtoeol(i32* %38)
  %40 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %41 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @wstandend(i32* %42)
  %44 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %45 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %44)
  %46 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %47 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @wmove(i32* %48, i32 0, i32 0)
  %50 = load i8*, i8** %1, align 8
  %51 = call i32 @xfree(i8* %50)
  %52 = load i32, i32* @TRUE, align 4
  %53 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %2, align 8
  %54 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %12, %7, %0
  ret void
}

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i8* @tui_make_status_line(i32*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wstandout(i32*) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @wclrtoeol(i32*) #1

declare dso_local i32 @wstandend(i32*) #1

declare dso_local i32 @tui_refresh_win(%struct.tui_gen_win_info*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
