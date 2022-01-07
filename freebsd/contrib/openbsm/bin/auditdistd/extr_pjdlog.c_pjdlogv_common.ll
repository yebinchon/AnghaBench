; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_pjdlog.c_pjdlogv_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_pjdlog.c_pjdlogv_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pjdlog_initialized = common dso_local global i64 0, align 8
@PJDLOG_INITIALIZED = common dso_local global i64 0, align 8
@pjdlog_debug_level = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@pjdlog_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid loglevel.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@pjdlog_prefix = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c": %s.\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Invalid mode.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pjdlogv_common(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* @pjdlog_initialized, align 8
  %16 = load i64, i64* @PJDLOG_INITIALIZED, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 134
  br i1 %21, label %43, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 137
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 136
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 133
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 130
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 131
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 132
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 135
  br label %43

43:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %5
  %44 = phi i1 [ true, %37 ], [ true, %34 ], [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %5 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 135
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 0
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i1 [ true, %43 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, -1
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 135
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @pjdlog_debug_level, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %161

67:                                               ; preds = %62, %52
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @pjdlog_mode, align 4
  switch i32 %69, label %157 [
    i32 129, label %70
    i32 128, label %113
  ]

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  switch i32 %71, label %76 [
    i32 134, label %72
    i32 137, label %72
    i32 136, label %72
    i32 133, label %72
    i32 130, label %72
    i32 131, label %74
    i32 132, label %74
    i32 135, label %74
  ]

72:                                               ; preds = %70, %70, %70, %70, %70
  %73 = load i32*, i32** @stderr, align 8
  store i32* %73, i32** %12, align 8
  br label %79

74:                                               ; preds = %70, %70, %70
  %75 = load i32*, i32** @stdout, align 8
  store i32* %75, i32** %12, align 8
  br label %79

76:                                               ; preds = %70
  %77 = call i32 @assert(i32 0)
  %78 = call i32 (...) @abort() #3
  unreachable

79:                                               ; preds = %74, %72
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 (...) @getpid()
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i8* @pjdlog_level_string(i32 %84)
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 135
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %79
  %94 = load i32*, i32** %12, align 8
  %95 = load i8*, i8** @pjdlog_prefix, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  %97 = load i32*, i32** %12, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @vfprintf(i32* %97, i8* %98, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i8* @strerror(i32 %105)
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %103, %93
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @fflush(i32* %111)
  br label %159

113:                                              ; preds = %67
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %115 = load i8*, i8** @pjdlog_prefix, align 8
  %116 = call i32 @snprintf(i8* %114, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %118, 1024
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = sub i64 1024, %126
  %128 = trunc i64 %127 to i32
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @vsnprintf(i8* %124, i32 %128, i8* %129, i32 %130)
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %120, %113
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp ult i64 %139, 1024
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = sub i64 1024, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %8, align 4
  %151 = call i8* @strerror(i32 %150)
  %152 = call i32 @snprintf(i8* %145, i32 %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %141, %137, %134
  %154 = load i32, i32* %6, align 4
  %155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %156 = call i32 @syslog(i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %155)
  br label %159

157:                                              ; preds = %67
  %158 = call i32 @assert(i32 0)
  br label %159

159:                                              ; preds = %157, %153, %108
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* @errno, align 4
  br label %161

161:                                              ; preds = %159, %66
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i8* @pjdlog_level_string(i32) #1

declare dso_local i32 @vfprintf(i32*, i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
