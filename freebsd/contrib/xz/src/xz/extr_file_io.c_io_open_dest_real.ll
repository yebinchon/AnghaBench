; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_open_dest_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_open_dest_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32, i64*, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@opt_stdout = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@stdout_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Error getting the file status flags from standard output: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@restore_stdout_flags = common dso_local global i32 0, align 4
@opt_force = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: Cannot remove: %s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@try_sparse = common dso_local global i64 0, align 8
@opt_mode = common dso_local global i64 0, align 8
@MODE_DECOMPRESS = common dso_local global i64 0, align 8
@O_APPEND = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @io_open_dest_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_open_dest_real(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load i64, i64* @opt_stdout, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STDIN_FILENO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9, %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @STDOUT_FILENO, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @STDOUT_FILENO, align 4
  %22 = load i32, i32* @F_GETFL, align 4
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %21, i32 %22)
  store i32 %23, i32* @stdout_flags, align 4
  %24 = load i32, i32* @stdout_flags, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* @errno, align 8
  %29 = call i32 @strerror(i64 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i8*, i8*, ...) @message_error(i8* %27, i8* %31)
  store i32 1, i32* %2, align 4
  br label %208

33:                                               ; preds = %15
  %34 = load i32, i32* @stdout_flags, align 4
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* @STDOUT_FILENO, align 4
  %40 = load i32, i32* @F_SETFL, align 4
  %41 = load i32, i32* @stdout_flags, align 4
  %42 = load i32, i32* @O_NONBLOCK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 (i32, i32, ...) @fcntl(i32 %39, i32 %40, i32 %43)
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* @restore_stdout_flags, align 4
  br label %47

47:                                               ; preds = %46, %38, %33
  br label %125

48:                                               ; preds = %9
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @suffix_get_dest_name(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %208

60:                                               ; preds = %48
  %61 = load i64, i64* @opt_force, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @unlink(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @ENOENT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* @errno, align 8
  %79 = call i32 @strerror(i64 %78)
  %80 = call i32 (i8*, i8*, ...) @message_error(i8* %74, i8* %77, i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @free(i8* %83)
  store i32 1, i32* %2, align 4
  br label %208

85:                                               ; preds = %69, %63, %60
  %86 = load i32, i32* @O_WRONLY, align 4
  %87 = load i32, i32* @O_BINARY, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @O_NOCTTY, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @O_CREAT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @O_EXCL, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @O_NONBLOCK, align 4
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* @S_IRUSR, align 4
  %99 = load i32, i32* @S_IWUSR, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %5, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @open(i8* %103, i32 %104, i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %124

113:                                              ; preds = %85
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* @errno, align 8
  %118 = call i32 @strerror(i64 %117)
  %119 = call i32 (i8*, i8*, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %116, i32 %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @free(i8* %122)
  store i32 1, i32* %2, align 4
  br label %208

124:                                              ; preds = %85
  br label %125

125:                                              ; preds = %124, %47
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = call i64 @fstat(i32 %128, %struct.TYPE_7__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i64* null, i64** %139, align 8
  br label %207

140:                                              ; preds = %125
  %141 = load i64, i64* @try_sparse, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %206

143:                                              ; preds = %140
  %144 = load i64, i64* @opt_mode, align 8
  %145 = load i64, i64* @MODE_DECOMPRESS, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %206

147:                                              ; preds = %143
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @STDOUT_FILENO, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %203

153:                                              ; preds = %147
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @S_ISREG(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %208

161:                                              ; preds = %153
  %162 = load i32, i32* @stdout_flags, align 4
  %163 = load i32, i32* @O_APPEND, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %161
  %167 = load i32, i32* @STDOUT_FILENO, align 4
  %168 = load i32, i32* @SEEK_END, align 4
  %169 = call i32 @lseek(i32 %167, i32 0, i32 %168)
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %208

172:                                              ; preds = %166
  %173 = load i32, i32* @stdout_flags, align 4
  %174 = load i32, i32* @O_APPEND, align 4
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* @restore_stdout_flags, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32, i32* @O_NONBLOCK, align 4
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %179, %172
  %184 = load i32, i32* @STDOUT_FILENO, align 4
  %185 = load i32, i32* @F_SETFL, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 (i32, i32, ...) @fcntl(i32 %184, i32 %185, i32 %186)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  store i32 0, i32* %2, align 4
  br label %208

190:                                              ; preds = %183
  store i32 1, i32* @restore_stdout_flags, align 4
  br label %202

191:                                              ; preds = %161
  %192 = load i32, i32* @STDOUT_FILENO, align 4
  %193 = load i32, i32* @SEEK_CUR, align 4
  %194 = call i32 @lseek(i32 %192, i32 0, i32 %193)
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %194, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  br label %208

201:                                              ; preds = %191
  br label %202

202:                                              ; preds = %201, %190
  br label %203

203:                                              ; preds = %202, %147
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 3
  store i32 1, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %143, %140
  br label %207

207:                                              ; preds = %206, %133
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %200, %189, %171, %160, %113, %73, %59, %26
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @message_error(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i8* @suffix_get_dest_name(i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
