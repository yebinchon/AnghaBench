; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c__pjdlogv_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c__pjdlogv_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PJDLOG_MAX_MSGSIZE = common dso_local global i32 0, align 4
@pjdlog_initialized = common dso_local global i64 0, align 8
@PJDLOG_INITIALIZED = common dso_local global i64 0, align 8
@pjdlog_mode = common dso_local global i64 0, align 8
@PJDLOG_MODE_STD = common dso_local global i64 0, align 8
@PJDLOG_MODE_SYSLOG = common dso_local global i64 0, align 8
@PJDLOG_MODE_SOCK = common dso_local global i64 0, align 8
@pjdlog_sock = common dso_local global i64 0, align 8
@LOG_EMERG = common dso_local global i32 0, align 4
@LOG_ALERT = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@pjdlog_debug_level = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_pjdlogv_common(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* @PJDLOG_MAX_MSGSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = load i64, i64* @pjdlog_initialized, align 8
  %29 = load i64, i64* @PJDLOG_INITIALIZED, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* @pjdlog_mode, align 8
  %34 = load i64, i64* @PJDLOG_MODE_STD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %8
  %37 = load i64, i64* @pjdlog_mode, align 8
  %38 = load i64, i64* @PJDLOG_MODE_SYSLOG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* @pjdlog_mode, align 8
  %42 = load i64, i64* @PJDLOG_MODE_SOCK, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %36, %8
  %45 = phi i1 [ true, %36 ], [ true, %8 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i64, i64* @pjdlog_mode, align 8
  %49 = load i64, i64* @PJDLOG_MODE_SOCK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* @pjdlog_sock, align 8
  %53 = icmp sge i64 %52, 0
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i1 [ true, %44 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @LOG_EMERG, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %89, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @LOG_ALERT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %89, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @LOG_CRIT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @LOG_WARNING, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @LOG_NOTICE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @LOG_INFO, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @LOG_DEBUG, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %81, %77, %73, %69, %65, %61, %54
  %90 = phi i1 [ true, %81 ], [ true, %77 ], [ true, %73 ], [ true, %69 ], [ true, %65 ], [ true, %61 ], [ true, %54 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @LOG_DEBUG, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %13, align 4
  %98 = icmp sgt i32 %97, 0
  br label %99

99:                                               ; preds = %96, %89
  %100 = phi i1 [ true, %89 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = icmp sle i32 %103, 127
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = icmp sge i32 %107, -1
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @LOG_DEBUG, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %99
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @pjdlog_debug_level, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 1, i32* %23, align 4
  br label %161

119:                                              ; preds = %114, %99
  %120 = load i32, i32* @errno, align 4
  store i32 %120, i32* %22, align 4
  %121 = trunc i64 %25 to i32
  %122 = load i8*, i8** %15, align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @vsnprintf(i8* %27, i32 %121, i8* %122, i32 %123)
  store i8* %27, i8** %19, align 8
  store i8* null, i8** %21, align 8
  br label %125

125:                                              ; preds = %145, %133, %119
  %126 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %126, i8** %20, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %147

128:                                              ; preds = %125
  %129 = load i8*, i8** %20, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %125

134:                                              ; preds = %128
  %135 = load i8*, i8** %21, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i8*, i8** %9, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i8*, i8** %21, align 8
  %144 = call i32 @pjdlogv_common_single_line(i8* %138, i8* %139, i32 %140, i32 %141, i32 %142, i32 -1, i8* %143)
  br label %145

145:                                              ; preds = %137, %134
  %146 = load i8*, i8** %20, align 8
  store i8* %146, i8** %21, align 8
  br label %125

147:                                              ; preds = %125
  %148 = load i8*, i8** %21, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i8*, i8** %9, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i8*, i8** %21, align 8
  %159 = call i32 @pjdlogv_common_single_line(i8* %152, i8* %153, i32 %154, i32 %155, i32 %156, i32 %157, i8* %158)
  %160 = load i32, i32* %22, align 4
  store i32 %160, i32* @errno, align 4
  store i32 0, i32* %23, align 4
  br label %161

161:                                              ; preds = %151, %118
  %162 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %23, align 4
  switch i32 %163, label %165 [
    i32 0, label %164
    i32 1, label %164
  ]

164:                                              ; preds = %161, %161
  ret void

165:                                              ; preds = %161
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @pjdlogv_common_single_line(i8*, i8*, i32, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
