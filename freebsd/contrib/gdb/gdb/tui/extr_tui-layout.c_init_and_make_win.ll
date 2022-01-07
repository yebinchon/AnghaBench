; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_init_and_make_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_init_and_make_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i64 }
%struct.tui_win_info = type { i32, %struct.tui_gen_win_info }

@CMD_WIN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32, i32, i32, i32, i32)* @init_and_make_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_and_make_win(i8** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.tui_gen_win_info*, align 8
  store i8** %0, i8*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i8**, i8*** %8, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %7
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @tui_win_is_auxillary(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i64 (...) @tui_alloc_generic_win_info()
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %15, align 8
  br label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @tui_alloc_win_info(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %15, align 8
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %7
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @tui_win_is_auxillary(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %15, align 8
  %39 = bitcast i8* %38 to %struct.tui_gen_win_info*
  store %struct.tui_gen_win_info* %39, %struct.tui_gen_win_info** %16, align 8
  br label %44

40:                                               ; preds = %33
  %41 = load i8*, i8** %15, align 8
  %42 = bitcast i8* %41 to %struct.tui_win_info*
  %43 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %42, i32 0, i32 1
  store %struct.tui_gen_win_info* %43, %struct.tui_gen_win_info** %16, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %79

47:                                               ; preds = %44
  %48 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %16, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @tui_win_is_auxillary(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %47
  %59 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %16, align 8
  %60 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CMD_WIN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i8*, i8** %15, align 8
  %67 = bitcast i8* %66 to %struct.tui_win_info*
  %68 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  br label %74

69:                                               ; preds = %58
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = bitcast i8* %71 to %struct.tui_win_info*
  %73 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %47
  %76 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %16, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @tui_make_window(%struct.tui_gen_win_info* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %44
  %80 = load i8*, i8** %15, align 8
  %81 = load i8**, i8*** %8, align 8
  store i8* %80, i8** %81, align 8
  ret void
}

declare dso_local i64 @tui_win_is_auxillary(i32) #1

declare dso_local i64 @tui_alloc_generic_win_info(...) #1

declare dso_local i64 @tui_alloc_win_info(i32) #1

declare dso_local i32 @init_gen_win_info(%struct.tui_gen_win_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_make_window(%struct.tui_gen_win_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
