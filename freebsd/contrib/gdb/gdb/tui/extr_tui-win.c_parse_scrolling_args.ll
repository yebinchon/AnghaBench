; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_parse_scrolling_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_parse_scrolling_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64* }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Invalid window specified. \0AThe window name specified must be valid and visible.\0A\00", align 1
@TUI_CMD_WIN = common dso_local global %struct.tui_win_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.tui_win_info**, i32*)* @parse_scrolling_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_scrolling_args(i8* %0, %struct.tui_win_info** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tui_win_info**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.tui_win_info** %1, %struct.tui_win_info*** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = call %struct.tui_win_info* (...) @tui_win_with_focus()
  %18 = load %struct.tui_win_info**, %struct.tui_win_info*** %5, align 8
  store %struct.tui_win_info* %17, %struct.tui_win_info** %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %133

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @xstrdup(i8* %22)
  store i8* %23, i8** %8, align 8
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isdigit(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 32)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  store i8 0, i8* %35, align 1
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @atoi(i8* %39)
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  br label %53

45:                                               ; preds = %28
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @atoi(i8* %49)
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %130

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %69, %62
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %63

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  store i8* %77, i8** %10, align 8
  br label %79

78:                                               ; preds = %71
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %79

79:                                               ; preds = %78, %76
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call signext i8 @toupper(i8 signext %90)
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 %91, i8* %95, align 1
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %80

99:                                               ; preds = %80
  %100 = load i8*, i8** %10, align 8
  %101 = call %struct.tui_win_info* @tui_partial_win_by_name(i8* %100)
  %102 = load %struct.tui_win_info**, %struct.tui_win_info*** %5, align 8
  store %struct.tui_win_info* %101, %struct.tui_win_info** %102, align 8
  %103 = load %struct.tui_win_info**, %struct.tui_win_info*** %5, align 8
  %104 = load %struct.tui_win_info*, %struct.tui_win_info** %103, align 8
  %105 = icmp eq %struct.tui_win_info* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load %struct.tui_win_info**, %struct.tui_win_info*** %5, align 8
  %108 = load %struct.tui_win_info*, %struct.tui_win_info** %107, align 8
  %109 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106, %99
  %114 = call i32 @warning(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  br label %129

115:                                              ; preds = %106
  %116 = load %struct.tui_win_info**, %struct.tui_win_info*** %5, align 8
  %117 = load %struct.tui_win_info*, %struct.tui_win_info** %116, align 8
  %118 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %119 = icmp eq %struct.tui_win_info* %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = call %struct.TYPE_4__* (...) @tui_source_windows()
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.tui_win_info*
  %127 = load %struct.tui_win_info**, %struct.tui_win_info*** %5, align 8
  store %struct.tui_win_info* %126, %struct.tui_win_info** %127, align 8
  br label %128

128:                                              ; preds = %120, %115
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %54
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @xfree(i8* %131)
  br label %133

133:                                              ; preds = %130, %16
  ret void
}

declare dso_local %struct.tui_win_info* @tui_win_with_focus(...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local %struct.tui_win_info* @tui_partial_win_by_name(i8*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local %struct.TYPE_4__* @tui_source_windows(...) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
