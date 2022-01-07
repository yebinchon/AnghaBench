; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, i32, %struct.TYPE_6__*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.ucl_chunk = type { i8*, i8*, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32* }

@UCL_PARSER_DISABLE_MACRO = common dso_local global i32 0, align 4
@UCL_STATE_MACRO_NAME = common dso_local global i8* null, align 8
@UCL_CHARACTER_WHITESPACE_UNSAFE = common dso_local global i32 0, align 4
@UCL_CHARACTER_KEY_START = common dso_local global i32 0, align 4
@UCL_ESYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"key must begin with a letter\00", align 1
@UCL_CHARACTER_KEY = common dso_local global i32 0, align 4
@UCL_CHARACTER_KEY_SEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid character in a key\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unfinished key\00", align 1
@UCL_CHARACTER_WHITESPACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unexpected '=' character\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unexpected ':' character\00", align 1
@UCL_NULL = common dso_local global i32 0, align 4
@UCL_TRASH_KEY = common dso_local global i64 0, align 8
@UCL_PARSER_KEY_LOWERCASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"empty keys are not allowed\00", align 1
@UCL_OBJECT_NEED_KEY_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*, i32*, i32*)* @ucl_parse_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_parse_key(%struct.ucl_parser* %0, %struct.ucl_chunk* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucl_parser*, align 8
  %7 = alloca %struct.ucl_chunk*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %6, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %26 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %53

32:                                               ; preds = %4
  %33 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %34 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @UCL_PARSER_DISABLE_MACRO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %45 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %48 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @UCL_STATE_MACRO_NAME, align 8
  %50 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %51 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %9, align 8
  store i32 0, i32* %52, align 4
  store i32 1, i32* %5, align 4
  br label %467

53:                                               ; preds = %4
  br label %54

54:                                               ; preds = %195, %53
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %57 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ult i8* %55, %58
  br i1 %59, label %60, label %196

60:                                               ; preds = %54
  %61 = load i8*, i8** %11, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %152

63:                                               ; preds = %60
  %64 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %65 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %66, 2
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @ucl_lex_is_comment(i8 zeroext %71, i8 zeroext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %79 = call i32 @ucl_skip_comments(%struct.ucl_parser* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %467

82:                                               ; preds = %77
  %83 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %84 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %10, align 8
  br label %151

86:                                               ; preds = %68, %63
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %90 = call i64 @ucl_test_character(i8 zeroext %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %93, i8* %94)
  br label %150

96:                                               ; preds = %86
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = load i32, i32* @UCL_CHARACTER_KEY_START, align 4
  %100 = call i64 @ucl_test_character(i8 zeroext %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i8*, i8** %10, align 8
  store i8* %103, i8** %11, align 8
  %104 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %104, i8* %105)
  store i32 1, i32* %21, align 4
  br label %149

107:                                              ; preds = %96
  %108 = load i8*, i8** %10, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 34
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  store i8* %114, i8** %11, align 8
  store i32 1, i32* %15, align 4
  store i32 1, i32* %21, align 4
  %115 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %115, i8* %116)
  br label %148

118:                                              ; preds = %107
  %119 = load i8*, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 125
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32*, i32** %9, align 8
  store i32 1, i32* %124, align 4
  store i32 1, i32* %5, align 4
  br label %467

125:                                              ; preds = %118
  %126 = load i8*, i8** %10, align 8
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 46
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %131, i8* %132)
  %134 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %135 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %138 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @UCL_STATE_MACRO_NAME, align 8
  %140 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %141 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  store i32 1, i32* %5, align 4
  br label %467

142:                                              ; preds = %125
  %143 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %144 = load i32, i32* @UCL_ESYNTAX, align 4
  %145 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %146 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %145, i32 0, i32 1
  %147 = call i32 @ucl_set_err(%struct.ucl_parser* %143, i32 %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %146)
  store i32 0, i32* %5, align 4
  br label %467

148:                                              ; preds = %112
  br label %149

149:                                              ; preds = %148, %102
  br label %150

150:                                              ; preds = %149, %92
  br label %151

151:                                              ; preds = %150, %82
  br label %195

152:                                              ; preds = %60
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %180, label %155

155:                                              ; preds = %152
  %156 = load i8*, i8** %10, align 8
  %157 = load i8, i8* %156, align 1
  %158 = load i32, i32* @UCL_CHARACTER_KEY, align 4
  %159 = call i64 @ucl_test_character(i8 zeroext %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  store i32 1, i32* %21, align 4
  %162 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %162, i8* %163)
  br label %179

165:                                              ; preds = %155
  %166 = load i8*, i8** %10, align 8
  %167 = load i8, i8* %166, align 1
  %168 = load i32, i32* @UCL_CHARACTER_KEY_SEP, align 4
  %169 = call i64 @ucl_test_character(i8 zeroext %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i8*, i8** %10, align 8
  store i8* %172, i8** %12, align 8
  br label %196

173:                                              ; preds = %165
  %174 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %175 = load i32, i32* @UCL_ESYNTAX, align 4
  %176 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %177 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %176, i32 0, i32 1
  %178 = call i32 @ucl_set_err(%struct.ucl_parser* %174, i32 %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %177)
  store i32 0, i32* %5, align 4
  br label %467

179:                                              ; preds = %161
  br label %194

180:                                              ; preds = %152
  %181 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %182 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %183 = call i32 @ucl_lex_json_string(%struct.ucl_parser* %181, %struct.ucl_chunk* %182, i32* %18, i32* %19, i32* %20)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  store i32 0, i32* %5, align 4
  br label %467

186:                                              ; preds = %180
  %187 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %188 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 -1
  store i8* %190, i8** %12, align 8
  %191 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %192 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %10, align 8
  br label %196

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %151
  br label %54

196:                                              ; preds = %186, %171, %54
  %197 = load i8*, i8** %10, align 8
  %198 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %199 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = icmp uge i8* %197, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load i32, i32* %21, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %207 = load i32, i32* @UCL_ESYNTAX, align 4
  %208 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %209 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %208, i32 0, i32 1
  %210 = call i32 @ucl_set_err(%struct.ucl_parser* %206, i32 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %209)
  store i32 0, i32* %5, align 4
  br label %467

211:                                              ; preds = %202, %196
  %212 = load i32, i32* %21, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  store i32 1, i32* %5, align 4
  br label %467

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %215
  %217 = load i32*, i32** %9, align 8
  store i32 0, i32* %217, align 4
  br label %218

218:                                              ; preds = %305, %216
  %219 = load i8*, i8** %10, align 8
  %220 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %221 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ult i8* %219, %222
  br i1 %223, label %224, label %306

224:                                              ; preds = %218
  %225 = load i8*, i8** %10, align 8
  %226 = load i8, i8* %225, align 1
  %227 = load i32, i32* @UCL_CHARACTER_WHITESPACE, align 4
  %228 = call i64 @ucl_test_character(i8 zeroext %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %232 = load i8*, i8** %10, align 8
  %233 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %231, i8* %232)
  br label %305

234:                                              ; preds = %224
  %235 = load i8*, i8** %10, align 8
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 61
  br i1 %238, label %239, label %256

239:                                              ; preds = %234
  %240 = load i32, i32* %16, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %17, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %247 = load i8*, i8** %10, align 8
  %248 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %246, i8* %247)
  store i32 1, i32* %16, align 4
  br label %255

249:                                              ; preds = %242, %239
  %250 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %251 = load i32, i32* @UCL_ESYNTAX, align 4
  %252 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %253 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %252, i32 0, i32 1
  %254 = call i32 @ucl_set_err(%struct.ucl_parser* %250, i32 %251, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %253)
  store i32 0, i32* %5, align 4
  br label %467

255:                                              ; preds = %245
  br label %304

256:                                              ; preds = %234
  %257 = load i8*, i8** %10, align 8
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp eq i32 %259, 58
  br i1 %260, label %261, label %278

261:                                              ; preds = %256
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* %17, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %264
  %268 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %269 = load i8*, i8** %10, align 8
  %270 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %268, i8* %269)
  store i32 1, i32* %17, align 4
  br label %277

