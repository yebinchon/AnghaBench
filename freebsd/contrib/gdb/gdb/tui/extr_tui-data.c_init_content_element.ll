; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_init_content_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_init_content_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_element = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_14__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i32*, i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.tui_gen_win_info = type { i8**, i32 }

@FALSE = common dso_local global i8* null, align 8
@TUI_REGISTER = common dso_local global i32 0, align 4
@UNDEFINED_ITEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_content_element(%struct.tui_win_element* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_element*, align 8
  %4 = alloca i32, align 4
  store %struct.tui_win_element* %0, %struct.tui_win_element** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** @FALSE, align 8
  %6 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %7 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %6, i32 0, i32 1
  store i8* %5, i8** %7, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %110 [
    i32 128, label %9
    i32 131, label %9
    i32 132, label %29
    i32 134, label %50
    i32 133, label %55
    i32 129, label %83
    i32 130, label %104
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %11 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i8* null, i8** %13, align 8
  %14 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %15 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %21 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  store i8* %19, i8** %23, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %26 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  br label %111

29:                                               ; preds = %2
  %30 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %31 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = call i32 @tui_init_generic_part(%struct.TYPE_14__* %32)
  %34 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %35 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i32 133, i32* %37, align 8
  %38 = call i64 @tui_alloc_content(i32 1, i32 133)
  %39 = inttoptr i64 %38 to i8**
  %40 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %41 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  %43 = bitcast %struct.TYPE_14__* %42 to %struct.tui_gen_win_info*
  %44 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %43, i32 0, i32 0
  store i8** %39, i8*** %44, align 8
  %45 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %46 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  %48 = bitcast %struct.TYPE_14__* %47 to %struct.tui_gen_win_info*
  %49 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  br label %111

50:                                               ; preds = %2
  %51 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %52 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i8* null, i8** %54, align 8
  br label %111

55:                                               ; preds = %2
  %56 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %57 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i8* null, i8** %59, align 8
  %60 = load i32, i32* @TUI_REGISTER, align 4
  %61 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %62 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @UNDEFINED_ITEM, align 4
  %66 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %67 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  store i32 %65, i32* %69, align 8
  %70 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %71 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load i8*, i8** @FALSE, align 8
  %75 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %76 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i8* %74, i8** %78, align 8
  %79 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %80 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i8* null, i8** %82, align 8
  br label %111

83:                                               ; preds = %2
  %84 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %85 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 0, i8* %89, align 1
  %90 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %91 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 0, i8* %95, align 1
  %96 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %97 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %101 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  store i32 0, i32* %103, align 8
  br label %111

104:                                              ; preds = %2
  %105 = load %struct.tui_win_element*, %struct.tui_win_element** %3, align 8
  %106 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @memset(i32 %108, i8 signext 32, i32 4)
  br label %111

110:                                              ; preds = %2
  br label %111

111:                                              ; preds = %110, %104, %83, %55, %50, %29, %9
  ret void
}

declare dso_local i32 @tui_init_generic_part(%struct.TYPE_14__*) #1

declare dso_local i64 @tui_alloc_content(i32, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
