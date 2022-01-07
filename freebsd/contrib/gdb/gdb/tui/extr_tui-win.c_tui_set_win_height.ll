; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_set_win_height.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_set_win_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [81 x i8] c"Invalid window specified. \0AThe window name specified must be valid and visible.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TUI_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid window height specified.\0A%s\00", align 1
@WIN_HEIGHT_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tui_set_win_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_set_win_height(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tui_win_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = call i32 (...) @tui_enable()
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %147

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @xstrdup(i8* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 32)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %137

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  store i8 0, i8* %27, align 1
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %44, %26
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call signext i8 @toupper(i8 signext %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load i8*, i8** %7, align 8
  %49 = call %struct.tui_win_info* @tui_partial_win_by_name(i8* %48)
  store %struct.tui_win_info* %49, %struct.tui_win_info** %10, align 8
  %50 = load %struct.tui_win_info*, %struct.tui_win_info** %10, align 8
  %51 = icmp eq %struct.tui_win_info* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.tui_win_info*, %struct.tui_win_info** %10, align 8
  %54 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52, %47
  %59 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  br label %136

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %67, %60
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %61

68:                                               ; preds = %61
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %135

73:                                               ; preds = %68
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 43
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 45
  br i1 %84, label %85, label %96

85:                                               ; preds = %80, %73
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 45
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  br label %96

96:                                               ; preds = %92, %80
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @atoi(i8* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 %105, -1
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %8, align 4
  br label %119

112:                                              ; preds = %107
  %113 = load %struct.tui_win_info*, %struct.tui_win_info** %10, align 8
  %114 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %112, %110
  %120 = load %struct.tui_win_info*, %struct.tui_win_info** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i64 @tui_adjust_win_heights(%struct.tui_win_info* %120, i32 %121)
  %123 = load i64, i64* @TUI_FAILURE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @WIN_HEIGHT_USAGE, align 4
  %127 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %130

128:                                              ; preds = %119
  %129 = call i32 (...) @tui_update_gdb_sizes()
  br label %130

130:                                              ; preds = %128, %125
  br label %134

131:                                              ; preds = %96
  %132 = load i32, i32* @WIN_HEIGHT_USAGE, align 4
  %133 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %131, %130
  br label %135

135:                                              ; preds = %134, %68
  br label %136

136:                                              ; preds = %135, %58
  br label %140

137:                                              ; preds = %17
  %138 = load i32, i32* @WIN_HEIGHT_USAGE, align 4
  %139 = call i32 @printf_filtered(i32 %138)
  br label %140

140:                                              ; preds = %137, %136
  %141 = load i8*, i8** %5, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @xfree(i8* %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %150

147:                                              ; preds = %2
  %148 = load i32, i32* @WIN_HEIGHT_USAGE, align 4
  %149 = call i32 @printf_filtered(i32 %148)
  br label %150

150:                                              ; preds = %147, %146
  ret void
}

declare dso_local i32 @tui_enable(...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local %struct.tui_win_info* @tui_partial_win_by_name(i8*) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @tui_adjust_win_heights(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_update_gdb_sizes(...) #1

declare dso_local i32 @printf_filtered(i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
