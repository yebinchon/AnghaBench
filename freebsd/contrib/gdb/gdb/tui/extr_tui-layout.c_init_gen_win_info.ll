; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_init_gen_win_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_init_gen_win_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CMD_WIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_gen_win_info*, i32, i32, i32, i32, i32)* @init_gen_win_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_gen_win_info(%struct.tui_gen_win_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.tui_gen_win_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tui_gen_win_info* %0, %struct.tui_gen_win_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %17 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %20 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %23 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %43

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %30 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %32 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @CMD_WIN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %39 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %26
  br label %46

43:                                               ; preds = %6
  %44 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %45 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %49 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %53 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
