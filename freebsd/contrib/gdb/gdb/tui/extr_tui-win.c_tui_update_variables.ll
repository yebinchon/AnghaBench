; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_update_variables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_update_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_translate = type { i64 }

@tui_border_mode = common dso_local global i32 0, align 4
@tui_border_mode_translate = common dso_local global i32 0, align 4
@tui_border_attrs = common dso_local global i64 0, align 8
@tui_active_border_mode = common dso_local global i32 0, align 4
@tui_active_border_attrs = common dso_local global i64 0, align 8
@tui_border_kind = common dso_local global i32 0, align 4
@tui_border_kind_translate_lrcorner = common dso_local global i32 0, align 4
@tui_border_lrcorner = common dso_local global i64 0, align 8
@ACS_LRCORNER = common dso_local global i64 0, align 8
@tui_border_kind_translate_llcorner = common dso_local global i32 0, align 4
@ACS_LLCORNER = common dso_local global i64 0, align 8
@tui_border_llcorner = common dso_local global i64 0, align 8
@tui_border_kind_translate_ulcorner = common dso_local global i32 0, align 4
@ACS_ULCORNER = common dso_local global i64 0, align 8
@tui_border_ulcorner = common dso_local global i64 0, align 8
@tui_border_kind_translate_urcorner = common dso_local global i32 0, align 4
@ACS_URCORNER = common dso_local global i64 0, align 8
@tui_border_urcorner = common dso_local global i64 0, align 8
@tui_border_kind_translate_hline = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i64 0, align 8
@tui_border_hline = common dso_local global i64 0, align 8
@tui_border_kind_translate_vline = common dso_local global i32 0, align 4
@ACS_VLINE = common dso_local global i64 0, align 8
@tui_border_vline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_update_variables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tui_translate*, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @tui_border_mode, align 4
  %4 = load i32, i32* @tui_border_mode_translate, align 4
  %5 = call %struct.tui_translate* @translate(i32 %3, i32 %4)
  store %struct.tui_translate* %5, %struct.tui_translate** %2, align 8
  %6 = load i64, i64* @tui_border_attrs, align 8
  %7 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %8 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %13 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* @tui_border_attrs, align 8
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %0
  %16 = load i32, i32* @tui_active_border_mode, align 4
  %17 = load i32, i32* @tui_border_mode_translate, align 4
  %18 = call %struct.tui_translate* @translate(i32 %16, i32 %17)
  store %struct.tui_translate* %18, %struct.tui_translate** %2, align 8
  %19 = load i64, i64* @tui_active_border_attrs, align 8
  %20 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %21 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %26 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* @tui_active_border_attrs, align 8
  store i32 1, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %15
  %29 = load i32, i32* @tui_border_kind, align 4
  %30 = load i32, i32* @tui_border_kind_translate_lrcorner, align 4
  %31 = call %struct.tui_translate* @translate(i32 %29, i32 %30)
  store %struct.tui_translate* %31, %struct.tui_translate** %2, align 8
  %32 = load i64, i64* @tui_border_lrcorner, align 8
  %33 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %34 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %39 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @ACS_LRCORNER, align 8
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %46 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i64 [ %43, %42 ], [ %47, %44 ]
  store i64 %49, i64* @tui_border_lrcorner, align 8
  store i32 1, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %28
  %51 = load i32, i32* @tui_border_kind, align 4
  %52 = load i32, i32* @tui_border_kind_translate_llcorner, align 4
  %53 = call %struct.tui_translate* @translate(i32 %51, i32 %52)
  store %struct.tui_translate* %53, %struct.tui_translate** %2, align 8
  %54 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %55 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* @ACS_LLCORNER, align 8
  br label %64

60:                                               ; preds = %50
  %61 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %62 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  br label %64

64:                                               ; preds = %60, %58
  %65 = phi i64 [ %59, %58 ], [ %63, %60 ]
  store i64 %65, i64* @tui_border_llcorner, align 8
  %66 = load i32, i32* @tui_border_kind, align 4
  %67 = load i32, i32* @tui_border_kind_translate_ulcorner, align 4
  %68 = call %struct.tui_translate* @translate(i32 %66, i32 %67)
  store %struct.tui_translate* %68, %struct.tui_translate** %2, align 8
  %69 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %70 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i64, i64* @ACS_ULCORNER, align 8
  br label %79

75:                                               ; preds = %64
  %76 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %77 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  br label %79

79:                                               ; preds = %75, %73
  %80 = phi i64 [ %74, %73 ], [ %78, %75 ]
  store i64 %80, i64* @tui_border_ulcorner, align 8
  %81 = load i32, i32* @tui_border_kind, align 4
  %82 = load i32, i32* @tui_border_kind_translate_urcorner, align 4
  %83 = call %struct.tui_translate* @translate(i32 %81, i32 %82)
  store %struct.tui_translate* %83, %struct.tui_translate** %2, align 8
  %84 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %85 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i64, i64* @ACS_URCORNER, align 8
  br label %94

90:                                               ; preds = %79
  %91 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %92 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi i64 [ %89, %88 ], [ %93, %90 ]
  store i64 %95, i64* @tui_border_urcorner, align 8
  %96 = load i32, i32* @tui_border_kind, align 4
  %97 = load i32, i32* @tui_border_kind_translate_hline, align 4
  %98 = call %struct.tui_translate* @translate(i32 %96, i32 %97)
  store %struct.tui_translate* %98, %struct.tui_translate** %2, align 8
  %99 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %100 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i64, i64* @ACS_HLINE, align 8
  br label %109

105:                                              ; preds = %94
  %106 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %107 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  br label %109

109:                                              ; preds = %105, %103
  %110 = phi i64 [ %104, %103 ], [ %108, %105 ]
  store i64 %110, i64* @tui_border_hline, align 8
  %111 = load i32, i32* @tui_border_kind, align 4
  %112 = load i32, i32* @tui_border_kind_translate_vline, align 4
  %113 = call %struct.tui_translate* @translate(i32 %111, i32 %112)
  store %struct.tui_translate* %113, %struct.tui_translate** %2, align 8
  %114 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %115 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i64, i64* @ACS_VLINE, align 8
  br label %124

120:                                              ; preds = %109
  %121 = load %struct.tui_translate*, %struct.tui_translate** %2, align 8
  %122 = getelementptr inbounds %struct.tui_translate, %struct.tui_translate* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  br label %124

124:                                              ; preds = %120, %118
  %125 = phi i64 [ %119, %118 ], [ %123, %120 ]
  store i64 %125, i64* @tui_border_vline, align 8
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local %struct.tui_translate* @translate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
