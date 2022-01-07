; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64, i8*, i64 }

@tablenewcmds = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"limit value required\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"table type required\00", align 1
@tabletypes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Unknown tabletype: %s. Supported: %s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unsupported suboptions: %s\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"table value type required\00", align 1
@tablevaltypes = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Unknown value type: %s. Supported: %s\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"table algorithm name required\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"algorithm name too long\00", align 1
@IPFW_TGFLAGS_LOCKED = common dso_local global i64 0, align 8
@IPFW_TABLE_ADDR = common dso_local global i64 0, align 8
@IPFW_VTYPE_LEGACY = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"Table creation failed\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Existing table check failed\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [64 x i8] c"The existing table is not compatible with one you are creating.\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Table flush on creation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8**)* @table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @table_create(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %19 = call i32 @memset(%struct.TYPE_5__* %7, i32 0, i32 48)
  br label %20

20:                                               ; preds = %140, %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %141

23:                                               ; preds = %20
  %24 = load i32, i32* @tablenewcmds, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @get_token(i32 %24, i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %6, align 8
  %32 = load i32, i32* %12, align 4
  switch i32 %32, label %140 [
    i32 133, label %33
    i32 129, label %43
    i32 128, label %90
    i32 134, label %113
    i32 132, label %133
    i32 130, label %138
    i32 131, label %139
  ]

33:                                               ; preds = %23
  %34 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strtol(i8* %36, i32* null, i32 10)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %6, align 8
  br label %140

43:                                               ; preds = %23
  %44 = call i32 @NEED1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 58)
  store i8* %47, i8** %17, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %17, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %17, align 8
  store i8 0, i8* %50, align 1
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* @tabletypes, align 4
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @match_token(i32 %53, i8* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %61 = load i32, i32* @tabletypes, align 4
  %62 = call i32 @concat_tokens(i8* %60, i32 128, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EX_USAGE, align 4
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %67 = call i32 (i32, i8*, ...) @errx(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %59, %52
  %69 = load i32, i32* %13, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %77 = call i32 @table_parse_type(i32 %74, i8* %75, i64* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @EX_USAGE, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 (i32, i8*, ...) @errx(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %80, %73
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %5, align 4
  %88 = load i8**, i8*** %6, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %6, align 8
  br label %140

90:                                               ; preds = %23
  %91 = call i32 @NEED1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %92 = load i32, i32* @tablevaltypes, align 4
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @fill_flags(i32 %92, i8* %94, i8** %16, i64* %14, i64* %15)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i64 %99, i64* %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %5, align 4
  %103 = load i8**, i8*** %6, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %6, align 8
  br label %140

105:                                              ; preds = %90
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %107 = load i32, i32* @tablevaltypes, align 4
  %108 = call i32 @concat_tokens(i8* %106, i32 128, i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EX_USAGE, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %112 = call i32 (i32, i8*, ...) @errx(i32 %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %110, i8* %111)
  br label %140

113:                                              ; preds = %23
  %114 = call i32 @NEED1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i8**, i8*** %6, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = sext i32 %117 to i64
  %119 = icmp ugt i64 %118, 8
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* @EX_USAGE, align 4
  %122 = call i32 (i32, i8*, ...) @errx(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %113
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = load i8**, i8*** %6, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @strlcpy(i8* %125, i8* %127, i32 8)
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %5, align 4
  %131 = load i8**, i8*** %6, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i32 1
  store i8** %132, i8*** %6, align 8
  br label %140

133:                                              ; preds = %23
  %134 = load i64, i64* @IPFW_TGFLAGS_LOCKED, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %134
  store i64 %137, i64* %135, align 8
  br label %140

138:                                              ; preds = %23
  store i32 1, i32* %11, align 4
  br label %139

139:                                              ; preds = %23, %138
  store i32 1, i32* %10, align 4
  br label %140

140:                                              ; preds = %23, %139, %133, %123, %105, %98, %85, %33
  br label %20

141:                                              ; preds = %20
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i64, i64* @IPFW_TABLE_ADDR, align 8
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %154, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %148, %141
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i64, i64* @IPFW_VTYPE_LEGACY, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @table_do_create(i32* %164, %struct.TYPE_5__* %7)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %243

169:                                              ; preds = %163
  %170 = load i64, i64* @errno, align 8
  %171 = load i64, i64* @EEXIST, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %10, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173, %169
  %177 = load i32, i32* @EX_OSERR, align 4
  %178 = call i32 @err(i32 %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i32*, i32** %4, align 8
  %181 = call i64 @table_get_info(i32* %180, %struct.TYPE_5__* %8)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* @EX_OSERR, align 4
  %185 = call i32 @err(i32 %184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %179
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %188, %190
  br i1 %191, label %230, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %194, %196
  br i1 %197, label %230, label %198

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %200, %202
  br i1 %203, label %230, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %206, %208
  br i1 %209, label %230, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %221 = load i8*, i8** %220, align 8
  %222 = call i64 @strcmp(i8* %219, i8* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %217, %210
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %226, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %224, %217, %204, %198, %192, %186
  %231 = load i32, i32* @EX_DATAERR, align 4
  %232 = call i32 (i32, i8*, ...) @errx(i32 %231, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %224
  %234 = load i32, i32* %11, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %233
  %237 = load i32*, i32** %4, align 8
  %238 = call i64 @table_flush(i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, i32* @EX_OSERR, align 4
  %242 = call i32 @err(i32 %241, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  br label %243

243:                                              ; preds = %168, %240, %236, %233
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @get_token(i32, i8*, i8*) #1

declare dso_local i32 @NEED1(i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @match_token(i32, i8*) #1

declare dso_local i32 @concat_tokens(i8*, i32, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @table_parse_type(i32, i8*, i64*) #1

declare dso_local i32 @fill_flags(i32, i8*, i8**, i64*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @table_do_create(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @table_get_info(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @table_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
