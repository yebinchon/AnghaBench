; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-out.c_tui_field_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-out.c_tui_field_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@ui_noalign = common dso_local global i32 0, align 4
@ui_right = common dso_local global i32 0, align 4
@ui_left = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_field_string(%struct.ui_out* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.ui_out*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %17 = call %struct.TYPE_3__* @ui_out_data(%struct.ui_out* %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %15, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %119

23:                                               ; preds = %6
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @tui_show_source(i8* %45, i64 %48)
  br label %50

50:                                               ; preds = %44, %35
  br label %119

51:                                               ; preds = %31, %26, %23
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @ui_noalign, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %51
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %89

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @ui_right, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %88

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @ui_left, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %87

81:                                               ; preds = %75
  %82 = load i32, i32* %13, align 4
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %81, %79
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %69
  br label %90

90:                                               ; preds = %89, %59, %51
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @ui_out_spaces(%struct.ui_out* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i8*, i8** %12, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @out_field_fmt(%struct.ui_out* %101, i32 %102, i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @ui_out_spaces(%struct.ui_out* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @ui_noalign, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 (...) @field_separator()
  br label %119

119:                                              ; preds = %22, %50, %117, %113
  ret void
}

declare dso_local %struct.TYPE_3__* @ui_out_data(%struct.ui_out*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @tui_show_source(i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ui_out_spaces(%struct.ui_out*, i32) #1

declare dso_local i32 @out_field_fmt(%struct.ui_out*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @field_separator(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
