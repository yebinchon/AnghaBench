; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-source.c_tui_set_source_content_nil.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-source.c_tui_set_source_content_nil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64* }
%struct.tui_win_element = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_set_source_content_nil(%struct.tui_win_info* %0, i8* %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tui_win_element*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %14 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %19 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %126, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %26 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %129

30:                                               ; preds = %23
  %31 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %32 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.tui_win_element*
  store %struct.tui_win_element* %39, %struct.tui_win_element** %8, align 8
  %40 = load %struct.tui_win_element*, %struct.tui_win_element** %8, align 8
  %41 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load %struct.tui_win_element*, %struct.tui_win_element** %8, align 8
  %47 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i8* %45, i8** %49, align 8
  %50 = load i8*, i8** @FALSE, align 8
  %51 = load %struct.tui_win_element*, %struct.tui_win_element** %8, align 8
  %52 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = load %struct.tui_win_element*, %struct.tui_win_element** %8, align 8
  %56 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 %63, 1
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %126

66:                                               ; preds = %30
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @strlen(i8* %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.tui_win_element*, %struct.tui_win_element** %8, align 8
  %70 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sdiv i32 %76, 2
  %78 = icmp sge i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  store i32 1, i32* %10, align 4
  br label %86

80:                                               ; preds = %66
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sdiv i32 %82, 2
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %80, %79
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %96, %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 32, i8* %95, align 1
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %87

99:                                               ; preds = %87
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %118, %99
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 32, i8* %117, align 1
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %109

121:                                              ; preds = %109
  %122 = load i8*, i8** %12, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 10, i8* %125, align 1
  br label %126

126:                                              ; preds = %121, %30
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %23

129:                                              ; preds = %23
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
