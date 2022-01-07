; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_backtrace_command_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_backtrace_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.partial_symtab = type { i32 }

@target_has_stack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No stack.\00", align 1
@QUIT = common dso_local global i32 0, align 4
@info_verbose = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"(More stack frames follow...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @backtrace_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backtrace_command_1(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.frame_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.frame_info*, align 8
  %13 = alloca %struct.partial_symtab*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @target_has_stack, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %19, %struct.frame_info** %10, align 8
  %20 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %21 = icmp eq %struct.frame_info* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  store i32 0, i32* %11, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %63

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @parse_and_eval_long(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  store %struct.frame_info* %35, %struct.frame_info** %12, align 8
  br label %36

36:                                               ; preds = %45, %32
  %37 = load %struct.frame_info*, %struct.frame_info** %12, align 8
  %38 = icmp ne %struct.frame_info* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %40, 0
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load i32, i32* @QUIT, align 4
  %47 = load %struct.frame_info*, %struct.frame_info** %12, align 8
  %48 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %47)
  store %struct.frame_info* %48, %struct.frame_info** %12, align 8
  br label %36

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %53, %49
  %51 = load %struct.frame_info*, %struct.frame_info** %12, align 8
  %52 = icmp ne %struct.frame_info* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* @QUIT, align 4
  %55 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %56 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %55)
  store %struct.frame_info* %56, %struct.frame_info** %10, align 8
  %57 = load %struct.frame_info*, %struct.frame_info** %12, align 8
  %58 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %57)
  store %struct.frame_info* %58, %struct.frame_info** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %50

61:                                               ; preds = %50
  store i32 -1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %27
  br label %64

63:                                               ; preds = %24
  store i32 -1, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i64, i64* @info_verbose, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  store %struct.frame_info* %69, %struct.frame_info** %7, align 8
  br label %70

70:                                               ; preds = %90, %67
  %71 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %72 = icmp ne %struct.frame_info* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %9, align 4
  %76 = icmp ne i32 %74, 0
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ false, %70 ], [ %76, %73 ]
  br i1 %78, label %79, label %93

79:                                               ; preds = %77
  %80 = load i32, i32* @QUIT, align 4
  %81 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %82 = call i32 @get_frame_address_in_block(%struct.frame_info* %81)
  %83 = call %struct.partial_symtab* @find_pc_psymtab(i32 %82)
  store %struct.partial_symtab* %83, %struct.partial_symtab** %13, align 8
  %84 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  %85 = icmp ne %struct.partial_symtab* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.partial_symtab*, %struct.partial_symtab** %13, align 8
  %88 = call i32 @PSYMTAB_TO_SYMTAB(%struct.partial_symtab* %87)
  br label %89

89:                                               ; preds = %86, %79
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %92 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %91)
  store %struct.frame_info* %92, %struct.frame_info** %7, align 8
  br label %70

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93, %64
  store i32 0, i32* %9, align 4
  %95 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  store %struct.frame_info* %95, %struct.frame_info** %7, align 8
  br label %96

96:                                               ; preds = %119, %94
  %97 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %98 = icmp ne %struct.frame_info* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %8, align 4
  %102 = icmp ne i32 %100, 0
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  br i1 %104, label %105, label %124

105:                                              ; preds = %103
  %106 = load i32, i32* @QUIT, align 4
  %107 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 @print_frame_info(%struct.frame_info* %107, i32 %110, i32 0, i32 1)
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %116 = load i32, i32* @gdb_stdout, align 4
  %117 = call i32 @print_frame_local_vars(%struct.frame_info* %115, i32 1, i32 %116)
  br label %118

118:                                              ; preds = %114, %105
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %123 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %122)
  store %struct.frame_info* %123, %struct.frame_info** %7, align 8
  br label %96

124:                                              ; preds = %103
  %125 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %126 = icmp ne %struct.frame_info* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 @printf_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127, %124
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i32 @parse_and_eval_long(i8*) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local %struct.partial_symtab* @find_pc_psymtab(i32) #1

declare dso_local i32 @get_frame_address_in_block(%struct.frame_info*) #1

declare dso_local i32 @PSYMTAB_TO_SYMTAB(%struct.partial_symtab*) #1

declare dso_local i32 @print_frame_info(%struct.frame_info*, i32, i32, i32) #1

declare dso_local i32 @print_frame_local_vars(%struct.frame_info*, i32, i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
