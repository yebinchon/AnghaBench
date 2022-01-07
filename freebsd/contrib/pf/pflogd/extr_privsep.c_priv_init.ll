; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_privsep.c_priv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_privsep.c_priv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i32 }

@_NSIG = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"socketpair() failed\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_pflogd\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown user _pflogd\00", align 1
@child_pid = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"unable to chroot\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"unable to chdir\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"setresgid() failed\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"setgroups() failed\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"setresuid() failed\00", align 1
@priv_fd = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@sig_pass_to_chld = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@sig_chld = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"[priv]\00", align 1
@gotsig_chld = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"[priv]: msg PRIV_SET_SNAPLENGTH received\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"[priv]: set_snaplen failed for snaplen %d\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"[priv]: msg PRIV_OPEN_LOG received\00", align 1
@filename = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"[priv]: failed to open %s: %s\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"[priv]: msg PRIV_MOVE_LOG received\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"[priv]: unknown command %d\00", align 1
@NSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca [1 x i32], align 4
  store i32 1, i32* %1, align 4
  br label %10

10:                                               ; preds = %18, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @_NSIG, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @SIG_DFL, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %10

21:                                               ; preds = %10
  %22 = load i32, i32* @AF_LOCAL, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = load i32, i32* @PF_UNSPEC, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %26 = call i32 @socketpair(i32 %22, i32 %23, i32 %24, i32* %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.passwd* %31, %struct.passwd** %8, align 8
  %32 = load %struct.passwd*, %struct.passwd** %8, align 8
  %33 = icmp eq %struct.passwd* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i32 (...) @endpwent()
  %38 = call i64 (...) @fork()
  store i64 %38, i64* @child_pid, align 8
  %39 = load i64, i64* @child_pid, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i64, i64* @child_pid, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %103, label %46

46:                                               ; preds = %43
  %47 = load %struct.passwd*, %struct.passwd** %8, align 8
  %48 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @chroot(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load %struct.passwd*, %struct.passwd** %8, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.passwd*, %struct.passwd** %8, align 8
  %65 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.passwd*, %struct.passwd** %8, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.passwd*, %struct.passwd** %8, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @setresgid(i32 %66, i32 %69, i32 %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %59
  %78 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %79 = call i32 @setgroups(i32 1, i32* %78)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load %struct.passwd*, %struct.passwd** %8, align 8
  %85 = getelementptr inbounds %struct.passwd, %struct.passwd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.passwd*, %struct.passwd** %8, align 8
  %88 = getelementptr inbounds %struct.passwd, %struct.passwd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.passwd*, %struct.passwd** %8, align 8
  %91 = getelementptr inbounds %struct.passwd, %struct.passwd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @setresuid(i32 %86, i32 %89, i32 %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %83
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @close(i32 %99)
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* @priv_fd, align 4
  ret i32 0

103:                                              ; preds = %43
  %104 = load i32, i32* @SIGALRM, align 4
  %105 = load i32, i32* @sig_pass_to_chld, align 4
  %106 = call i32 @signal(i32 %104, i32 %105)
  %107 = load i32, i32* @SIGTERM, align 4
  %108 = load i32, i32* @sig_pass_to_chld, align 4
  %109 = call i32 @signal(i32 %107, i32 %108)
  %110 = load i32, i32* @SIGHUP, align 4
  %111 = load i32, i32* @sig_pass_to_chld, align 4
  %112 = call i32 @signal(i32 %110, i32 %111)
  %113 = load i32, i32* @SIGINT, align 4
  %114 = load i32, i32* @sig_pass_to_chld, align 4
  %115 = call i32 @signal(i32 %113, i32 %114)
  %116 = load i32, i32* @SIGQUIT, align 4
  %117 = load i32, i32* @sig_pass_to_chld, align 4
  %118 = call i32 @signal(i32 %116, i32 %117)
  %119 = load i32, i32* @SIGCHLD, align 4
  %120 = load i32, i32* @sig_chld, align 4
  %121 = call i32 @signal(i32 %119, i32 %120)
  %122 = call i32 @setproctitle(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @close(i32 %124)
  br label %126

126:                                              ; preds = %200, %103
  %127 = load i32, i32* @gotsig_chld, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br i1 %129, label %130, label %201

130:                                              ; preds = %126
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @may_read(i32 %132, i32* %4, i32 4)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %201

136:                                              ; preds = %130
  %137 = load i32, i32* %4, align 4
  switch i32 %137, label %195 [
    i32 128, label %138
    i32 129, label %156
    i32 130, label %187
  ]

138:                                              ; preds = %136
  %139 = load i32, i32* @LOG_DEBUG, align 4
  %140 = call i32 (i32, i8*, ...) @logmsg(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @must_read(i32 %142, i32* %5, i32 4)
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @set_snaplen(i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load i32, i32* @LOG_NOTICE, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 (i32, i8*, ...) @logmsg(i32 %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %138
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @must_write(i32 %154, i32* %6, i32 4)
  br label %200

156:                                              ; preds = %136
  %157 = load i32, i32* @LOG_DEBUG, align 4
  %158 = call i32 (i32, i8*, ...) @logmsg(i32 %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %159 = load i32, i32* @filename, align 4
  %160 = load i32, i32* @O_RDWR, align 4
  %161 = load i32, i32* @O_CREAT, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @O_APPEND, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @O_NONBLOCK, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @O_NOFOLLOW, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @open(i32 %159, i32 %168, i32 384)
  store i32 %169, i32* %2, align 4
  %170 = load i32, i32* @errno, align 4
  store i32 %170, i32* %7, align 4
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %2, align 4
  %174 = call i32 @send_fd(i32 %172, i32 %173)
  %175 = load i32, i32* %2, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %156
  %178 = load i32, i32* @LOG_NOTICE, align 4
  %179 = load i32, i32* @filename, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @strerror(i32 %180)
  %182 = call i32 (i32, i8*, ...) @logmsg(i32 %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %179, i32 %181)
  br label %186

183:                                              ; preds = %156
  %184 = load i32, i32* %2, align 4
  %185 = call i32 @close(i32 %184)
  br label %186

186:                                              ; preds = %183, %177
  br label %200

187:                                              ; preds = %136
  %188 = load i32, i32* @LOG_DEBUG, align 4
  %189 = call i32 (i32, i8*, ...) @logmsg(i32 %188, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %190 = load i32, i32* @filename, align 4
  %191 = call i32 @move_log(i32 %190)
  store i32 %191, i32* %6, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @must_write(i32 %193, i32* %6, i32 4)
  br label %200

195:                                              ; preds = %136
  %196 = load i32, i32* @LOG_ERR, align 4
  %197 = load i32, i32* %4, align 4
  %198 = call i32 (i32, i8*, ...) @logmsg(i32 %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %197)
  %199 = call i32 @_exit(i32 1) #3
  unreachable

200:                                              ; preds = %187, %186, %152
  br label %126

201:                                              ; preds = %135, %126
  %202 = call i32 @_exit(i32 1) #3
  unreachable
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @endpwent(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i64 @chroot(i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @setresgid(i32, i32, i32) #1

declare dso_local i32 @setgroups(i32, i32*) #1

declare dso_local i32 @setresuid(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @setproctitle(i8*) #1

declare dso_local i64 @may_read(i32, i32*, i32) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32 @must_read(i32, i32*, i32) #1

declare dso_local i32 @set_snaplen(i32) #1

declare dso_local i32 @must_write(i32, i32*, i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @send_fd(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @move_log(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
