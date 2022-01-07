; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.ssh = type { i32 }
%struct.TYPE_10__ = type { i32, i64, %struct.passwd*, %struct.TYPE_9__*, i32* }
%struct.passwd = type { i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32*, i64 }

@ARGV_MAX = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@_PATH_BSHELL = common dso_local global i8* null, align 8
@environ = external dso_local global i8**, align 8
@in_chroot = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not chdir to home directory %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i64 0, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SUBSYSTEM_INT_SFTP_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"This service allows sftp connections only.\0A\00", align 1
@SUBSYSTEM_INT_SFTP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@INTERNAL_SFTP_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"sftp-server\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@optreset = external dso_local global i32, align 4
@optind = external dso_local global i32, align 4
@__progname = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@lc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_child(%struct.ssh* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.passwd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [256 x i8], align 16
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = load i32, i32* @ARGV_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8*, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.passwd*, %struct.passwd** %23, align 8
  store %struct.passwd* %24, %struct.passwd** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = call i32 (...) @destroy_sensitive_data()
  %26 = call i32 (...) @packet_clear_keys()
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.passwd*, %struct.passwd** %12, align 8
  %35 = call i32 @do_setusercontext(%struct.passwd* %34)
  %36 = load %struct.ssh*, %struct.ssh** %4, align 8
  %37 = call i32 @child_close_fds(%struct.ssh* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = call i32 @do_pwchange(%struct.TYPE_10__* %38)
  %40 = call i32 @exit(i32 1) #4
  unreachable

41:                                               ; preds = %3
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @options, i32 0, i32 1), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.passwd*, %struct.passwd** %12, align 8
  %46 = call i32 @do_nologin(%struct.passwd* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.passwd*, %struct.passwd** %12, align 8
  %49 = call i32 @do_setusercontext(%struct.passwd* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @check_quietlogin(%struct.TYPE_10__* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = call i32 (...) @display_loginmsg()
  br label %56

56:                                               ; preds = %54, %47
  %57 = load %struct.passwd*, %struct.passwd** %12, align 8
  %58 = getelementptr inbounds %struct.passwd, %struct.passwd* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i8*, i8** @_PATH_BSHELL, align 8
  br label %70

66:                                               ; preds = %56
  %67 = load %struct.passwd*, %struct.passwd** %12, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i8* [ %65, %64 ], [ %69, %66 ]
  store i8* %71, i8** %10, align 8
  %72 = load %struct.ssh*, %struct.ssh** %4, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i8** @do_setup_env(%struct.ssh* %72, %struct.TYPE_10__* %73, i8* %74)
  store i8** %75, i8*** %7, align 8
  %76 = load %struct.ssh*, %struct.ssh** %4, align 8
  %77 = call i32 @child_close_fds(%struct.ssh* %76)
  %78 = load i8**, i8*** %7, align 8
  store i8** %78, i8*** @environ, align 8
  %79 = load %struct.passwd*, %struct.passwd** %12, align 8
  %80 = getelementptr inbounds %struct.passwd, %struct.passwd* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @chdir(i8* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %70
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @in_chroot, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* @stderr, align 4
  %92 = load %struct.passwd*, %struct.passwd** %12, align 8
  %93 = getelementptr inbounds %struct.passwd, %struct.passwd* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @errno, align 4
  %96 = call i8* @strerror(i32 %95)
  %97 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %94, i8* %96)
  br label %98

98:                                               ; preds = %90, %87
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @exit(i32 1) #4
  unreachable

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %70
  %105 = load i64, i64* @STDERR_FILENO, align 8
  %106 = add nsw i64 %105, 1
  %107 = call i32 @closefrom(i64 %106)
  %108 = load %struct.ssh*, %struct.ssh** %4, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @do_rc_files(%struct.ssh* %108, %struct.TYPE_10__* %109, i8* %110)
  %112 = load i32, i32* @SIGPIPE, align 4
  %113 = load i32, i32* @SIG_DFL, align 4
  %114 = call i32 @signal(i32 %112, i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SUBSYSTEM_INT_SFTP_ERROR, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %104
  %121 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %122 = call i32 @fflush(i32* null)
  %123 = call i32 @exit(i32 1) #4
  unreachable

124:                                              ; preds = %104
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SUBSYSTEM_INT_SFTP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %124
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load %struct.passwd*, %struct.passwd** %132, align 8
  %134 = getelementptr inbounds %struct.passwd, %struct.passwd* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @INTERNAL_SFTP_NAME, align 4
  %137 = call i32 @setproctitle(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load i8*, i8** %6, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i8*, i8** %6, align 8
  br label %143

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i8* [ %141, %140 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %142 ]
  %145 = call i8* @xstrdup(i8* %144)
  store i8* %145, i8** %16, align 8
  store i32 0, i32* %14, align 4
  %146 = load i8*, i8** %16, align 8
  %147 = call i8* @strtok(i8* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %147, i8** %15, align 8
  br label %148

148:                                              ; preds = %163, %143
  %149 = load i8*, i8** %15, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @ARGV_MAX, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i8*, i8** %15, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8*, i8** %21, i64 %160
  store i8* %157, i8** %161, align 8
  br label %162

162:                                              ; preds = %156, %151
  br label %163

163:                                              ; preds = %162
  %164 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %164, i8** %15, align 8
  br label %148

165:                                              ; preds = %148
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %21, i64 %167
  store i8* null, i8** %168, align 8
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  %169 = getelementptr inbounds i8*, i8** %21, i64 0
  %170 = load i8*, i8** %169, align 16
  store i8* %170, i8** @__progname, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load %struct.passwd*, %struct.passwd** %173, align 8
  %175 = call i32 @sftp_server_main(i32 %171, i8** %21, %struct.passwd* %174)
  %176 = call i32 @exit(i32 %175) #4
  unreachable

177:                                              ; preds = %124
  br label %178

178:                                              ; preds = %177
  %179 = call i32 @fflush(i32* null)
  %180 = load i8*, i8** %10, align 8
  %181 = call i8* @strrchr(i8* %180, i8 signext 47)
  store i8* %181, i8** %11, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i8*, i8** %11, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %11, align 8
  br label %188

186:                                              ; preds = %178
  %187 = load i8*, i8** %10, align 8
  store i8* %187, i8** %11, align 8
  br label %188

188:                                              ; preds = %186, %183
  %189 = load i8*, i8** %6, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %214, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  store i8 45, i8* %192, align 16
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 @strlcpy(i8* %194, i8* %195, i32 255)
  %197 = sext i32 %196 to i64
  %198 = icmp uge i64 %197, 255
  br i1 %198, label %199, label %204

199:                                              ; preds = %191
  %200 = load i32, i32* @EINVAL, align 4
  store i32 %200, i32* @errno, align 4
  %201 = load i8*, i8** %10, align 8
  %202 = call i32 @perror(i8* %201)
  %203 = call i32 @exit(i32 1) #4
  unreachable

204:                                              ; preds = %191
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %206 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* %205, i8** %206, align 16
  %207 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* null, i8** %207, align 8
  %208 = load i8*, i8** %10, align 8
  %209 = load i8**, i8*** %7, align 8
  %210 = call i32 @execve(i8* %208, i8** %21, i8** %209)
  %211 = load i8*, i8** %10, align 8
  %212 = call i32 @perror(i8* %211)
  %213 = call i32 @exit(i32 1) #4
  unreachable

214:                                              ; preds = %188
  %215 = load i8*, i8** %11, align 8
  %216 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* %215, i8** %216, align 16
  %217 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %217, align 8
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8*, i8** %21, i64 2
  store i8* %218, i8** %219, align 16
  %220 = getelementptr inbounds i8*, i8** %21, i64 3
  store i8* null, i8** %220, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = load i8**, i8*** %7, align 8
  %223 = call i32 @execve(i8* %221, i8** %21, i8** %222)
  %224 = load i8*, i8** %10, align 8
  %225 = call i32 @perror(i8* %224)
  %226 = call i32 @exit(i32 1) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @destroy_sensitive_data(...) #2

declare dso_local i32 @packet_clear_keys(...) #2

declare dso_local i32 @do_setusercontext(%struct.passwd*) #2

declare dso_local i32 @child_close_fds(%struct.ssh*) #2

declare dso_local i32 @do_pwchange(%struct.TYPE_10__*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @do_nologin(%struct.passwd*) #2

declare dso_local i32 @check_quietlogin(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @display_loginmsg(...) #2

declare dso_local i8** @do_setup_env(%struct.ssh*, %struct.TYPE_10__*, i8*) #2

declare dso_local i64 @chdir(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @closefrom(i64) #2

declare dso_local i32 @do_rc_files(%struct.ssh*, %struct.TYPE_10__*, i8*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @setproctitle(i8*, i32, i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @sftp_server_main(i32, i8**, %struct.passwd*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @execve(i8*, i8**, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
