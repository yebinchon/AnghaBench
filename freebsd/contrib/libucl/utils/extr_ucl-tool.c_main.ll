; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/utils/extr_ucl-tool.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/utils/extr_ucl-tool.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.ucl_schema_error = type { i8* }

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@UCL_EMIT_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"hi:o:s:f:\00", align 1
@opts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fopen on input file\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"fopen on output file\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ucl\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@UCL_EMIT_JSON = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"yaml\00", align 1
@UCL_EMIT_YAML = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"compact_json\00", align 1
@UCL_EMIT_JSON_COMPACT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"msgpack\00", align 1
@UCL_EMIT_MSGPACK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"Unknown output format: %s\0A\00", align 1
@BUFSIZ = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to read the input file.\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Failed to parse input file: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Failed to get root object: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Failed to parse schema file: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Validation failed: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ucl_parser*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ucl_parser*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ucl_schema_error, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i32*, i32** @stdin, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** @stdout, align 8
  store i32* %22, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.ucl_parser* null, %struct.ucl_parser** %13, align 8
  store i32* null, i32** %14, align 8
  %23 = load i64, i64* @UCL_EMIT_CONFIG, align 8
  store i64 %23, i64* %15, align 8
  br label %24

24:                                               ; preds = %112, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* @opts, align 4
  %28 = call signext i8 @getopt_long(i32 %25, i8** %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27, i32* null)
  store i8 %28, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %113

31:                                               ; preds = %24
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %104 [
    i32 105, label %34
    i32 111, label %44
    i32 115, label %54
    i32 102, label %56
    i32 104, label %97
  ]

34:                                               ; preds = %31
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @exit(i32 %41) #3
  unreachable

43:                                               ; preds = %34
  br label %112

44:                                               ; preds = %31
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = call i32 @exit(i32 %51) #3
  unreachable

53:                                               ; preds = %44
  br label %112

54:                                               ; preds = %31
  %55 = load i8*, i8** @optarg, align 8
  store i8* %55, i8** %9, align 8
  br label %112

56:                                               ; preds = %31
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @UCL_EMIT_CONFIG, align 8
  store i64 %61, i64* %15, align 8
  br label %96

62:                                               ; preds = %56
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* @UCL_EMIT_JSON, align 8
  store i64 %67, i64* %15, align 8
  br label %95

68:                                               ; preds = %62
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @UCL_EMIT_YAML, align 8
  store i64 %73, i64* %15, align 8
  br label %94

74:                                               ; preds = %68
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* @UCL_EMIT_JSON_COMPACT, align 8
  store i64 %79, i64* %15, align 8
  br label %93

80:                                               ; preds = %74
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* @UCL_EMIT_MSGPACK, align 8
  store i64 %85, i64* %15, align 8
  br label %92

86:                                               ; preds = %80
  %87 = load i32*, i32** @stderr, align 8
  %88 = load i8*, i8** @optarg, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @EXIT_FAILURE, align 4
  %91 = call i32 @exit(i32 %90) #3
  unreachable

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94, %66
  br label %96

96:                                               ; preds = %95, %60
  br label %112

97:                                               ; preds = %31
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32*, i32** @stdout, align 8
  %102 = call i32 @usage(i8* %100, i32* %101)
  %103 = call i32 @exit(i32 0) #3
  unreachable

104:                                              ; preds = %31
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32*, i32** @stderr, align 8
  %109 = call i32 @usage(i8* %107, i32* %108)
  %110 = load i32, i32* @EXIT_FAILURE, align 4
  %111 = call i32 @exit(i32 %110) #3
  unreachable

112:                                              ; preds = %96, %54, %53, %43
  br label %24

113:                                              ; preds = %24
  %114 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %114, %struct.ucl_parser** %13, align 8
  %115 = load i64, i64* @BUFSIZ, align 8
  %116 = call i8* @malloc(i64 %115)
  store i8* %116, i8** %10, align 8
  %117 = load i64, i64* @BUFSIZ, align 8
  store i64 %117, i64* %11, align 8
  br label %118

