; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_make_invisible_and_set_new_height.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_make_invisible_and_set_new_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.tui_gen_win_info, %struct.TYPE_6__ }
%struct.tui_gen_win_info = type { i32, i32, i32, i32, i32*, i64*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tui_gen_win_info* }
%struct.tui_win_element = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@TUI_CMD_WIN = common dso_local global %struct.tui_win_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_win_info*, i32)* @make_invisible_and_set_new_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_invisible_and_set_new_height(%struct.tui_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_gen_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %8 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %7, i32 0, i32 0
  %9 = call i32 @tui_make_invisible(%struct.tui_gen_win_info* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %12 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %20 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %25 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %29 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %30 = icmp ne %struct.tui_win_info* %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %33 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %39 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %131 [
    i32 128, label %42
    i32 129, label %42
    i32 130, label %100
  ]

42:                                               ; preds = %37, %37
  %43 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %44 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %46, align 8
  store %struct.tui_gen_win_info* %47, %struct.tui_gen_win_info** %6, align 8
  %48 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %49 = call i32 @tui_make_invisible(%struct.tui_gen_win_info* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %52 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %54 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %59 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %42
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %67 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %42
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %71 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %74 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %75 = icmp ne %struct.tui_win_info* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %78 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %72
  %82 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %83 = call i32 @tui_win_has_locator(%struct.tui_win_info* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %86, %struct.tui_gen_win_info** %6, align 8
  %87 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %88 = call i32 @tui_make_invisible(%struct.tui_gen_win_info* %87)
  %89 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %90 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %93, %94
  %96 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %97 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  br label %99

99:                                               ; preds = %85, %81
  br label %132

100:                                              ; preds = %37
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %104 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %101
  %109 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %110 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %110, i32 0, i32 5
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.tui_win_element*
  %118 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = bitcast i32* %119 to %struct.tui_gen_win_info*
  store %struct.tui_gen_win_info* %120, %struct.tui_gen_win_info** %6, align 8
  %121 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %122 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @tui_delete_win(i32* %123)
  %125 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %126 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %125, i32 0, i32 4
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %108
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %101

130:                                              ; preds = %101
  br label %132

131:                                              ; preds = %37
  br label %132

132:                                              ; preds = %131, %130, %99
  ret void
}

declare dso_local i32 @tui_make_invisible(%struct.tui_gen_win_info*) #1

declare dso_local i32 @tui_win_has_locator(%struct.tui_win_info*) #1

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @tui_delete_win(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
