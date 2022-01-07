; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_partial_win_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_partial_win_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { i32 }

@MAX_MAJOR_WINDOWS = common dso_local global i32 0, align 4
@tui_win_list = common dso_local global %struct.tui_win_info** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tui_win_info* @tui_partial_win_by_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.tui_win_info* null, %struct.tui_win_info** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %56

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %52, %8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAX_MAJOR_WINDOWS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %15 = icmp eq %struct.tui_win_info* %14, null
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %55

18:                                               ; preds = %16
  %19 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %19, i64 %21
  %23 = load %struct.tui_win_info*, %struct.tui_win_info** %22, align 8
  %24 = icmp ne %struct.tui_win_info* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %18
  %26 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %26, i64 %28
  %30 = load %struct.tui_win_info*, %struct.tui_win_info** %29, align 8
  %31 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %30, i32 0, i32 0
  %32 = call i8* @tui_win_name(i32* %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = icmp sle i64 %34, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %25
  %39 = load i8*, i8** %2, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = call i64 @strncmp(i8* %39, i8* %40, i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.tui_win_info**, %struct.tui_win_info*** @tui_win_list, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %46, i64 %48
  %50 = load %struct.tui_win_info*, %struct.tui_win_info** %49, align 8
  store %struct.tui_win_info* %50, %struct.tui_win_info** %3, align 8
  br label %51

51:                                               ; preds = %45, %38, %25
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %9

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  ret %struct.tui_win_info* %57
}

declare dso_local i8* @tui_win_name(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
