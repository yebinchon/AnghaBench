; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_parse_frame_specification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_parse_frame_specification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.cleanup = type { i32 }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Too many args in frame specification\00", align 1
@xfree = common dso_local global i32 0, align 4
@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"No selected frame.\00", align 1
@MAXARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_info* @parse_frame_specification(i8* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cleanup*, align 8
  %10 = alloca %struct.value*, align 8
  %11 = alloca %struct.frame_info*, align 8
  %12 = alloca %struct.frame_info*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %91

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %21, %15
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  br label %16

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %88, %24
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %90

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8*, i8** %3, align 8
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 32
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %36

52:                                               ; preds = %46
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i8* @savestring(i8* %53, i32 %59)
  store i8* %60, i8** %7, align 8
  %61 = load i32, i32* @xfree, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call %struct.cleanup* @make_cleanup(i32 %61, i8* %62)
  store %struct.cleanup* %63, %struct.cleanup** %9, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call %struct.value* @parse_and_eval(i8* %64)
  store %struct.value* %65, %struct.value** %10, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load %struct.value*, %struct.value** %10, align 8
  %70 = call i32 @value_as_long(%struct.value* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %52
  %72 = load %struct.value*, %struct.value** %10, align 8
  %73 = call i32 @value_as_address(%struct.value* %72)
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %79 = call i32 @do_cleanups(%struct.cleanup* %78)
  br label %80

80:                                               ; preds = %85, %71
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 32
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  br label %80

88:                                               ; preds = %80
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %3, align 8
  br label %25

90:                                               ; preds = %25
  br label %91

91:                                               ; preds = %90, %1
  %92 = load i32, i32* %4, align 4
  switch i32 %92, label %144 [
    i32 0, label %93
    i32 1, label %100
  ]

93:                                               ; preds = %91
  %94 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %95 = icmp eq %struct.frame_info* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  store %struct.frame_info* %99, %struct.frame_info** %2, align 8
  br label %153

100:                                              ; preds = %91
  %101 = call %struct.frame_info* (...) @get_current_frame()
  %102 = call %struct.frame_info* @find_relative_frame(%struct.frame_info* %101, i32* %6)
  store %struct.frame_info* %102, %struct.frame_info** %11, align 8
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  store %struct.frame_info* %106, %struct.frame_info** %2, align 8
  br label %153

107:                                              ; preds = %100
  %108 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %108, %struct.frame_info** %11, align 8
  br label %109

109:                                              ; preds = %121, %107
  %110 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %111 = icmp ne %struct.frame_info* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %114 = call i32 @get_frame_base(%struct.frame_info* %113)
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = icmp ne i32 %114, %116
  br label %118

118:                                              ; preds = %112, %109
  %119 = phi i1 [ false, %109 ], [ %117, %112 ]
  br i1 %119, label %120, label %124

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %123 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %122)
  store %struct.frame_info* %123, %struct.frame_info** %11, align 8
  br label %109

124:                                              ; preds = %118
  %125 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %126 = icmp ne %struct.frame_info* %125, null
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %140, %127
  %129 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %130 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %129)
  store %struct.frame_info* %130, %struct.frame_info** %12, align 8
  %131 = icmp ne %struct.frame_info* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load %struct.frame_info*, %struct.frame_info** %12, align 8
  %134 = call i32 @get_frame_base(%struct.frame_info* %133)
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = icmp eq i32 %134, %136
  br label %138

138:                                              ; preds = %132, %128
  %139 = phi i1 [ false, %128 ], [ %137, %132 ]
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = load %struct.frame_info*, %struct.frame_info** %12, align 8
  store %struct.frame_info* %141, %struct.frame_info** %11, align 8
  br label %128

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142, %124
  br label %144

144:                                              ; preds = %91, %143
  %145 = load i32, i32* %4, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %149 = load i32, i32* %148, align 16
  %150 = call %struct.frame_info* @create_new_frame(i32 %149, i32 0)
  store %struct.frame_info* %150, %struct.frame_info** %2, align 8
  br label %153

151:                                              ; preds = %144
  %152 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %98, %105, %147, %151
  %154 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  ret %struct.frame_info* %154
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local %struct.value* @parse_and_eval(i8*) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @value_as_address(%struct.value*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local %struct.frame_info* @find_relative_frame(%struct.frame_info*, i32*) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i32 @get_frame_base(%struct.frame_info*) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local %struct.frame_info* @create_new_frame(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
