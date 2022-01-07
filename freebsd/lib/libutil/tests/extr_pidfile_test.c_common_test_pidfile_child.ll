; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_pidfile_test.c_common_test_pidfile_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_pidfile_test.c_common_test_pidfile_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }
%struct.kevent = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pidfile exists and is locked\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@EVFILT_SIGNAL = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"managed to lock contested pidfile\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pidfile contained wrong PID\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"child caught signal\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"child returned non-zero status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @common_test_pidfile_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @common_test_pidfile_child(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pidfh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kevent, align 4
  %13 = alloca %struct.kevent, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pidfh* null, %struct.pidfh** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @unlink(i8* %16)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %19 = call i64 @pipe(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @errno, align 4
  %23 = call i8* @strerror(i32 %22)
  store i8* %23, i8** %3, align 8
  br label %215

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.pidfh* @pidfile_open(i8* %28, i32 384, i32* %7)
  store %struct.pidfh* %29, %struct.pidfh** %6, align 8
  %30 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %31 = icmp eq %struct.pidfh* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %215

36:                                               ; preds = %32, %27
  %37 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %38 = icmp eq %struct.pidfh* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @errno, align 4
  %41 = call i8* @strerror(i32 %40)
  store i8* %41, i8** %3, align 8
  br label %215

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %24
  %44 = call i32 (...) @fork()
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @errno, align 4
  %49 = call i8* @strerror(i32 %48)
  store i8* %49, i8** %3, align 8
  br label %215

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %132

53:                                               ; preds = %50
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @close(i32 %55)
  %57 = load i32, i32* @SIGINT, align 4
  %58 = load i32, i32* @signal_handler, align 4
  %59 = call i32 @signal(i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %53
  %63 = load i8*, i8** %4, align 8
  %64 = call %struct.pidfh* @pidfile_open(i8* %63, i32 384, i32* %7)
  store %struct.pidfh* %64, %struct.pidfh** %6, align 8
  %65 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %66 = icmp eq %struct.pidfh* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %215

71:                                               ; preds = %67, %62
  %72 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %73 = icmp eq %struct.pidfh* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @errno, align 4
  %76 = call i8* @strerror(i32 %75)
  store i8* %76, i8** %3, align 8
  br label %215

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %53
  %79 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %80 = call i64 @pidfile_write(%struct.pidfh* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32, i32* @errno, align 4
  store i32 %83, i32* %10, align 4
  %84 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %85 = call i32 @pidfile_close(%struct.pidfh* %84)
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @unlink(i8* %86)
  %88 = load i32, i32* %10, align 4
  %89 = call i8* @strerror(i32 %88)
  store i8* %89, i8** %3, align 8
  br label %215

90:                                               ; preds = %78
  %91 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %92 = icmp eq %struct.pidfh* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @_exit(i32 1) #3
  unreachable

95:                                               ; preds = %90
  %96 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %97 = call i64 @pidfile_write(%struct.pidfh* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 @_exit(i32 2) #3
  unreachable

101:                                              ; preds = %95
  %102 = call i32 (...) @kqueue()
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @_exit(i32 3) #3
  unreachable

107:                                              ; preds = %101
  %108 = load i32, i32* @SIGINT, align 4
  %109 = load i32, i32* @EVFILT_SIGNAL, align 4
  %110 = load i32, i32* @EV_ADD, align 4
  %111 = call i32 @EV_SET(%struct.kevent* %13, i32 %108, i32 %109, i32 %110, i32 0, i32 0, i32* null)
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @kevent(i32 %112, %struct.kevent* %13, i32 1, %struct.kevent* null, i32 0, i32* null)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = call i32 @_exit(i32 4) #3
  unreachable

117:                                              ; preds = %107
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @write(i32 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %121 = icmp ne i32 %120, 1
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 @_exit(i32 5) #3
  unreachable

124:                                              ; preds = %117
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @kevent(i32 %125, %struct.kevent* null, i32 0, %struct.kevent* %12, i32 1, i32* null)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @_exit(i32 6) #3
  unreachable

130:                                              ; preds = %124
  %131 = call i32 @_exit(i32 0) #3
  unreachable

132:                                              ; preds = %50
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @close(i32 %134)
  %136 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %137 = icmp ne %struct.pidfh* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %140 = call i32 @pidfile_close(%struct.pidfh* %139)
  br label %141

141:                                              ; preds = %138, %132
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @read(i32 %143, i8* %14, i32 1)
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load i32, i32* @errno, align 4
  store i32 %147, i32* %10, align 4
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 @unlink(i8* %148)
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @SIGTERM, align 4
  %152 = call i64 @kill(i32 %150, i32 %151)
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* @errno, align 4
  %154 = load i32, i32* @errno, align 4
  %155 = call i8* @strerror(i32 %154)
  store i8* %155, i8** %3, align 8
  br label %215

156:                                              ; preds = %141
  %157 = load i8*, i8** %4, align 8
  %158 = call %struct.pidfh* @pidfile_open(i8* %157, i32 384, i32* %7)
  store %struct.pidfh* %158, %struct.pidfh** %6, align 8
  %159 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %160 = icmp ne %struct.pidfh* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %163 = call i32 @pidfile_close(%struct.pidfh* %162)
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 @unlink(i8* %164)
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %215

166:                                              ; preds = %156
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 @unlink(i8* %170)
  %172 = load i32, i32* @errno, align 4
  %173 = call i8* @strerror(i32 %172)
  store i8* %173, i8** %3, align 8
  br label %215

174:                                              ; preds = %166
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i8*, i8** %4, align 8
  %180 = call i32 @unlink(i8* %179)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %215

181:                                              ; preds = %174
  %182 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %183 = icmp ne %struct.pidfh* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %186 = call i32 @pidfile_close(%struct.pidfh* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i8*, i8** %4, align 8
  %189 = call i32 @unlink(i8* %188)
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @SIGINT, align 4
  %192 = call i64 @kill(i32 %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load i32, i32* @errno, align 4
  %196 = call i8* @strerror(i32 %195)
  store i8* %196, i8** %3, align 8
  br label %215

197:                                              ; preds = %187
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @waitpid(i32 %198, i32* %11, i32 0)
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* @errno, align 4
  %203 = call i8* @strerror(i32 %202)
  store i8* %203, i8** %3, align 8
  br label %215

204:                                              ; preds = %197
  %205 = load i32, i32* %11, align 4
  %206 = call i64 @WIFSIGNALED(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %215

209:                                              ; preds = %204
  %210 = load i32, i32* %11, align 4
  %211 = call i64 @WEXITSTATUS(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %215

214:                                              ; preds = %209
  store i8* null, i8** %3, align 8
  br label %215

215:                                              ; preds = %214, %213, %208, %201, %194, %178, %169, %161, %146, %82, %74, %70, %47, %39, %35, %21
  %216 = load i8*, i8** %3, align 8
  ret i8* %216
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local %struct.pidfh* @pidfile_open(i8*, i32, i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @pidfile_write(%struct.pidfh*) #1

declare dso_local i32 @pidfile_close(%struct.pidfh*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
