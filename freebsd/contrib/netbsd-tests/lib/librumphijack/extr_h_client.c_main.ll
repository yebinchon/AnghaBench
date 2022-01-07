; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/librumphijack/extr_h_client.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/librumphijack/extr_h_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.pollfd = type { i32, i64, i8* }

@.str = private unnamed_addr constant [23 x i8] c"need testname as param\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"select_timeout\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"select succesful\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"stdin fileno is still set\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"select_allunset\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"select2\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"select2 succesful\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"invafd\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"/rump/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i8* null, align 8
@INFTIM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"poll unexpected rv %d (%d)\00", align 1
@errno = common dso_local global i64 0, align 8
@POLLNVAL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"poll unexpected revents\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"fdoff8\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"open1\00", align 1
@ENFILE = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"unexpected fd8 %d %d\00", align 1
@F_MAXFD = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"fd leak?\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"rump open %d %d\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.pollfd], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %31 = call i32 @pipe(i32* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @err(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %27
  %37 = call i32 @FD_ZERO(i32* %6)
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FD_SET(i32 %39, i32* %6)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @select(i32 %43, i32* %6, i32* null, i32* null, %struct.timeval* %7)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @err(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  %55 = call i32 (i32, i8*, ...) @errx(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @FD_ISSET(i32 %58, i32* %6)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EXIT_FAILURE, align 4
  %63 = call i32 (i32, i8*, ...) @errx(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %210

66:                                               ; preds = %21
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = call i32 @FD_ZERO(i32* %10)
  %76 = call i32 @select(i32 100, i32* %10, i32* %10, i32* %10, %struct.timeval* %11)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = call i32 @err(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EXIT_FAILURE, align 4
  %87 = call i32 (i32, i8*, ...) @errx(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %82
  %89 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %11)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @EXIT_FAILURE, align 4
  %94 = call i32 @err(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @EXIT_FAILURE, align 4
  %100 = call i32 (i32, i8*, ...) @errx(i32 %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %102, i32* %3, align 4
  br label %210

103:                                              ; preds = %66
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %157

109:                                              ; preds = %103
  %110 = load i32, i32* @O_RDWR, align 4
  %111 = call i32 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EXIT_FAILURE, align 4
  %116 = call i32 @err(i32 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @close(i32 %118)
  %120 = load i32, i32* @STDIN_FILENO, align 4
  %121 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %13, i64 0, i64 0
  %122 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 16
  %123 = load i8*, i8** @POLLIN, align 8
  %124 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %13, i64 0, i64 0
  %125 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 16
  %126 = load i32, i32* %14, align 4
  %127 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %13, i64 0, i64 1
  %128 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i8*, i8** @POLLIN, align 8
  %130 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %13, i64 0, i64 1
  %131 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %13, i64 0, i64 0
  %133 = load i32, i32* @INFTIM, align 4
  %134 = call i32 @poll(%struct.pollfd* %132, i32 2, i32 %133)
  store i32 %134, i32* %15, align 4
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %141

136:                                              ; preds = %117
  %137 = load i32, i32* @EXIT_FAILURE, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i64, i64* @errno, align 8
  %140 = call i32 (i32, i8*, ...) @errx(i32 %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %138, i64 %139)
  br label %141

141:                                              ; preds = %136, %117
  %142 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %13, i64 0, i64 1
  %143 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @POLLNVAL, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %13, i64 0, i64 0
  %149 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147, %141
  %153 = load i32, i32* @EXIT_FAILURE, align 4
  %154 = call i32 (i32, i8*, ...) @errx(i32 %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %156, i32* %3, align 4
  br label %210

157:                                              ; preds = %103
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %208

163:                                              ; preds = %157
  %164 = call i32 @closefrom(i32 0)
  br label %165

165:                                              ; preds = %173, %163
  %166 = load i32, i32* @O_RDWR, align 4
  %167 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %166)
  store i32 %167, i32* %16, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* @EXIT_FAILURE, align 4
  %171 = call i32 @err(i32 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %165
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %16, align 4
  %175 = icmp slt i32 %174, 7
  br i1 %175, label %165, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* @O_RDWR, align 4
  %178 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %177)
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, -1
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = load i64, i64* @errno, align 8
  %183 = load i64, i64* @ENFILE, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %181, %176
  %186 = load i32, i32* @EXIT_FAILURE, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i64, i64* @errno, align 8
  %189 = call i32 (i32, i8*, ...) @errx(i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %187, i64 %188)
  br label %190

190:                                              ; preds = %185, %181
  %191 = load i32, i32* @F_MAXFD, align 4
  %192 = call i32 @fcntl(i32 0, i32 %191)
  %193 = icmp ne i32 %192, 7
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load i32, i32* @EXIT_FAILURE, align 4
  %196 = call i32 (i32, i8*, ...) @errx(i32 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %190
  %198 = load i32, i32* @O_RDWR, align 4
  %199 = call i32 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %198)
  store i32 %199, i32* %16, align 4
  %200 = icmp ne i32 %199, 8
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load i32, i32* @EXIT_FAILURE, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i64, i64* @errno, align 8
  %205 = call i32 (i32, i8*, ...) @errx(i32 %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %203, i64 %204)
  br label %206

206:                                              ; preds = %201, %197
  %207 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %207, i32* %3, align 4
  br label %210

208:                                              ; preds = %157
  %209 = load i32, i32* @ENOTSUP, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %206, %155, %101, %64
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @closefrom(i32) #1

declare dso_local i32 @fcntl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
