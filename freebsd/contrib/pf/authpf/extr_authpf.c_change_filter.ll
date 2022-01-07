; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_change_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_change_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"pfctl\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/dev/pf\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"anchor/ruleset\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"user_id=X\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"user_ip=X\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@__const.change_filter.pargv = private unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@LOG_ERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"invalid luser/ipsrc\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@anchorname = common dso_local global i32 0, align 4
@rulesetname = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"/dev/fd/%d\00", align 1
@dev = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"user_ip=%s\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"user_id=%s\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"%s/%s/authpf.rules\00", align 1
@PATH_USER_DIR = common dso_local global i32 0, align 4
@PATH_PFRULES = common dso_local global i32 0, align 4
@user_ip = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"setregid\00", align 1
@PATH_PFCTL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"exec of %s failed\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"pfctl exited abnormally\00", align 1
@Tstart = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"allowing %s, user %s\00", align 1
@Tend = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.22 = private unnamed_addr constant [43 x i8] c"removed %s, user %s - duration %ju seconds\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @change_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_filter(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.stat, align 4
  %17 = alloca [13 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %138

20:                                               ; preds = %3
  %21 = bitcast [13 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([13 x i8*]* @__const.change_filter.pargv to i8*), i64 104, i1 false)
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %29, %24, %20
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = call i32 (i32, i8*, ...) @syslog(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %153

40:                                               ; preds = %32
  %41 = load i32, i32* @anchorname, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** @rulesetname, align 8
  %45 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %43, i8* %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %150

48:                                               ; preds = %40
  %49 = load i32, i32* @dev, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %150

55:                                               ; preds = %48
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %150

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %150

65:                                               ; preds = %60
  %66 = load i32, i32* @PATH_USER_DIR, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %68, i8* %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %150

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @stat(i8* %74, %struct.stat* %16)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i32, i32* @PATH_PFRULES, align 4
  %81 = call i8* @strdup(i32 %80)
  store i8* %81, i8** %12, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %150

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %73
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 2
  store i8* %86, i8** %87, align 16
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 5
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 7
  store i8* %90, i8** %91, align 8
  %92 = load i64, i64* @user_ip, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 9
  store i8* %95, i8** %96, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 11
  store i8* %97, i8** %98, align 8
  br label %104

99:                                               ; preds = %85
  %100 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %100, align 16
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 9
  store i8* %101, i8** %102, align 8
  %103 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 10
  store i8* null, i8** %103, align 16
  br label %104

104:                                              ; preds = %99, %94
  %105 = call i32 (...) @fork()
  store i32 %105, i32* %13, align 4
  switch i32 %105, label %124 [
    i32 -1, label %106
    i32 0, label %109
  ]

106:                                              ; preds = %104
  %107 = load i32, i32* @LOG_ERR, align 4
  %108 = call i32 (i32, i8*, ...) @syslog(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %153

109:                                              ; preds = %104
  %110 = call i32 (...) @getgid()
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @setregid(i32 %111, i32 %112)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %109
  %118 = load i32, i32* @PATH_PFCTL, align 4
  %119 = getelementptr inbounds [13 x i8*], [13 x i8*]* %17, i64 0, i64 0
  %120 = call i32 @execvp(i32 %118, i8** %119)
  %121 = load i32, i32* @PATH_PFCTL, align 4
  %122 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %121)
  %123 = call i32 @_exit(i32 1) #4
  unreachable

124:                                              ; preds = %104
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @waitpid(i32 %125, i32* %15, i32 0)
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @LOG_ERR, align 4
  %131 = call i32 (i32, i8*, ...) @syslog(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  br label %153

132:                                              ; preds = %124
  %133 = call i32 @gettimeofday(%struct.TYPE_4__* @Tstart, i32* null)
  %134 = load i32, i32* @LOG_INFO, align 4
  %135 = load i8*, i8** %7, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 (i32, i8*, ...) @syslog(i32 %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %135, i8* %136)
  br label %149

138:                                              ; preds = %3
  %139 = call i32 (...) @remove_stale_rulesets()
  %140 = call i32 @gettimeofday(%struct.TYPE_4__* @Tend, i32* null)
  %141 = load i32, i32* @LOG_INFO, align 4
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Tend, i32 0, i32 0), align 8
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Tstart, i32 0, i32 0), align 8
  %146 = sub nsw i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 (i32, i8*, ...) @syslog(i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i8* %142, i8* %143, i32 %147)
  br label %149

149:                                              ; preds = %138, %132
  store i32 0, i32* %4, align 4
  br label %164

150:                                              ; preds = %83, %72, %64, %59, %54, %47
  %151 = load i32, i32* @LOG_ERR, align 4
  %152 = call i32 (i32, i8*, ...) @syslog(i32 %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %129, %106, %37
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @free(i8* %160)
  %162 = load i8*, i8** %12, align 8
  %163 = call i32 @free(i8* %162)
  store i32 -1, i32* %4, align 4
  br label %164

164:                                              ; preds = %153, %149
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @getgid(...) #2

declare dso_local i32 @setregid(i32, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @execvp(i32, i8**) #2

declare dso_local i32 @warn(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @gettimeofday(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @remove_stale_rulesets(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
