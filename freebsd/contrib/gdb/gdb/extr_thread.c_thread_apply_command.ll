; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_thread_apply_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_thread_apply_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }
%struct.thread_info = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Please specify a thread ID list\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Please specify a command following the thread ID list\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Error parsing %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unknown thread %d.\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Thread %d has terminated.\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\0AThread %d (%s):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @thread_apply_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_apply_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.thread_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %2
  %21 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i8*, i8** %3, align 8
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %38, %22
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @isalpha(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i1 [ false, %24 ], [ %34, %29 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %24

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* @inferior_ptid, align 4
  %50 = call %struct.cleanup* @make_cleanup_restore_current_thread(i32 %49)
  store %struct.cleanup* %50, %struct.cleanup** %7, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @xstrdup(i8* %51)
  store i8* %52, i8** %9, align 8
  %53 = load i32, i32* @xfree, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call %struct.cleanup* @make_cleanup(i32 %53, i8* %54)
  store %struct.cleanup* %55, %struct.cleanup** %8, align 8
  br label %56

56:                                               ; preds = %164, %48
  %57 = load i8*, i8** %3, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %60, label %165

60:                                               ; preds = %56
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @strtol(i8* %61, i8** %6, i32 10)
  store i32 %62, i32* %11, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load i8*, i8** %6, align 8
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %83, %69
  %72 = load i8*, i8** %3, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 9
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ true, %71 ], [ %80, %76 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %3, align 8
  br label %71

86:                                               ; preds = %81
  %87 = load i8*, i8** %3, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 45
  br i1 %90, label %91, label %120

91:                                               ; preds = %86
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %3, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @strtol(i8* %94, i8** %6, i32 10)
  store i32 %95, i32* %12, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %91
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** %3, align 8
  br label %104

104:                                              ; preds = %116, %102
  %105 = load i8*, i8** %3, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 32
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %3, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 9
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi i1 [ true, %104 ], [ %113, %109 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %3, align 8
  br label %104

119:                                              ; preds = %114
  br label %122

120:                                              ; preds = %86
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %120, %119
  br label %123

123:                                              ; preds = %161, %122
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %164

127:                                              ; preds = %123
  %128 = load i32, i32* %11, align 4
  %129 = call %struct.thread_info* @find_thread_id(i32 %128)
  store %struct.thread_info* %129, %struct.thread_info** %10, align 8
  %130 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %131 = icmp ne %struct.thread_info* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %160

135:                                              ; preds = %127
  %136 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %137 = call i32 @thread_alive(%struct.thread_info* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %159

142:                                              ; preds = %135
  %143 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %144 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @switch_to_thread(i32 %145)
  %147 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %148 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @inferior_ptid, align 4
  %151 = call i32 @target_pid_to_str(i32 %150)
  %152 = call i32 @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %151)
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @execute_command(i8* %153, i32 %154)
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 @strcpy(i8* %156, i8* %157)
  br label %159

159:                                              ; preds = %142, %139
  br label %160

160:                                              ; preds = %159, %132
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %123

164:                                              ; preds = %123
  br label %56

165:                                              ; preds = %56
  %166 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %167 = call i32 @do_cleanups(%struct.cleanup* %166)
  %168 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %169 = call i32 @do_cleanups(%struct.cleanup* %168)
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local %struct.cleanup* @make_cleanup_restore_current_thread(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.thread_info* @find_thread_id(i32) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @thread_alive(%struct.thread_info*) #1

declare dso_local i32 @switch_to_thread(i32) #1

declare dso_local i32 @printf_filtered(i8*, i32, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @execute_command(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
