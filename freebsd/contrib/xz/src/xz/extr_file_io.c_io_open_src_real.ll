; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_open_src_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_open_src_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.stat = type { i32 }

@stdin_filename = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@stdin_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Error getting the file status flags from standard input: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@restore_stdin_flags = common dso_local global i32 0, align 4
@opt_stdout = common dso_local global i64 0, align 8
@opt_force = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: Is a symbolic link, skipping\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: Is a directory, skipping\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: Not a regular file, skipping\00", align 1
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"%s: File has setuid or setgid bit set, skipping\00", align 1
@S_ISVTX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"%s: File has sticky bit set, skipping\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"%s: Input file has more than one hard link, skipping\00", align 1
@IO_WAIT_MORE = common dso_local global i64 0, align 8
@EFTYPE = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@MODE_LIST = common dso_local global i64 0, align 8
@O_NOFOLLOW = common dso_local global i32 0, align 4
@POSIX_FADV_RANDOM = common dso_local global i32 0, align 4
@POSIX_FADV_SEQUENTIAL = common dso_local global i32 0, align 4
@opt_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @io_open_src_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_open_src_real(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @stdin_filename, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = load i32, i32* @STDIN_FILENO, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @STDIN_FILENO, align 4
  %19 = load i32, i32* @F_GETFL, align 4
  %20 = call i32 (i32, i32, ...) @fcntl(i32 %18, i32 %19)
  store i32 %20, i32* @stdin_flags, align 4
  %21 = load i32, i32* @stdin_flags, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = call i32 (i8*, i64, ...) @message_error(i8* %26, i64 %29)
  store i32 1, i32* %2, align 4
  br label %236

31:                                               ; preds = %14
  %32 = load i32, i32* @stdin_flags, align 4
  %33 = load i32, i32* @O_NONBLOCK, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* @STDIN_FILENO, align 4
  %38 = load i32, i32* @F_SETFL, align 4
  %39 = load i32, i32* @stdin_flags, align 4
  %40 = load i32, i32* @O_NONBLOCK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 (i32, i32, ...) @fcntl(i32 %37, i32 %38, i32 %41)
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* @restore_stdin_flags, align 4
  br label %45

45:                                               ; preds = %44, %36, %31
  store i32 0, i32* %2, align 4
  br label %236

46:                                               ; preds = %1
  %47 = load i64, i64* @opt_stdout, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @opt_force, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ true, %46 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i64, i64* @opt_stdout, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @O_RDONLY, align 4
  %60 = load i32, i32* @O_BINARY, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @O_NOCTTY, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @O_NONBLOCK, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %95, label %69

69:                                               ; preds = %52
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @lstat(i64 %72, %struct.stat* %7)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 (i8*, i64, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %78, i32 %80)
  store i32 1, i32* %2, align 4
  br label %236

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @S_ISLNK(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @message_warning(i32 %88, i64 %91)
  store i32 1, i32* %2, align 4
  br label %236

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94, %52
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @open(i64 %98, i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %119

107:                                              ; preds = %95
  %108 = load i32, i32* @errno, align 4
  %109 = load i32, i32* @EINTR, align 4
  %110 = icmp ne i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @strerror(i32 %116)
  %118 = call i32 (i8*, i64, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %115, i32 %117)
  store i32 1, i32* %2, align 4
  br label %236

119:                                              ; preds = %95
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = call i64 @fstat(i32 %122, %struct.TYPE_7__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %224

128:                                              ; preds = %119
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @S_ISDIR(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @message_warning(i32 %136, i64 %139)
  br label %231

141:                                              ; preds = %128
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @S_ISREG(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %144
  %152 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @message_warning(i32 %152, i64 %155)
  br label %231

157:                                              ; preds = %144, %141
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %206

160:                                              ; preds = %157
  %161 = load i64, i64* @opt_force, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %206, label %163

163:                                              ; preds = %160
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @S_ISUID, align 4
  %169 = load i32, i32* @S_ISGID, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %163
  %174 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @message_warning(i32 %174, i64 %177)
  br label %231

179:                                              ; preds = %163
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @S_ISVTX, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %179
  %188 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @message_warning(i32 %188, i64 %191)
  br label %231

193:                                              ; preds = %179
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @message_warning(i32 %200, i64 %203)
  br label %231

205:                                              ; preds = %193
  br label %206

206:                                              ; preds = %205, %160, %157
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @S_ISREG(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %206
  %214 = call i32 (...) @signals_unblock()
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %216 = call i64 @io_wait(%struct.TYPE_6__* %215, i32 -1, i32 1)
  store i64 %216, i64* %8, align 8
  %217 = call i32 (...) @signals_block()
  %218 = load i64, i64* %8, align 8
  %219 = load i64, i64* @IO_WAIT_MORE, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  br label %231

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %206
  store i32 0, i32* %2, align 4
  br label %236

224:                                              ; preds = %127
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* @errno, align 4
  %229 = call i32 @strerror(i32 %228)
  %230 = call i32 (i8*, i64, ...) @message_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %227, i32 %229)
  br label %231

231:                                              ; preds = %224, %221, %199, %187, %173, %151, %135
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @close(i32 %234)
  store i32 1, i32* %2, align 4
  br label %236

236:                                              ; preds = %231, %223, %107, %87, %75, %45, %23
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @message_error(i8*, i64, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @lstat(i64, %struct.stat*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @message_warning(i32, i64) #1

declare dso_local i32 @open(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstat(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @signals_unblock(...) #1

declare dso_local i64 @io_wait(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @signals_block(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
