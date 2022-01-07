; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_display_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_display_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_data_element = type { i64, i32 }
%struct.tui_gen_win_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_data_element*, %struct.tui_gen_win_info*)* @tui_display_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_display_register(%struct.tui_data_element* %0, %struct.tui_gen_win_info* %1) #0 {
  %3 = alloca %struct.tui_data_element*, align 8
  %4 = alloca %struct.tui_gen_win_info*, align 8
  %5 = alloca i32, align 4
  store %struct.tui_data_element* %0, %struct.tui_data_element** %3, align 8
  store %struct.tui_gen_win_info* %1, %struct.tui_gen_win_info** %4, align 8
  %6 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %7 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %69

10:                                               ; preds = %2
  %11 = load %struct.tui_data_element*, %struct.tui_data_element** %3, align 8
  %12 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %17 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @wstandout(i32* %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %22 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @wmove(i32* %23, i32 0, i32 0)
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %36, %20
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %28 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %33 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @waddch(i32* %34, i8 signext 32)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %41 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @wmove(i32* %42, i32 0, i32 0)
  %44 = load %struct.tui_data_element*, %struct.tui_data_element** %3, align 8
  %45 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %50 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.tui_data_element*, %struct.tui_data_element** %3, align 8
  %53 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @waddstr(i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %48, %39
  %57 = load %struct.tui_data_element*, %struct.tui_data_element** %3, align 8
  %58 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %63 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @wstandend(i32* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %68 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %67)
  br label %69

69:                                               ; preds = %66, %2
  ret void
}

declare dso_local i32 @wstandout(i32*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i32 @waddstr(i32*, i32) #1

declare dso_local i32 @wstandend(i32*) #1

declare dso_local i32 @tui_refresh_win(%struct.tui_gen_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
