; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_option_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_option_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.universe = type { i32* }
%struct.option = type { i8*, i64 }
%struct.option_data = type { i8*, i32 }
%struct.iaddr = type { i32, i8* }

@.str = private unnamed_addr constant [43 x i8] c"expecting identifier after option keyword.\00", align 1
@SEMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"no memory for vendor information.\00", align 1
@DOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"expecting identifier after '.'\00", align 1
@universe_hash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"no vendor named %s.\00", align 1
@dhcp_universe = common dso_local global %struct.universe zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"no option named %s\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"no option named %s for vendor %s\00", align 1
@STRING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"expecting string.\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"option data buffer %s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"option data buffer overflow\00", align 1
@NUMBER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"expecting number.\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"expecting identifier.\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"expecting boolean.\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Bad format %c in parse_option_param.\00", align 1
@COMMA = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"semicolon expected.\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"out of memory allocating option data.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.option* @parse_option_decl(i32* %0, %struct.option_data* %1) #0 {
  %3 = alloca %struct.option*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.option_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.universe*, align 8
  %14 = alloca %struct.option*, align 8
  %15 = alloca %struct.iaddr, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.option_data* %1, %struct.option_data** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @next_token(i8** %6, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @is_identifier(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SEMI, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @skip_to_semi(i32* %30)
  br label %32

32:                                               ; preds = %29, %24
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

33:                                               ; preds = %2
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strdup(i8* %34)
  store i8* %35, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @peek_token(i8** %6, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @DOT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @next_token(i8** %6, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @next_token(i8** %6, i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @is_identifier(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %45
  %54 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SEMI, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @skip_to_semi(i32* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @free(i8* %62)
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

64:                                               ; preds = %45
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @hash_lookup(i32* @universe_hash, i8* %65, i32 0)
  %67 = inttoptr i64 %66 to %struct.universe*
  store %struct.universe* %67, %struct.universe** %13, align 8
  %68 = load %struct.universe*, %struct.universe** %13, align 8
  %69 = icmp ne %struct.universe* %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @skip_to_semi(i32* %73)
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @free(i8* %75)
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

77:                                               ; preds = %64
  br label %80

78:                                               ; preds = %39
  %79 = load i8*, i8** %11, align 8
  store i8* %79, i8** %6, align 8
  store %struct.universe* @dhcp_universe, %struct.universe** %13, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = load %struct.universe*, %struct.universe** %13, align 8
  %82 = getelementptr inbounds %struct.universe, %struct.universe* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i64 @hash_lookup(i32* %83, i8* %84, i32 0)
  %86 = inttoptr i64 %85 to %struct.option*
  store %struct.option* %86, %struct.option** %14, align 8
  %87 = load %struct.option*, %struct.option** %14, align 8
  %88 = icmp ne %struct.option* %87, null
  br i1 %88, label %105, label %89

89:                                               ; preds = %80
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %100

96:                                               ; preds = %89
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @skip_to_semi(i32* %101)
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @free(i8* %103)
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

105:                                              ; preds = %80
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %311, %105
  %109 = load %struct.option*, %struct.option** %14, align 8
  %110 = getelementptr inbounds %struct.option, %struct.option* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %12, align 8
  br label %112

112:                                              ; preds = %296, %108
  %113 = load i8*, i8** %12, align 8
  %114 = load i8, i8* %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %299

116:                                              ; preds = %112
  %117 = load i8*, i8** %12, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 65
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %299

122:                                              ; preds = %116
  %123 = load i8*, i8** %12, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  switch i32 %125, label %289 [
    i32 88, label %126
    i32 116, label %139
    i32 73, label %173
    i32 76, label %203
    i32 108, label %203
    i32 115, label %224
    i32 83, label %224
    i32 98, label %236
    i32 66, label %236
    i32 102, label %248
  ]

126:                                              ; preds = %122
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %129
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = sub i64 1024, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @parse_X(i32* %127, i8* %130, i32 %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %10, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %10, align 4
  br label %295

139:                                              ; preds = %122
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @next_token(i8** %6, i32* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @STRING, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @skip_to_semi(i32* %147)
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

149:                                              ; preds = %139
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 @strlen(i8* %150)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %17, align 4
  %154 = add i32 %152, %153
  %155 = add i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = icmp ugt i64 %156, 1024
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @skip_to_semi(i32* %160)
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

162:                                              ; preds = %149
  %163 = load i32, i32* %10, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %164
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %17, align 4
  %168 = add i32 %167, 1
  %169 = call i32 @memcpy(i8* %165, i8* %166, i32 %168)
  store i32 1, i32* %18, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %10, align 4
  %172 = add i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %295

173:                                              ; preds = %122
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @parse_ip_addr(i32* %174, %struct.iaddr* %15)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %15, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %17, align 4
  %181 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %15, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %16, align 8
  br label %183

183:                                              ; preds = %287, %243, %231, %219, %178
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %17, align 4
  %186 = add i32 %184, %185
  %187 = zext i32 %186 to i64
  %188 = icmp ugt i64 %187, 1024
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @skip_to_semi(i32* %191)
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

193:                                              ; preds = %183
  %194 = load i32, i32* %10, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %195
  %197 = load i8*, i8** %16, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @memcpy(i8* %196, i8* %197, i32 %198)
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %10, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %10, align 4
  br label %295

203:                                              ; preds = %122, %122
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @next_token(i8** %6, i32* %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @NUMBER, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %242, %230, %209
  %211 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @SEMI, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32*, i32** %4, align 8
  %217 = call i32 @skip_to_semi(i32* %216)
  br label %218

218:                                              ; preds = %215, %210
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

219:                                              ; preds = %203
  %220 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %221 = load i8*, i8** %6, align 8
  %222 = call i32 @convert_num(i8* %220, i8* %221, i32 0, i32 32)
  store i32 4, i32* %17, align 4
  %223 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8* %223, i8** %16, align 8
  br label %183

224:                                              ; preds = %122, %122
  %225 = load i32*, i32** %4, align 8
  %226 = call i32 @next_token(i8** %6, i32* %225)
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @NUMBER, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %210

231:                                              ; preds = %224
  %232 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @convert_num(i8* %232, i8* %233, i32 0, i32 16)
  store i32 2, i32* %17, align 4
  %235 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8* %235, i8** %16, align 8
  br label %183

236:                                              ; preds = %122, %122
  %237 = load i32*, i32** %4, align 8
  %238 = call i32 @next_token(i8** %6, i32* %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @NUMBER, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %210

243:                                              ; preds = %236
  %244 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %245 = load i8*, i8** %6, align 8
  %246 = call i32 @convert_num(i8* %244, i8* %245, i32 0, i32 8)
  store i32 1, i32* %17, align 4
  %247 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8* %247, i8** %16, align 8
  br label %183

248:                                              ; preds = %122
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 @next_token(i8** %6, i32* %249)
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @is_identifier(i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %248
  %255 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %256

256:                                              ; preds = %284, %254
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @SEMI, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @skip_to_semi(i32* %261)
  br label %263

263:                                              ; preds = %260, %256
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

264:                                              ; preds = %248
  %265 = load i8*, i8** %6, align 8
  %266 = call i32 @strcasecmp(i8* %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %264
  %269 = load i8*, i8** %6, align 8
  %270 = call i32 @strcasecmp(i8* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268, %264
  %273 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 1, i8* %273, align 1
  br label %287

274:                                              ; preds = %268
  %275 = load i8*, i8** %6, align 8
  %276 = call i32 @strcasecmp(i8* %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load i8*, i8** %6, align 8
  %280 = call i32 @strcasecmp(i8* %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %278, %274
  %283 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %283, align 1
  br label %286

284:                                              ; preds = %278
  %285 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %256

286:                                              ; preds = %282
  br label %287

287:                                              ; preds = %286, %272
  store i32 1, i32* %17, align 4
  %288 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8* %288, i8** %16, align 8
  br label %183

289:                                              ; preds = %122
  %290 = load i8*, i8** %12, align 8
  %291 = load i8, i8* %290, align 1
  %292 = call i32 @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8 signext %291)
  %293 = load i32*, i32** %4, align 8
  %294 = call i32 @skip_to_semi(i32* %293)
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

295:                                              ; preds = %193, %162, %126
  br label %296

296:                                              ; preds = %295
  %297 = load i8*, i8** %12, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %12, align 8
  br label %112

299:                                              ; preds = %121, %112
  %300 = load i32*, i32** %4, align 8
  %301 = call i32 @next_token(i8** %6, i32* %300)
  store i32 %301, i32* %7, align 4
  br label %302

302:                                              ; preds = %299
  %303 = load i8*, i8** %12, align 8
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %305, 65
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* @COMMA, align 4
  %310 = icmp eq i32 %308, %309
  br label %311

311:                                              ; preds = %307, %302
  %312 = phi i1 [ false, %302 ], [ %310, %307 ]
  br i1 %312, label %108, label %313

313:                                              ; preds = %311
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @SEMI, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %313
  %318 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %319 = load i32*, i32** %4, align 8
  %320 = call i32 @skip_to_semi(i32* %319)
  store %struct.option* null, %struct.option** %3, align 8
  br label %363

321:                                              ; preds = %313
  %322 = load i32, i32* %10, align 4
  %323 = load i32, i32* %18, align 4
  %324 = add i32 %322, %323
  %325 = call i8* @malloc(i32 %324)
  %326 = load %struct.option_data*, %struct.option_data** %5, align 8
  %327 = load %struct.option*, %struct.option** %14, align 8
  %328 = getelementptr inbounds %struct.option, %struct.option* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.option_data, %struct.option_data* %326, i64 %329
  %331 = getelementptr inbounds %struct.option_data, %struct.option_data* %330, i32 0, i32 0
  store i8* %325, i8** %331, align 8
  %332 = load %struct.option_data*, %struct.option_data** %5, align 8
  %333 = load %struct.option*, %struct.option** %14, align 8
  %334 = getelementptr inbounds %struct.option, %struct.option* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds %struct.option_data, %struct.option_data* %332, i64 %335
  %337 = getelementptr inbounds %struct.option_data, %struct.option_data* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %321
  %341 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %321
  %343 = load %struct.option_data*, %struct.option_data** %5, align 8
  %344 = load %struct.option*, %struct.option** %14, align 8
  %345 = getelementptr inbounds %struct.option, %struct.option* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.option_data, %struct.option_data* %343, i64 %346
  %348 = getelementptr inbounds %struct.option_data, %struct.option_data* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* %18, align 4
  %353 = add i32 %351, %352
  %354 = call i32 @memcpy(i8* %349, i8* %350, i32 %353)
  %355 = load i32, i32* %10, align 4
  %356 = load %struct.option_data*, %struct.option_data** %5, align 8
  %357 = load %struct.option*, %struct.option** %14, align 8
  %358 = getelementptr inbounds %struct.option, %struct.option* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds %struct.option_data, %struct.option_data* %356, i64 %359
  %361 = getelementptr inbounds %struct.option_data, %struct.option_data* %360, i32 0, i32 1
  store i32 %355, i32* %361, align 8
  %362 = load %struct.option*, %struct.option** %14, align 8
  store %struct.option* %362, %struct.option** %3, align 8
  br label %363

363:                                              ; preds = %342, %317, %289, %263, %218, %189, %177, %158, %145, %100, %70, %61, %32
  %364 = load %struct.option*, %struct.option** %3, align 8
  ret %struct.option* %364
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @is_identifier(i32) #1

declare dso_local i32 @parse_warn(i8*, ...) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @peek_token(i8**, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @hash_lookup(i32*, i8*, i32) #1

declare dso_local i32 @parse_X(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @parse_ip_addr(i32*, %struct.iaddr*) #1

declare dso_local i32 @convert_num(i8*, i8*, i32, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8 signext) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
