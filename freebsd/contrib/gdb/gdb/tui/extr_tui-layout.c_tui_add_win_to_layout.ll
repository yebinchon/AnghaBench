; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_add_win_to_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_add_win_to_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRC_COMMAND = common dso_local global i32 0, align 4
@SRC_DISASSEM_COMMAND = common dso_local global i32 0, align 4
@SRC_DATA_COMMAND = common dso_local global i32 0, align 4
@DISASSEM_DATA_COMMAND = common dso_local global i32 0, align 4
@DISASSEM_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_add_win_to_layout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @tui_current_layout()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %76 [
    i32 128, label %6
    i32 129, label %31
    i32 130, label %56
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SRC_COMMAND, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SRC_DISASSEM_COMMAND, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SRC_DATA_COMMAND, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = call i32 (...) @tui_clear_source_windows_detail()
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @DISASSEM_DATA_COMMAND, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @SRC_DATA_COMMAND, align 4
  %25 = call i32 @show_layout(i32 %24)
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @SRC_COMMAND, align 4
  %28 = call i32 @show_layout(i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %14, %10, %6
  br label %77

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @DISASSEM_COMMAND, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SRC_DISASSEM_COMMAND, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @DISASSEM_DATA_COMMAND, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = call i32 (...) @tui_clear_source_windows_detail()
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SRC_DATA_COMMAND, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @DISASSEM_DATA_COMMAND, align 4
  %50 = call i32 @show_layout(i32 %49)
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @DISASSEM_COMMAND, align 4
  %53 = call i32 @show_layout(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %39, %35, %31
  br label %77

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SRC_DATA_COMMAND, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @DISASSEM_DATA_COMMAND, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @DISASSEM_COMMAND, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @DISASSEM_DATA_COMMAND, align 4
  %70 = call i32 @show_layout(i32 %69)
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @SRC_DATA_COMMAND, align 4
  %73 = call i32 @show_layout(i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %60, %56
  br label %77

76:                                               ; preds = %1
  br label %77

77:                                               ; preds = %76, %75, %55, %30
  ret void
}

declare dso_local i32 @tui_current_layout(...) #1

declare dso_local i32 @tui_clear_source_windows_detail(...) #1

declare dso_local i32 @show_layout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
