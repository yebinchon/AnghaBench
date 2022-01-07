; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ocsp.c_spawn_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ocsp.c_spawn_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prog = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"fatal: error detaching from parent process group: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@multi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"child PID array\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@noteterm = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@termsig = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"fatal: internal error: no matching child slot for pid: %ld\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"child process: %ld, exit status: %d\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"child process: %ld, term signal %d%s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINTR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"fatal: waitpid(): %s\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"fatal: RAND_poll() failed\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"fatal: internal error: no free child slots\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"terminating on signal: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @spawn_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spawn_loop() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64* null, i64** %1, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @prog, align 4
  %7 = load i32, i32* @LOG_PID, align 4
  %8 = load i32, i32* @LOG_DAEMON, align 4
  %9 = call i32 @openlog(i32 %6, i32 %7, i32 %8)
  %10 = call i64 @setpgid(i32 0, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %0
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = load i64, i64* @errno, align 8
  %15 = call i64 @strerror(i64 %14)
  %16 = call i32 (i32, i8*, ...) @syslog(i32 %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %0
  %19 = load i32, i32* @multi, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i64* @app_malloc(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i64* %23, i64** %1, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %33, %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @multi, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i64*, i64** %1, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %24

36:                                               ; preds = %24
  %37 = load i32, i32* @SIGINT, align 4
  %38 = load i32, i32* @noteterm, align 4
  %39 = call i32 @signal(i32 %37, i32 %38)
  %40 = load i32, i32* @SIGTERM, align 4
  %41 = load i32, i32* @noteterm, align 4
  %42 = call i32 @signal(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %196, %36
  %44 = load i64, i64* @termsig, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %197

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %132, %46
  %48 = load i64, i64* @termsig, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @multi, align 4
  %53 = icmp sge i32 %51, %52
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %133

56:                                               ; preds = %54
  %57 = call i64 @waitpid(i32 -1, i32* %2, i32 0)
  store i64 %57, i64* %5, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %120

59:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i64*, i64** %1, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i64*, i64** %1, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %60

83:                                               ; preds = %72, %60
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @multi, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* @LOG_ERR, align 4
  %89 = load i64, i64* %5, align 8
  %90 = call i32 (i32, i8*, ...) @syslog(i32 %88, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  %91 = load i64*, i64** %1, align 8
  %92 = call i32 @killall(i32 1, i64* %91)
  br label %93

93:                                               ; preds = %87, %83
  %94 = load i32, i32* %2, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = load i32, i32* %2, align 4
  %98 = call i64 @WIFEXITED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @LOG_WARNING, align 4
  %102 = load i64, i64* %5, align 8
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @WEXITSTATUS(i32 %103)
  %105 = call i32 (i32, i8*, ...) @syslog(i32 %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %102, i32 %104)
  br label %117

106:                                              ; preds = %96
  %107 = load i32, i32* %2, align 4
  %108 = call i64 @WIFSIGNALED(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* @LOG_WARNING, align 4
  %112 = load i64, i64* %5, align 8
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @WTERMSIG(i32 %113)
  %115 = call i32 (i32, i8*, ...) @syslog(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %112, i32 %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %110, %106
  br label %117

117:                                              ; preds = %116, %100
  %118 = call i32 @sleep(i32 1)
  br label %119

119:                                              ; preds = %117, %93
  br label %133

120:                                              ; preds = %56
  %121 = load i64, i64* @errno, align 8
  %122 = load i64, i64* @EINTR, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i32, i32* @LOG_ERR, align 4
  %126 = load i64, i64* @errno, align 8
  %127 = call i64 @strerror(i64 %126)
  %128 = call i32 (i32, i8*, ...) @syslog(i32 %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %127)
  %129 = load i64*, i64** %1, align 8
  %130 = call i32 @killall(i32 1, i64* %129)
  br label %131

131:                                              ; preds = %124, %120
  br label %132

132:                                              ; preds = %131
  br label %47

133:                                              ; preds = %119, %54
  %134 = load i64, i64* @termsig, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %197

137:                                              ; preds = %133
  %138 = call i64 (...) @fork()
  store i64 %138, i64* %5, align 8
  switch i64 %138, label %162 [
    i64 -1, label %139
    i64 0, label %141
  ]

139:                                              ; preds = %137
  %140 = call i32 @sleep(i32 30)
  br label %196

141:                                              ; preds = %137
  %142 = load i64*, i64** %1, align 8
  %143 = call i32 @OPENSSL_free(i64* %142)
  %144 = load i32, i32* @SIGINT, align 4
  %145 = load i32, i32* @SIG_DFL, align 4
  %146 = call i32 @signal(i32 %144, i32 %145)
  %147 = load i32, i32* @SIGTERM, align 4
  %148 = load i32, i32* @SIG_DFL, align 4
  %149 = call i32 @signal(i32 %147, i32 %148)
  %150 = load i64, i64* @termsig, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = call i32 @_exit(i32 0) #3
  unreachable

154:                                              ; preds = %141
  %155 = call i32 (...) @RAND_poll()
  %156 = icmp sle i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* @LOG_ERR, align 4
  %159 = call i32 (i32, i8*, ...) @syslog(i32 %158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %160 = call i32 @_exit(i32 1) #3
  unreachable

161:                                              ; preds = %154
  br label %203

162:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %183, %162
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @multi, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %163
  %168 = load i64*, i64** %1, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load i64, i64* %5, align 8
  %176 = load i64*, i64** %1, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  store i64 %175, i64* %179, align 8
  %180 = load i32, i32* %3, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %3, align 4
  br label %186

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %163

186:                                              ; preds = %174, %163
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @multi, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i32, i32* @LOG_ERR, align 4
  %192 = call i32 (i32, i8*, ...) @syslog(i32 %191, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %193 = load i64*, i64** %1, align 8
  %194 = call i32 @killall(i32 1, i64* %193)
  br label %195

195:                                              ; preds = %190, %186
  br label %196

196:                                              ; preds = %195, %139
  br label %43

197:                                              ; preds = %136, %43
  %198 = load i32, i32* @LOG_INFO, align 4
  %199 = load i64, i64* @termsig, align 8
  %200 = call i32 (i32, i8*, ...) @syslog(i32 %198, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i64 %199)
  %201 = load i64*, i64** %1, align 8
  %202 = call i32 @killall(i32 0, i64* %201)
  br label %203

203:                                              ; preds = %197, %161
  ret void
}

declare dso_local i32 @openlog(i32, i32, i32) #1

declare dso_local i64 @setpgid(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i64 @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64* @app_malloc(i32, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @killall(i32, i64*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @OPENSSL_free(i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @RAND_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
