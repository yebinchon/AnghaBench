; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_finish_tfind_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_finish_tfind_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Target failed to find requested trace frame.\00", align 1
@info_verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"End of trace buffer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Bogus reply from target: %s\00", align 1
@deprecated_selected_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @finish_tfind_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_tfind_command(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %13 = call i32 (...) @get_current_frame()
  %14 = call i64 @get_frame_base(i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = call i32 (...) @read_pc()
  %16 = call %struct.symbol* @find_pc_function(i32 %15)
  store %struct.symbol* %16, %struct.symbol** %10, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @putpkt(i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i8* @remote_get_noisy_reply(i8* %19, i64 %20)
  store i8* %21, i8** %11, align 8
  br label %22

22:                                               ; preds = %88, %3
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %89

32:                                               ; preds = %30
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %85 [
    i32 70, label %36
    i32 84, label %57
    i32 79, label %66
  ]

36:                                               ; preds = %32
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  %39 = call i64 @strtol(i8* %38, i8** %11, i32 16)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %55

47:                                               ; preds = %42
  %48 = load i32, i32* @info_verbose, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @printf_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @trace_find_command(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i8* null, i8** %11, align 8
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %36
  br label %88

57:                                               ; preds = %32
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %11, align 8
  %60 = call i64 @strtol(i8* %59, i8** %11, i32 16)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  br label %88

66:                                               ; preds = %32
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 75
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %11, align 8
  br label %84

81:                                               ; preds = %72, %66
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %88

85:                                               ; preds = %32
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %84, %65, %56
  br label %22

89:                                               ; preds = %30
  %90 = call i32 (...) @flush_cached_frames()
  %91 = call i32 (...) @registers_changed()
  %92 = call i32 (...) @get_current_frame()
  %93 = call i32 @select_frame(i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @set_traceframe_num(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @set_tracepoint_num(i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = call i32 @set_traceframe_context(i32 -1)
  br label %105

102:                                              ; preds = %89
  %103 = call i32 (...) @read_pc()
  %104 = call i32 @set_traceframe_context(i32 %103)
  br label %105

105:                                              ; preds = %102, %100
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load %struct.symbol*, %struct.symbol** %10, align 8
  %110 = call i32 (...) @read_pc()
  %111 = call %struct.symbol* @find_pc_function(i32 %110)
  %112 = icmp eq %struct.symbol* %109, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load i64, i64* %9, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  %117 = call i32 (...) @get_current_frame()
  %118 = call i64 @get_frame_base(i32 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load i64, i64* %9, align 8
  %122 = call i32 (...) @get_current_frame()
  %123 = call i64 @get_frame_base(i32 %122)
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %120, %116, %113
  store i32 -1, i32* %12, align 4
  br label %127

126:                                              ; preds = %120, %108
  store i32 1, i32* %12, align 4
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32, i32* @deprecated_selected_frame, align 4
  %129 = load i32, i32* @deprecated_selected_frame, align 4
  %130 = call i32 @frame_relative_level(i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @print_stack_frame(i32 %128, i32 %130, i32 %131)
  %133 = call i32 (...) @do_displays()
  br label %134

134:                                              ; preds = %127, %105
  ret void
}

declare dso_local i64 @get_frame_base(i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local %struct.symbol* @find_pc_function(i32) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i8* @remote_get_noisy_reply(i8*, i64) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @trace_find_command(i8*, i32) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @select_frame(i32) #1

declare dso_local i32 @set_traceframe_num(i32) #1

declare dso_local i32 @set_tracepoint_num(i32) #1

declare dso_local i32 @set_traceframe_context(i32) #1

declare dso_local i32 @print_stack_frame(i32, i32, i32) #1

declare dso_local i32 @frame_relative_level(i32) #1

declare dso_local i32 @do_displays(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