118:                                              ; preds = %147, %113
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @feof(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i32*, i32** %7, align 8
  %124 = call i64 @ferror(i32* %123)
  %125 = icmp ne i64 %124, 0
  %126 = xor i1 %125, true
  br label %127

127:                                              ; preds = %122, %118
  %128 = phi i1 [ false, %118 ], [ %126, %122 ]
  br i1 %128, label %129, label %158

129:                                              ; preds = %127
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* %11, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load i8*, i8** %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = mul i64 %135, 2
  %137 = call i8* @realloc(i8* %134, i64 %136)
  store i8* %137, i8** %10, align 8
  %138 = load i64, i64* %11, align 8
  %139 = mul i64 %138, 2
  store i64 %139, i64* %11, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %144 = load i32, i32* @EXIT_FAILURE, align 4
  %145 = call i32 @exit(i32 %144) #3
  unreachable

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %129
  %148 = load i8*, i8** %10, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = sub i64 %151, %152
  %154 = load i32*, i32** %7, align 8
  %155 = call i64 @fread(i8* %150, i32 1, i64 %153, i32* %154)
  %156 = load i64, i64* %12, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %12, align 8
  br label %118

158:                                              ; preds = %127
  %159 = load i32*, i32** %7, align 8
  %160 = call i64 @ferror(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32*, i32** @stderr, align 8
  %164 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %165 = load i32, i32* @EXIT_FAILURE, align 4
  %166 = call i32 @exit(i32 %165) #3
  unreachable

167:                                              ; preds = %158
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @fclose(i32* %168)
  %170 = load %struct.ucl_parser*, %struct.ucl_parser** %13, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = load i64, i64* %12, align 8
  %173 = call i32 @ucl_parser_add_chunk(%struct.ucl_parser* %170, i8* %171, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %167
  %176 = load i32*, i32** @stderr, align 8
  %177 = load %struct.ucl_parser*, %struct.ucl_parser** %13, align 8
  %178 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %177)
  %179 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %178)
  %180 = load i32, i32* @EXIT_FAILURE, align 4
  %181 = call i32 @exit(i32 %180) #3
  unreachable

182:                                              ; preds = %167
  %183 = load %struct.ucl_parser*, %struct.ucl_parser** %13, align 8
  %184 = call i32* @ucl_parser_get_object(%struct.ucl_parser* %183)
  store i32* %184, i32** %14, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load i32*, i32** @stderr, align 8
  %188 = load %struct.ucl_parser*, %struct.ucl_parser** %13, align 8
  %189 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %188)
  %190 = call i32 (i32*, i8*, ...) @fprintf(i32* %187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %189)
  %191 = load i32, i32* @EXIT_FAILURE, align 4
  %192 = call i32 @exit(i32 %191) #3
  unreachable

193:                                              ; preds = %182
  %194 = load i8*, i8** %9, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %233

196:                                              ; preds = %193
  %197 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %197, %struct.ucl_parser** %16, align 8
  store i32* null, i32** %17, align 8
  %198 = load %struct.ucl_parser*, %struct.ucl_parser** %16, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 @ucl_parser_add_file(%struct.ucl_parser* %198, i8* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %196
  %203 = load i32*, i32** @stderr, align 8
  %204 = load %struct.ucl_parser*, %struct.ucl_parser** %16, align 8
  %205 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %204)
  %206 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* %205)
  %207 = load i32, i32* @EXIT_FAILURE, align 4
  %208 = call i32 @exit(i32 %207) #3
  unreachable

209:                                              ; preds = %196
  %210 = load %struct.ucl_parser*, %struct.ucl_parser** %16, align 8
  %211 = call i32* @ucl_parser_get_object(%struct.ucl_parser* %210)
  store i32* %211, i32** %17, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %220

213:                                              ; preds = %209
  %214 = load i32*, i32** @stderr, align 8
  %215 = load %struct.ucl_parser*, %struct.ucl_parser** %16, align 8
  %216 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %215)
  %217 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* @EXIT_FAILURE, align 4
  %219 = call i32 @exit(i32 %218) #3
  unreachable

220:                                              ; preds = %209
  %221 = load i32*, i32** %17, align 8
  %222 = load i32*, i32** %14, align 8
  %223 = call i32 @ucl_object_validate(i32* %221, i32* %222, %struct.ucl_schema_error* %18)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %220
  %226 = load i32*, i32** @stderr, align 8
  %227 = getelementptr inbounds %struct.ucl_schema_error, %struct.ucl_schema_error* %18, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i32*, i8*, ...) @fprintf(i32* %226, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %228)
  %230 = load i32, i32* @EXIT_FAILURE, align 4
  %231 = call i32 @exit(i32 %230) #3
  unreachable

232:                                              ; preds = %220
  br label %233

233:                                              ; preds = %232, %193
  %234 = load i64, i64* %15, align 8
  %235 = load i64, i64* @UCL_EMIT_MSGPACK, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load i32*, i32** %8, align 8
  %239 = load i32*, i32** %14, align 8
  %240 = load i64, i64* %15, align 8
  %241 = call i8* @ucl_object_emit(i32* %239, i64 %240)
  %242 = call i32 (i32*, i8*, ...) @fprintf(i32* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %241)
  br label %251

243:                                              ; preds = %233
  %244 = load i32*, i32** %14, align 8
  %245 = load i64, i64* %15, align 8
  %246 = call i8* @ucl_object_emit_len(i32* %244, i64 %245, i64* %19)
  store i8* %246, i8** %20, align 8
  %247 = load i8*, i8** %20, align 8
  %248 = load i64, i64* %19, align 8
  %249 = load i32*, i32** %8, align 8
  %250 = call i32 @fwrite(i8* %247, i32 1, i64 %248, i32* %249)
  br label %251

251:                                              ; preds = %243, %237
  ret i32 0
}

declare dso_local signext i8 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @usage(i8*, i32*) #1

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ucl_parser_add_chunk(%struct.ucl_parser*, i8*, i64) #1

declare dso_local i8* @ucl_parser_get_error(%struct.ucl_parser*) #1

declare dso_local i32* @ucl_parser_get_object(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_parser_add_file(%struct.ucl_parser*, i8*) #1

declare dso_local i32 @ucl_object_validate(i32*, i32*, %struct.ucl_schema_error*) #1

declare dso_local i8* @ucl_object_emit(i32*, i64) #1

declare dso_local i8* @ucl_object_emit_len(i32*, i64, i64*) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