271:                                              ; preds = %264, %261
  %272 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %273 = load i32, i32* @UCL_ESYNTAX, align 4
  %274 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %275 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %274, i32 0, i32 1
  %276 = call i32 @ucl_set_err(%struct.ucl_parser* %272, i32 %273, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* %275)
  store i32 0, i32* %5, align 4
  br label %467

277:                                              ; preds = %267
  br label %303

278:                                              ; preds = %256
  %279 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %280 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = icmp sge i32 %281, 2
  br i1 %282, label %283, label %301

283:                                              ; preds = %278
  %284 = load i8*, i8** %10, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 0
  %286 = load i8, i8* %285, align 1
  %287 = load i8*, i8** %10, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  %289 = load i8, i8* %288, align 1
  %290 = call i64 @ucl_lex_is_comment(i8 zeroext %286, i8 zeroext %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %283
  %293 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %294 = call i32 @ucl_skip_comments(%struct.ucl_parser* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %292
  store i32 0, i32* %5, align 4
  br label %467

297:                                              ; preds = %292
  %298 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %299 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  store i8* %300, i8** %10, align 8
  br label %302

301:                                              ; preds = %283, %278
  br label %306

302:                                              ; preds = %297
  br label %303

303:                                              ; preds = %302, %277
  br label %304

304:                                              ; preds = %303, %255
  br label %305

305:                                              ; preds = %304, %230
  br label %218

306:                                              ; preds = %301, %218
  %307 = load i8*, i8** %10, align 8
  %308 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %309 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = icmp uge i8* %307, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %306
  %313 = load i32, i32* %21, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %312
  %316 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %317 = load i32, i32* @UCL_ESYNTAX, align 4
  %318 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %319 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %318, i32 0, i32 1
  %320 = call i32 @ucl_set_err(%struct.ucl_parser* %316, i32 %317, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %319)
  store i32 0, i32* %5, align 4
  br label %467

321:                                              ; preds = %312, %306
  %322 = load i32, i32* %17, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load i32, i32* %16, align 4
  %326 = icmp ne i32 %325, 0
  br label %327

327:                                              ; preds = %324, %321
  %328 = phi i1 [ true, %321 ], [ %326, %324 ]
  %329 = zext i1 %328 to i32
  store i32 %329, i32* %22, align 4
  %330 = load i32, i32* %22, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %400, label %332

332:                                              ; preds = %327
  %333 = load i8*, i8** %10, align 8
  store i8* %333, i8** %13, align 8
  %334 = load i32*, i32** %8, align 8
  store i32 0, i32* %334, align 4
  br label %335

335:                                              ; preds = %341, %332
  %336 = load i8*, i8** %13, align 8
  %337 = load i8, i8* %336, align 1
  %338 = load i32, i32* @UCL_CHARACTER_WHITESPACE, align 4
  %339 = call i64 @ucl_test_character(i8 zeroext %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %335
  %342 = load i8*, i8** %13, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %13, align 8
  br label %335

344:                                              ; preds = %335
  %345 = load i8*, i8** %13, align 8
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = icmp ne i32 %347, 123
  br i1 %348, label %349, label %399

349:                                              ; preds = %344
  %350 = load i8*, i8** %13, align 8
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  %353 = icmp ne i32 %352, 91
  br i1 %353, label %354, label %399

354:                                              ; preds = %349
  br label %355

355:                                              ; preds = %395, %354
  %356 = load i8*, i8** %13, align 8
  %357 = load %struct.ucl_chunk*, %struct.ucl_chunk** %7, align 8
  %358 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %357, i32 0, i32 1
  %359 = load i8*, i8** %358, align 8
  %360 = icmp ult i8* %356, %359
  br i1 %360, label %361, label %398

361:                                              ; preds = %355
  %362 = load i8*, i8** %13, align 8
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = icmp eq i32 %364, 44
  br i1 %365, label %381, label %366

366:                                              ; preds = %361
  %367 = load i8*, i8** %13, align 8
  %368 = load i8, i8* %367, align 1
  %369 = zext i8 %368 to i32
  %370 = icmp eq i32 %369, 59
  br i1 %370, label %381, label %371

371:                                              ; preds = %366
  %372 = load i8*, i8** %13, align 8
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = icmp eq i32 %374, 10
  br i1 %375, label %381, label %376

376:                                              ; preds = %371
  %377 = load i8*, i8** %13, align 8
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = icmp eq i32 %379, 13
  br i1 %380, label %381, label %382

381:                                              ; preds = %376, %371, %366, %361
  br label %398

382:                                              ; preds = %376
  %383 = load i8*, i8** %13, align 8
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = icmp eq i32 %385, 123
  br i1 %386, label %392, label %387

387:                                              ; preds = %382
  %388 = load i8*, i8** %13, align 8
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = icmp eq i32 %390, 91
  br i1 %391, label %392, label %394

392:                                              ; preds = %387, %382
  %393 = load i32*, i32** %8, align 8
  store i32 1, i32* %393, align 4
  br label %398

394:                                              ; preds = %387
  br label %395

395:                                              ; preds = %394
  %396 = load i8*, i8** %13, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %13, align 8
  br label %355

398:                                              ; preds = %392, %381, %355
  br label %399

399:                                              ; preds = %398, %349, %344
  br label %400

400:                                              ; preds = %399, %327
  %401 = load i32, i32* @UCL_NULL, align 4
  %402 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %403 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %402, i32 0, i32 2
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = call %struct.TYPE_7__* @ucl_object_new_full(i32 %401, i32 %406)
  store %struct.TYPE_7__* %407, %struct.TYPE_7__** %23, align 8
  %408 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %409 = load i8*, i8** %11, align 8
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 3
  %412 = load i32*, i32** %411, align 8
  %413 = load i64, i64* @UCL_TRASH_KEY, align 8
  %414 = getelementptr inbounds i32, i32* %412, i64 %413
  %415 = load i8*, i8** %12, align 8
  %416 = load i8*, i8** %11, align 8
  %417 = ptrtoint i8* %415 to i64
  %418 = ptrtoint i8* %416 to i64
  %419 = sub i64 %417, %418
  %420 = trunc i64 %419 to i32
  %421 = load i32, i32* %18, align 4
  %422 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %423 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @UCL_PARSER_KEY_LOWERCASE, align 4
  %426 = and i32 %424, %425
  %427 = call i32 @ucl_copy_or_store_ptr(%struct.ucl_parser* %408, i8* %409, i32* %414, i8** %14, i32 %420, i32 %421, i32 %426, i32 0)
  store i32 %427, i32* %24, align 4
  %428 = load i32, i32* %24, align 4
  %429 = icmp eq i32 %428, -1
  br i1 %429, label %430, label %433

430:                                              ; preds = %400
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %432 = call i32 @ucl_object_unref(%struct.TYPE_7__* %431)
  store i32 0, i32* %5, align 4
  br label %467

433:                                              ; preds = %400
  %434 = load i32, i32* %24, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %444

436:                                              ; preds = %433
  %437 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %438 = load i32, i32* @UCL_ESYNTAX, align 4
  %439 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %440 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %439, i32 0, i32 1
  %441 = call i32 @ucl_set_err(%struct.ucl_parser* %437, i32 %438, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %440)
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %443 = call i32 @ucl_object_unref(%struct.TYPE_7__* %442)
  store i32 0, i32* %5, align 4
  br label %467

444:                                              ; preds = %433
  br label %445

445:                                              ; preds = %444
  %446 = load i8*, i8** %14, align 8
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 0
  store i8* %446, i8** %448, align 8
  %449 = load i32, i32* %24, align 4
  %450 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %450, i32 0, i32 1
  store i32 %449, i32* %451, align 8
  %452 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %454 = call i32 @ucl_parser_process_object_element(%struct.ucl_parser* %452, %struct.TYPE_7__* %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %457, label %456

456:                                              ; preds = %445
  store i32 0, i32* %5, align 4
  br label %467

457:                                              ; preds = %445
  %458 = load i32, i32* %19, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %466

460:                                              ; preds = %457
  %461 = load i32, i32* @UCL_OBJECT_NEED_KEY_ESCAPE, align 4
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 4
  %465 = or i32 %464, %461
  store i32 %465, i32* %463, align 4
  br label %466

466:                                              ; preds = %460, %457
  store i32 1, i32* %5, align 4
  br label %467

467:                                              ; preds = %466, %456, %436, %430, %315, %296, %271, %249, %214, %205, %185, %173, %142, %130, %123, %81, %43
  %468 = load i32, i32* %5, align 4
  ret i32 %468
}

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local i64 @ucl_lex_is_comment(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ucl_skip_comments(%struct.ucl_parser*) #1

declare dso_local i64 @ucl_test_character(i8 zeroext, i32) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

declare dso_local i32 @ucl_lex_json_string(%struct.ucl_parser*, %struct.ucl_chunk*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @ucl_object_new_full(i32, i32) #1

declare dso_local i32 @ucl_copy_or_store_ptr(%struct.ucl_parser*, i8*, i32*, i8**, i32, i32, i32, i32) #1

declare dso_local i32 @ucl_object_unref(%struct.TYPE_7__*) #1

declare dso_local i32 @ucl_parser_process_object_element(%struct.ucl_parser*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
