; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_run.c_db_stop_at_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_run.c_db_stop_at_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@db_run_mode = common dso_local global i64 0, align 8
@STEP_INVISIBLE = common dso_local global i64 0, align 8
@STEP_CONTINUE = common dso_local global i64 0, align 8
@STEP_COUNT = common dso_local global i64 0, align 8
@STEP_ONCE = common dso_local global i64 0, align 8
@db_loop_count = common dso_local global i64 0, align 8
@db_sstep_print = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@STEP_RETURN = common dso_local global i64 0, align 8
@db_call_depth = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"[after %6d]     \00", align 1
@db_inst_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@STEP_CALLT = common dso_local global i64 0, align 8
@BKPT_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_stop_at_pc(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @IS_BREAKPOINT_TRAP(i32 %15, i32 %16)
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IS_WATCHPOINT_TRAP(i32 %19, i32 %20)
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = call i8* (...) @PC_REGS()
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @db_pc_is_singlestep(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %4
  %30 = call i32 (...) @db_clear_single_step()
  %31 = call i32 (...) @db_clear_breakpoints()
  %32 = call i32 (...) @db_clear_watchpoints()
  %33 = load i8*, i8** %10, align 8
  %34 = call %struct.TYPE_3__* @db_find_breakpoint_here(i8* %33)
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %11, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32*, i32** %8, align 8
  store i32 1, i32* %49, align 4
  store i32 1, i32* %5, align 4
  br label %160

50:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %160

51:                                               ; preds = %29
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %51
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %8, align 8
  store i32 0, i32* %58, align 4
  %59 = load i64, i64* @db_run_mode, align 8
  %60 = load i64, i64* @STEP_INVISIBLE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @STEP_CONTINUE, align 8
  store i64 %63, i64* @db_run_mode, align 8
  store i32 0, i32* %5, align 4
  br label %160

64:                                               ; preds = %57
  %65 = load i64, i64* @db_run_mode, align 8
  %66 = load i64, i64* @STEP_COUNT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %160

69:                                               ; preds = %64
  %70 = load i64, i64* @db_run_mode, align 8
  %71 = load i64, i64* @STEP_ONCE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i64, i64* @db_loop_count, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* @db_loop_count, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i64, i64* @db_sstep_print, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @db_print_loc_and_inst(i8* %82)
  br label %84

84:                                               ; preds = %80, %77
  store i32 0, i32* %5, align 4
  br label %160

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %69
  %87 = load i64, i64* @db_run_mode, align 8
  %88 = load i64, i64* @STEP_RETURN, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %139

90:                                               ; preds = %86
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @db_get_value(i8* %91, i32 4, i32 0)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @inst_trap_return(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %138, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = call i64 @inst_return(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i64, i64* @db_call_depth, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* @db_call_depth, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %100, %96
  %105 = load i64, i64* @db_sstep_print, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @inst_call(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %12, align 4
  %113 = call i64 @inst_return(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %111, %107
  %116 = load i32, i32* @db_inst_count, align 4
  %117 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i64, i64* @db_call_depth, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %124, %115
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %13, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %120

126:                                              ; preds = %120
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @db_print_loc_and_inst(i8* %127)
  br label %129

129:                                              ; preds = %126, %111
  br label %130

130:                                              ; preds = %129, %104
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @inst_call(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i64, i64* @db_call_depth, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* @db_call_depth, align 8
  br label %137

137:                                              ; preds = %134, %130
  store i32 0, i32* %5, align 4
  br label %160

138:                                              ; preds = %100, %90
  br label %139

139:                                              ; preds = %138, %86
  %140 = load i64, i64* @db_run_mode, align 8
  %141 = load i64, i64* @STEP_CALLT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @db_get_value(i8* %144, i32 4, i32 0)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i64 @inst_call(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %14, align 4
  %151 = call i64 @inst_return(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @inst_trap_return(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %160

158:                                              ; preds = %153, %149, %143
  br label %159

159:                                              ; preds = %158, %139
  store i32 1, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %157, %137, %84, %68, %62, %50, %43
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @IS_BREAKPOINT_TRAP(i32, i32) #1

declare dso_local i32 @IS_WATCHPOINT_TRAP(i32, i32) #1

declare dso_local i8* @PC_REGS(...) #1

declare dso_local i64 @db_pc_is_singlestep(i8*) #1

declare dso_local i32 @db_clear_single_step(...) #1

declare dso_local i32 @db_clear_breakpoints(...) #1

declare dso_local i32 @db_clear_watchpoints(...) #1

declare dso_local %struct.TYPE_3__* @db_find_breakpoint_here(i8*) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_print_loc_and_inst(i8*) #1

declare dso_local i32 @db_get_value(i8*, i32, i32) #1

declare dso_local i32 @inst_trap_return(i32) #1

declare dso_local i64 @inst_return(i32) #1

declare dso_local i64 @inst_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
