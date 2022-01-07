; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_msyslog.c_addto_syslog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_msyslog.c_addto_syslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@addto_syslog.prevcall_progname = internal global i8* null, align 8
@addto_syslog.prog = internal global i8* null, align 8
@__const.addto_syslog.nl = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@DIR_SEP = common dso_local global i32 0, align 4
@msyslog_term = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@syslogit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@syslog_file = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@msyslog_include_timestamp = common dso_local global i64 0, align 8
@msyslog_term_pid = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s[%d]: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s[%d]: %s%s\00", align 1
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addto_syslog(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.addto_syslog.nl, i32 0, i32 0), i64 2, i1 false)
  %14 = bitcast [1 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 1, i1 false)
  %15 = load i8*, i8** @progname, align 8
  %16 = load i8*, i8** @addto_syslog.prevcall_progname, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i8*, i8** @progname, align 8
  store i8* %19, i8** @addto_syslog.prevcall_progname, align 8
  %20 = load i8*, i8** @progname, align 8
  %21 = load i32, i32* @DIR_SEP, align 4
  %22 = call i8* @strrchr(i8* %20, i32 %21)
  store i8* %22, i8** @addto_syslog.prog, align 8
  %23 = load i8*, i8** @addto_syslog.prog, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** @addto_syslog.prog, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** @addto_syslog.prog, align 8
  br label %30

28:                                               ; preds = %18
  %29 = load i8*, i8** @progname, align 8
  store i8* %29, i8** @addto_syslog.prog, align 8
  br label %30

30:                                               ; preds = %28, %25
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* @msyslog_term, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* @syslogit, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @syslog(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %48

40:                                               ; preds = %31
  %41 = load i32*, i32** @syslog_file, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %9, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %137

55:                                               ; preds = %51, %48
  %56 = load i64, i64* @msyslog_include_timestamp, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i8* (...) @humanlogtime()
  store i8* %59, i8** %12, align 8
  br label %61

60:                                               ; preds = %55
  store i8* null, i8** %12, align 8
  br label %61

61:                                               ; preds = %60, %58
  %62 = load i64, i64* @msyslog_term_pid, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61
  %68 = call i32 (...) @getpid()
  store i32 %68, i32* %10, align 4
  br label %70

69:                                               ; preds = %64
  store i32 -1, i32* %10, align 4
  br label %70

70:                                               ; preds = %69, %67
  %71 = load i8*, i8** %4, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 10, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8* %81, i8** %11, align 8
  br label %84

82:                                               ; preds = %70
  %83 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8* %83, i8** %11, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @LOG_ERR, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32*, i32** @stderr, align 8
  br label %95

93:                                               ; preds = %87
  %94 = load i32*, i32** @stdout, align 8
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32* [ %92, %91 ], [ %94, %93 ]
  store i32* %96, i32** %7, align 8
  %97 = load i64, i64* @msyslog_include_timestamp, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32*, i32** %7, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i64, i64* @msyslog_term_pid, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32*, i32** %7, align 8
  %108 = load i8*, i8** @addto_syslog.prog, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32*, i32** %7, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %113, i8* %114)
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @fflush(i32* %116)
  br label %118

118:                                              ; preds = %111, %84
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i64, i64* @msyslog_include_timestamp, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32*, i32** @syslog_file, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32*, i32** @syslog_file, align 8
  %130 = load i8*, i8** @addto_syslog.prog, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i8*, i8** %4, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %130, i32 %131, i8* %132, i8* %133)
  %135 = load i32*, i32** @syslog_file, align 8
  %136 = call i32 @fflush(i32* %135)
  br label %137

137:                                              ; preds = %54, %128, %118
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strrchr(i8*, i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*) #2

declare dso_local i8* @humanlogtime(...) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i32 @fflush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
