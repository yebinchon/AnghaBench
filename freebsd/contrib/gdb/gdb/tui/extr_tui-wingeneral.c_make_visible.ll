; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_make_visible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_make_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i64, i32*, i64 }

@CMD_WIN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_gen_win_info*, i32)* @make_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_visible(%struct.tui_gen_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_gen_win_info*, align 8
  %4 = alloca i32, align 4
  store %struct.tui_gen_win_info* %0, %struct.tui_gen_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %6 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CMD_WIN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %66

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %16 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %14
  %20 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %21 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %22 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CMD_WIN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %28 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @tui_win_is_auxillary(i64 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %26, %19
  %34 = phi i1 [ false, %19 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @tui_make_window(%struct.tui_gen_win_info* %20, i32 %35)
  %37 = load i64, i64* @TRUE, align 8
  %38 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %39 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %33, %14
  br label %65

41:                                               ; preds = %11
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %41
  %45 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %46 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %51 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i64, i64* @FALSE, align 8
  %56 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %57 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %59 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @tui_delete_win(i32* %60)
  %62 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %63 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %54, %49, %44, %41
  br label %65

65:                                               ; preds = %64, %40
  br label %66

66:                                               ; preds = %65, %10
  ret void
}

declare dso_local i32 @tui_make_window(%struct.tui_gen_win_info*, i32) #1

declare dso_local i32 @tui_win_is_auxillary(i64) #1

declare dso_local i32 @tui_delete_win(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
