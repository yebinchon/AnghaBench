; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_pretty_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_pretty_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_result = type { i32, i8*, i8*, i8*, i64, i64*, i64*, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Host %s not found: %d(%s).\00", align 1
@verb = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s is an alias for %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" in class %s\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c" has no address\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c" has no IPv6 address\00", align 1
@LDNS_RR_TYPE_PTR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c" has no domain name ptr\00", align 1
@LDNS_RR_TYPE_MX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c" has no mail handler record\00", align 1
@LDNS_RR_TYPE_ANY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"alloc failure\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c" has no %s record\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.ub_result*, i32)* @pretty_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty_output(i8* %0, i32 %1, i32 %2, %struct.ub_result* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ub_result*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [16 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca [16 x i8], align 16
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ub_result* %3, %struct.ub_result** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %18 = call i8* @secure_str(%struct.ub_result* %17)
  store i8* %18, i8** %12, align 8
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pretty_type(i8* %19, i32 16, i32 %20)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @pretty_class(i8* %22, i32 16, i32 %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %26 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %27 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pretty_rcode(i8* %25, i32 16, i32 %28)
  %30 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %31 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %5
  %35 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %36 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %42 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %43, i8* %44)
  %46 = load i64, i64* @verb, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %54 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %59 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %64 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %62, %57, %51
  br label %295

68:                                               ; preds = %34, %5
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  %72 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %73 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %78 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %81 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %86 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %89 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %87, i8* %90)
  %92 = load i64, i64* @verb, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %84
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %76, %71, %68
  %100 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %101 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %135

104:                                              ; preds = %99
  %105 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %106 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %135

110:                                              ; preds = %104
  %111 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %112 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %115 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %113, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 46
  br i1 %123, label %124, label %135

124:                                              ; preds = %110
  %125 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %126 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %129 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %127, i64 %133
  store i8 0, i8* %134, align 1
  br label %135

135:                                              ; preds = %124, %110, %104, %99
  %136 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %137 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %236, label %140

140:                                              ; preds = %135
  %141 = load i64, i64* @verb, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %220

143:                                              ; preds = %140
  %144 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %145 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %150 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  br label %154

152:                                              ; preds = %143
  %153 = load i8*, i8** %6, align 8
  br label %154

154:                                              ; preds = %152, %148
  %155 = phi i8* [ %151, %148 ], [ %153, %152 ]
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %155)
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %161)
  br label %163

163:                                              ; preds = %160, %154
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %217

169:                                              ; preds = %163
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %216

175:                                              ; preds = %169
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @LDNS_RR_TYPE_PTR, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %215

181:                                              ; preds = %175
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @LDNS_RR_TYPE_MX, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %214

187:                                              ; preds = %181
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @LDNS_RR_TYPE_ANY, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %187
  %192 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %193 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %196 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = call i8* @sldns_wire2str_pkt(i32 %194, i64 %197)
  store i8* %198, i8** %16, align 8
  %199 = load i8*, i8** %16, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %191
  %202 = load i32, i32* @stderr, align 4
  %203 = call i32 @fprintf(i32 %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %204 = call i32 @exit(i32 1) #3
  unreachable

205:                                              ; preds = %191
  %206 = load i8*, i8** %16, align 8
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %206)
  %208 = load i8*, i8** %16, align 8
  %209 = call i32 @free(i8* %208)
  br label %213

210:                                              ; preds = %187
  %211 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %210, %205
  br label %214

214:                                              ; preds = %213, %185
  br label %215

215:                                              ; preds = %214, %179
  br label %216

216:                                              ; preds = %215, %173
  br label %217

217:                                              ; preds = %216, %167
  %218 = load i8*, i8** %12, align 8
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %217, %140
  %221 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %222 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %220
  %226 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %227 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %232 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %230, %225, %220
  br label %295

236:                                              ; preds = %135
  store i32 0, i32* %11, align 4
  br label %237

237:                                              ; preds = %257, %236
  %238 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %239 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %238, i32 0, i32 6
  %240 = load i64*, i64** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %280

246:                                              ; preds = %237
  %247 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %248 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %253 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  br label %257

255:                                              ; preds = %246
  %256 = load i8*, i8** %6, align 8
  br label %257

257:                                              ; preds = %255, %251
  %258 = phi i8* [ %254, %251 ], [ %256, %255 ]
  %259 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %260 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %261 = load i32, i32* %7, align 4
  %262 = load i8*, i8** %12, align 8
  %263 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %264 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %263, i32 0, i32 6
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %271 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %270, i32 0, i32 5
  %272 = load i64*, i64** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @pretty_rdata(i8* %258, i8* %259, i8* %260, i32 %261, i8* %262, i64 %269, i64 %276)
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %237

280:                                              ; preds = %237
  %281 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %282 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %280
  %286 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %287 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load %struct.ub_result*, %struct.ub_result** %9, align 8
  %292 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %291, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %293)
  br label %295

295:                                              ; preds = %67, %235, %290, %285, %280
  ret void
}

declare dso_local i8* @secure_str(%struct.ub_result*) #1

declare dso_local i32 @pretty_type(i8*, i32, i32) #1

declare dso_local i32 @pretty_class(i8*, i32, i32) #1

declare dso_local i32 @pretty_rcode(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sldns_wire2str_pkt(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pretty_rdata(i8*, i8*, i8*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
