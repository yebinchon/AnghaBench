; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_18__* }
%struct.cleanup = type { i32 }

@timeout = common dso_local global i32 0, align 4
@remote_timeout = common dso_local global i32 0, align 4
@using_tcp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-nostart\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown option `%s'\00", align 1
@gnutarget = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"\22%s\22 is not an object file: %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mw\0D\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0AOK\00", align 1
@SEC_LOAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"[Loading section %s at 0x%s (%s bytes)]\0A\00", align 1
@e7000_load.inds = internal global [5 x i8] c"|/-\\\00", align 1
@e7000_load.k = internal global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@e7000_desc = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"e7000_load: serial_write failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\0D%c\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"ED\00", align 1
@exec_bfd = common dso_local global %struct.TYPE_17__* null, align 8
@null_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"[Starting %s at 0x%s]\0A\00", align 1
@WRITESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @e7000_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7000_load(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4106 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load i32, i32* @timeout, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @remote_timeout, align 4
  store i32 %23, i32* @timeout, align 4
  %24 = load i32, i32* @using_tcp, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @generic_load(i8* %27, i32 %28)
  br label %286

30:                                               ; preds = %2
  %31 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 0
  store i8 68, i8* %31, align 16
  %32 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 1
  store i8 84, i8* %32, align 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %10, align 8
  br label %33

33:                                               ; preds = %99, %30
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %100

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %44, %38
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isspace(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  br label %39

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  store i8* %48, i8** %17, align 8
  br label %49

49:                                               ; preds = %62, %47
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isspace(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %54, %49
  %61 = phi i1 [ false, %49 ], [ %59, %54 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %3, align 8
  br label %49

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  store i8 0, i8* %71, align 1
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i8*, i8** %17, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 45
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i8*, i8** %17, align 8
  store i8* %79, i8** %10, align 8
  br label %99

80:                                               ; preds = %73
  %81 = load i8*, i8** %17, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = call i64 @strncmp(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  br label %98

87:                                               ; preds = %80
  %88 = load i8*, i8** %17, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = call i64 @strncmp(i8* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 1, i32* %12, align 4
  br label %97

94:                                               ; preds = %87
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %93
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %78
  br label %33

100:                                              ; preds = %33
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i8* @get_exec_file(i32 1)
  store i8* %104, i8** %10, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* @gnutarget, align 4
  %108 = call %struct.TYPE_17__* @bfd_openr(i8* %106, i32 %107)
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %7, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = icmp eq %struct.TYPE_17__* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @perror_with_name(i8* %112)
  br label %286

114:                                              ; preds = %105
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = call %struct.cleanup* @make_cleanup_bfd_close(%struct.TYPE_17__* %115)
  store %struct.cleanup* %116, %struct.cleanup** %5, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %118 = load i32, i32* @bfd_object, align 4
  %119 = call i32 @bfd_check_format(%struct.TYPE_17__* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 (...) @bfd_get_error()
  %124 = call i8* @bfd_errmsg(i32 %123)
  %125 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %122, i8* %124)
  br label %126

126:                                              ; preds = %121, %114
  %127 = call i32 @time(i32* null)
  store i32 %127, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %128 = call i32 @puts_e7000debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %129 = call i32 @expect(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  store %struct.TYPE_18__* %132, %struct.TYPE_18__** %6, align 8
  br label %133

133:                                              ; preds = %248, %126
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %135 = icmp ne %struct.TYPE_18__* %134, null
  br i1 %135, label %136, label %252

136:                                              ; preds = %133
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = call i32 @bfd_get_section_flags(%struct.TYPE_17__* %137, %struct.TYPE_18__* %138)
  %140 = load i32, i32* @SEC_LOAD, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %247

143:                                              ; preds = %136
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %146 = call i32 @bfd_get_section_vma(%struct.TYPE_17__* %144, %struct.TYPE_18__* %145)
  store i32 %146, i32* %18, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = call i64 @bfd_get_section_size(%struct.TYPE_18__* %147)
  store i64 %148, i64* %19, align 8
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %143
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %154 = call i32 @bfd_get_section_name(%struct.TYPE_17__* %152, %struct.TYPE_18__* %153)
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @paddr_nz(i32 %155)
  %157 = load i64, i64* %19, align 8
  %158 = call i32 @paddr_u(i64 %157)
  %159 = call i32 @printf_filtered(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %154, i32 %156, i32 %158)
  br label %160

160:                                              ; preds = %151, %143
  store i64 0, i64* %20, align 8
  %161 = load i64, i64* %19, align 8
  %162 = load i64, i64* %15, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %15, align 8
  br label %164

164:                                              ; preds = %234, %160
  %165 = load i64, i64* %19, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %246

167:                                              ; preds = %164
  %168 = load i32, i32* @QUIT, align 4
  %169 = load i64, i64* %19, align 8
  %170 = call i32 @min(i64 %169, i32 4096)
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %18, align 4
  %172 = ashr i32 %171, 24
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 2
  store i8 %173, i8* %174, align 2
  %175 = load i32, i32* %18, align 4
  %176 = ashr i32 %175, 16
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 3
  store i8 %177, i8* %178, align 1
  %179 = load i32, i32* %18, align 4
  %180 = ashr i32 %179, 8
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 4
  store i8 %181, i8* %182, align 4
  %183 = load i32, i32* %18, align 4
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 5
  store i8 %184, i8* %185, align 1
  %186 = load i32, i32* %21, align 4
  %187 = ashr i32 %186, 24
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 6
  store i8 %188, i8* %189, align 2
  %190 = load i32, i32* %21, align 4
  %191 = ashr i32 %190, 16
  %192 = trunc i32 %191 to i8
  %193 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 7
  store i8 %192, i8* %193, align 1
  %194 = load i32, i32* %21, align 4
  %195 = ashr i32 %194, 8
  %196 = trunc i32 %195 to i8
  %197 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 8
  store i8 %196, i8* %197, align 8
  %198 = load i32, i32* %21, align 4
  %199 = trunc i32 %198 to i8
  %200 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 9
  store i8 %199, i8* %200, align 1
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %203 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 0
  %204 = getelementptr inbounds i8, i8* %203, i64 10
  %205 = load i64, i64* %20, align 8
  %206 = load i32, i32* %21, align 4
  %207 = call i32 @bfd_get_section_contents(%struct.TYPE_17__* %201, %struct.TYPE_18__* %202, i8* %204, i64 %205, i32 %206)
  %208 = load i32, i32* @e7000_desc, align 4
  %209 = getelementptr inbounds [4106 x i8], [4106 x i8]* %9, i64 0, i64 0
  %210 = load i32, i32* %21, align 4
  %211 = add nsw i32 %210, 10
  %212 = call i64 @serial_write(i32 %208, i8* %209, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %167
  %215 = load i32, i32* @gdb_stderr, align 4
  %216 = load i32, i32* @errno, align 4
  %217 = call i32 @safe_strerror(i32 %216)
  %218 = call i32 @fprintf_unfiltered(i32 %215, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %214, %167
  %220 = call i32 @expect(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* @e7000_load.k, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* @e7000_load.k, align 4
  %226 = srem i32 %224, 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [5 x i8], [5 x i8]* @e7000_load.inds, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @gdb_stdout, align 4
  %233 = call i32 @gdb_flush(i32 %232)
  br label %234

234:                                              ; preds = %223, %219
  %235 = load i32, i32* %21, align 4
  %236 = load i32, i32* %18, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %18, align 4
  %238 = load i32, i32* %21, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* %20, align 8
  %241 = add nsw i64 %240, %239
  store i64 %241, i64* %20, align 8
  %242 = load i32, i32* %21, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %19, align 8
  %245 = sub nsw i64 %244, %243
  store i64 %245, i64* %19, align 8
  br label %164

246:                                              ; preds = %164
  br label %247

247:                                              ; preds = %246, %136
  br label %248

248:                                              ; preds = %247
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %250, align 8
  store %struct.TYPE_18__* %251, %struct.TYPE_18__** %6, align 8
  br label %133

252:                                              ; preds = %133
  %253 = call i32 @write_e7000(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %254 = call i32 (...) @expect_prompt()
  %255 = call i32 @time(i32* null)
  store i32 %255, i32* %14, align 4
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** @exec_bfd, align 8
  %257 = icmp ne %struct.TYPE_17__* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %252
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** @exec_bfd, align 8
  %260 = call i32 @bfd_get_start_address(%struct.TYPE_17__* %259)
  %261 = call i32 @write_pc(i32 %260)
  br label %262

262:                                              ; preds = %258, %252
  %263 = load i32, i32* @null_ptid, align 4
  store i32 %263, i32* @inferior_ptid, align 4
  %264 = call i32 (...) @clear_symtab_users()
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %278, label %267

267:                                              ; preds = %262
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %269 = call i32 @bfd_get_start_address(%struct.TYPE_17__* %268)
  store i32 %269, i32* %8, align 4
  %270 = load i32, i32* %11, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %267
  %273 = load i8*, i8** %10, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @paddr_nz(i32 %274)
  %276 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %273, i32 %275)
  br label %277

277:                                              ; preds = %272, %267
  br label %278

278:                                              ; preds = %277, %262
  %279 = load i64, i64* %15, align 8
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %14, align 4
  %282 = call i32 @report_transfer_performance(i64 %279, i32 %280, i32 %281)
  %283 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %284 = call i32 @do_cleanups(%struct.cleanup* %283)
  %285 = load i32, i32* %16, align 4
  store i32 %285, i32* @timeout, align 4
  br label %286

286:                                              ; preds = %278, %111, %26
  ret void
}

declare dso_local i32 @generic_load(i8*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @get_exec_file(i32) #1

declare dso_local %struct.TYPE_17__* @bfd_openr(i8*, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_bfd_close(%struct.TYPE_17__*) #1

declare dso_local i32 @bfd_check_format(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @puts_e7000debug(i8*) #1

declare dso_local i32 @expect(i8*) #1

declare dso_local i32 @bfd_get_section_flags(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @bfd_get_section_vma(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @bfd_get_section_size(%struct.TYPE_18__*) #1

declare dso_local i32 @printf_filtered(i8*, i32, i32, i32) #1

declare dso_local i32 @bfd_get_section_name(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @paddr_u(i64) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @bfd_get_section_contents(%struct.TYPE_17__*, %struct.TYPE_18__*, i8*, i64, i32) #1

declare dso_local i64 @serial_write(i32, i8*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @write_e7000(i8*) #1

declare dso_local i32 @expect_prompt(...) #1

declare dso_local i32 @write_pc(i32) #1

declare dso_local i32 @bfd_get_start_address(%struct.TYPE_17__*) #1

declare dso_local i32 @clear_symtab_users(...) #1

declare dso_local i32 @report_transfer_performance(i64, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
