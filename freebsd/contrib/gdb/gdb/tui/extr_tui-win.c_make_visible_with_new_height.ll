; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_make_visible_with_new_height.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_make_visible_with_new_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.tui_win_info = type { %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_12__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.symtab = type { i32 }
%union.tui_line_or_address = type { i32 }
%struct.symtab_and_line = type { i32, %struct.symtab* }

@TRUE = common dso_local global i32 0, align 4
@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_win_info*)* @make_visible_with_new_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_visible_with_new_height(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca %struct.symtab*, align 8
  %4 = alloca %union.tui_line_or_address, align 4
  %5 = alloca %struct.symtab_and_line, align 8
  %6 = alloca %union.tui_line_or_address, align 4
  %7 = alloca %struct.symtab_and_line, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %8 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %9 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %8, i32 0, i32 1
  %10 = call i32 @tui_make_visible(%struct.TYPE_12__* %9)
  %11 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %12 = call i32 @tui_check_and_display_highlight_if_needed(%struct.tui_win_info* %11)
  %13 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %14 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %145 [
    i32 128, label %17
    i32 129, label %17
    i32 130, label %119
    i32 131, label %121
  ]

17:                                               ; preds = %1, %1
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %19 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = call i32 @tui_free_win_content(%struct.TYPE_12__* %22)
  %24 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %25 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = call i32 @tui_make_visible(%struct.TYPE_12__* %28)
  %30 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %31 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %74

35:                                               ; preds = %17
  %36 = call { i32, %struct.symtab* } (...) @get_current_source_symtab_and_line()
  %37 = bitcast %struct.symtab_and_line* %5 to { i32, %struct.symtab* }*
  %38 = getelementptr inbounds { i32, %struct.symtab* }, { i32, %struct.symtab* }* %37, i32 0, i32 0
  %39 = extractvalue { i32, %struct.symtab* } %36, 0
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds { i32, %struct.symtab* }, { i32, %struct.symtab* }* %37, i32 0, i32 1
  %41 = extractvalue { i32, %struct.symtab* } %36, 1
  store %struct.symtab* %41, %struct.symtab** %40, align 8
  %42 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %43 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %49 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %union.tui_line_or_address* %4 to i32*
  store i32 %53, i32* %54, align 4
  br label %63

55:                                               ; preds = %35
  %56 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %57 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = bitcast %union.tui_line_or_address* %4 to i32*
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %47
  %64 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %65 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %64, i32 0, i32 1
  %66 = call i32 @tui_free_win_content(%struct.TYPE_12__* %65)
  %67 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %68 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 1
  %69 = load %struct.symtab*, %struct.symtab** %68, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %4, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @tui_update_source_window(%struct.tui_win_info* %67, %struct.symtab* %69, i32 %72, i32 %70)
  br label %110

74:                                               ; preds = %17
  %75 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %76 = icmp ne %struct.frame_info* %75, null
  br i1 %76, label %77, label %109

77:                                               ; preds = %74
  %78 = call { i32, %struct.symtab* } (...) @get_current_source_symtab_and_line()
  %79 = bitcast %struct.symtab_and_line* %7 to { i32, %struct.symtab* }*
  %80 = getelementptr inbounds { i32, %struct.symtab* }, { i32, %struct.symtab* }* %79, i32 0, i32 0
  %81 = extractvalue { i32, %struct.symtab* } %78, 0
  store i32 %81, i32* %80, align 8
  %82 = getelementptr inbounds { i32, %struct.symtab* }, { i32, %struct.symtab* }* %79, i32 0, i32 1
  %83 = extractvalue { i32, %struct.symtab* } %78, 1
  store %struct.symtab* %83, %struct.symtab** %82, align 8
  %84 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %85 = call i32 @get_frame_pc(%struct.frame_info* %84)
  %86 = call %struct.symtab* @find_pc_symtab(i32 %85)
  store %struct.symtab* %86, %struct.symtab** %3, align 8
  %87 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %88 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 128
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = bitcast %union.tui_line_or_address* %6 to i32*
  store i32 %94, i32* %95, align 4
  br label %102

96:                                               ; preds = %77
  %97 = load %struct.symtab*, %struct.symtab** %3, align 8
  %98 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = bitcast %union.tui_line_or_address* %6 to i32*
  %101 = call i32 @find_line_pc(%struct.symtab* %97, i32 %99, i32* %100)
  br label %102

102:                                              ; preds = %96, %92
  %103 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %104 = load %struct.symtab*, %struct.symtab** %3, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = getelementptr inbounds %union.tui_line_or_address, %union.tui_line_or_address* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @tui_update_source_window(%struct.tui_win_info* %103, %struct.symtab* %104, i32 %107, i32 %105)
  br label %109

109:                                              ; preds = %102, %74
  br label %110

110:                                              ; preds = %109, %63
  %111 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %112 = call i32 @tui_win_has_locator(%struct.tui_win_info* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = call %struct.TYPE_12__* (...) @tui_locator_win_info_ptr()
  %116 = call i32 @tui_make_visible(%struct.TYPE_12__* %115)
  %117 = call i32 (...) @tui_show_locator_content()
  br label %118

118:                                              ; preds = %114, %110
  br label %146

119:                                              ; preds = %1
  %120 = call i32 (...) @tui_display_all_data()
  br label %146

121:                                              ; preds = %1
  %122 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %123 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %127 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %131 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %135 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %140 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @wmove(i32 %133, i32 %138, i32 %143)
  br label %146

145:                                              ; preds = %1
  br label %146

146:                                              ; preds = %145, %121, %119, %118
  ret void
}

declare dso_local i32 @tui_make_visible(%struct.TYPE_12__*) #1

declare dso_local i32 @tui_check_and_display_highlight_if_needed(%struct.tui_win_info*) #1

declare dso_local i32 @tui_free_win_content(%struct.TYPE_12__*) #1

declare dso_local { i32, %struct.symtab* } @get_current_source_symtab_and_line(...) #1

declare dso_local i32 @tui_update_source_window(%struct.tui_win_info*, %struct.symtab*, i32, i32) #1

declare dso_local %struct.symtab* @find_pc_symtab(i32) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @find_line_pc(%struct.symtab*, i32, i32*) #1

declare dso_local i32 @tui_win_has_locator(%struct.tui_win_info*) #1

declare dso_local %struct.TYPE_12__* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @tui_show_locator_content(...) #1

declare dso_local i32 @tui_display_all_data(...) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
