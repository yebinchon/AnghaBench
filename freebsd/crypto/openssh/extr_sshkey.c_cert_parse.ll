; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_cert_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_cert_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i64, i8**, %struct.sshbuf*, %struct.TYPE_5__*, %struct.sshbuf*, %struct.sshbuf*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH2_CERT_TYPE_USER = common dso_local global i64 0, align 8
@SSH2_CERT_TYPE_HOST = common dso_local global i64 0, align 8
@SSH_ERR_KEY_CERT_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@SSHKEY_CERT_MAX_PRINCIPALS = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_KEY_CERT_INVALID_SIGN_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, %struct.sshkey*, %struct.sshbuf*)* @cert_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cert_parse(%struct.sshbuf* %0, %struct.sshkey* %1, %struct.sshbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca %struct.sshbuf*, align 8
  %9 = alloca %struct.sshbuf*, align 8
  %10 = alloca %struct.sshbuf*, align 8
  %11 = alloca %struct.sshbuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store %struct.sshkey* %1, %struct.sshkey** %6, align 8
  store %struct.sshbuf* %2, %struct.sshbuf** %7, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %8, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %9, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %10, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %19 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %21 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %25 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %26 = call i32 @sshbuf_putb(%struct.sshbuf* %24, %struct.sshbuf* %25)
  store i32 %26, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %4, align 4
  br label %326

30:                                               ; preds = %3
  %31 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %32 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %33 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 10
  %36 = call i32 @sshbuf_get_u64(%struct.sshbuf* %31, i32* %35)
  store i32 %36, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %30
  %39 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %40 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %41 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @sshbuf_get_u32(%struct.sshbuf* %39, i64* %43)
  store i32 %44, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %38
  %47 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %48 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %49 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %47, i8** %51, i64* %15)
  store i32 %52, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %90, label %54

54:                                               ; preds = %46
  %55 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %56 = call i32 @sshbuf_froms(%struct.sshbuf* %55, %struct.sshbuf** %8)
  store i32 %56, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %54
  %59 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %60 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %61 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 9
  %64 = call i32 @sshbuf_get_u64(%struct.sshbuf* %59, i32* %63)
  store i32 %64, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %58
  %67 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %68 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %69 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 8
  %72 = call i32 @sshbuf_get_u64(%struct.sshbuf* %67, i32* %71)
  store i32 %72, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %66
  %75 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %76 = call i32 @sshbuf_froms(%struct.sshbuf* %75, %struct.sshbuf** %9)
  store i32 %76, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %80 = call i32 @sshbuf_froms(%struct.sshbuf* %79, %struct.sshbuf** %10)
  store i32 %80, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %84 = call i32 @sshbuf_get_string_direct(%struct.sshbuf* %83, i32* null, i32* null)
  store i32 %84, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %88 = call i32 @sshbuf_froms(%struct.sshbuf* %87, %struct.sshbuf** %11)
  store i32 %88, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86, %82, %78, %74, %66, %58, %54, %46, %38, %30
  %91 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %91, i32* %16, align 4
  br label %314

92:                                               ; preds = %86
  %93 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %94 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load %struct.sshbuf*, %struct.sshbuf** %96, align 8
  %98 = call i64 @sshbuf_len(%struct.sshbuf* %97)
  %99 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %100 = call i64 @sshbuf_len(%struct.sshbuf* %99)
  %101 = sub nsw i64 %98, %100
  store i64 %101, i64* %13, align 8
  %102 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %103 = call i32 @sshbuf_get_string(%struct.sshbuf* %102, i8** %12, i64* %14)
  store i32 %103, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %106, i32* %16, align 4
  br label %314

107:                                              ; preds = %92
  %108 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %109 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SSH2_CERT_TYPE_USER, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %117 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SSH2_CERT_TYPE_HOST, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* @SSH_ERR_KEY_CERT_UNKNOWN_TYPE, align 4
  store i32 %124, i32* %16, align 4
  br label %314

125:                                              ; preds = %115, %107
  br label %126

126:                                              ; preds = %188, %125
  %127 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %128 = call i64 @sshbuf_len(%struct.sshbuf* %127)
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %202

130:                                              ; preds = %126
  store i8* null, i8** %17, align 8
  store i8** null, i8*** %18, align 8
  %131 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %132 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SSHKEY_CERT_MAX_PRINCIPALS, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %139, i32* %16, align 4
  br label %314

140:                                              ; preds = %130
  %141 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %142 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %141, i8** %17, i64* null)
  store i32 %142, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %145, i32* %16, align 4
  br label %314

146:                                              ; preds = %140
  %147 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %148 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i8**, i8*** %150, align 8
  store i8** %151, i8*** %18, align 8
  %152 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %153 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i8**, i8*** %155, align 8
  %157 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %158 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %163 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  %168 = call i8** @recallocarray(i8** %156, i64 %161, i64 %167, i32 8)
  %169 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %170 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %169, i32 0, i32 0
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  store i8** %168, i8*** %172, align 8
  %173 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %174 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = load i8**, i8*** %176, align 8
  %178 = icmp eq i8** %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %146
  %180 = load i8*, i8** %17, align 8
  %181 = call i32 @free(i8* %180)
  %182 = load i8**, i8*** %18, align 8
  %183 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %184 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  store i8** %182, i8*** %186, align 8
  %187 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %187, i32* %16, align 4
  br label %314

188:                                              ; preds = %146
  %189 = load i8*, i8** %17, align 8
  %190 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %191 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %190, i32 0, i32 0
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 3
  %194 = load i8**, i8*** %193, align 8
  %195 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %196 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %195, i32 0, i32 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %198, align 8
  %201 = getelementptr inbounds i8*, i8** %194, i64 %199
  store i8* %189, i8** %201, align 8
  br label %126

202:                                              ; preds = %126
  %203 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %204 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 7
  %207 = load %struct.sshbuf*, %struct.sshbuf** %206, align 8
  %208 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %209 = call i32 @sshbuf_putb(%struct.sshbuf* %207, %struct.sshbuf* %208)
  store i32 %209, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %202
  %212 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %213 = icmp ne %struct.sshbuf* %212, null
  br i1 %213, label %214, label %224

214:                                              ; preds = %211
  %215 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %216 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 6
  %219 = load %struct.sshbuf*, %struct.sshbuf** %218, align 8
  %220 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %221 = call i32 @sshbuf_putb(%struct.sshbuf* %219, %struct.sshbuf* %220)
  store i32 %221, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %214, %202
  br label %314

224:                                              ; preds = %214, %211
  br label %225

225:                                              ; preds = %245, %224
  %226 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %227 = call i64 @sshbuf_len(%struct.sshbuf* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %246

229:                                              ; preds = %225
  %230 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %231 = call i32 @sshbuf_get_string_direct(%struct.sshbuf* %230, i32* null, i32* null)
  store i32 %231, i32* %16, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %235 = call i32 @sshbuf_get_string_direct(%struct.sshbuf* %234, i32* null, i32* null)
  store i32 %235, i32* %16, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %233, %229
  %238 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %239 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %238, i32 0, i32 0
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 7
  %242 = load %struct.sshbuf*, %struct.sshbuf** %241, align 8
  %243 = call i32 @sshbuf_reset(%struct.sshbuf* %242)
  %244 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %244, i32* %16, align 4
  br label %314

245:                                              ; preds = %233
  br label %225

246:                                              ; preds = %225
  br label %247

247:                                              ; preds = %272, %246
  %248 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %249 = icmp ne %struct.sshbuf* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %252 = call i64 @sshbuf_len(%struct.sshbuf* %251)
  %253 = icmp ne i64 %252, 0
  br label %254

254:                                              ; preds = %250, %247
  %255 = phi i1 [ false, %247 ], [ %253, %250 ]
  br i1 %255, label %256, label %273

256:                                              ; preds = %254
  %257 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %258 = call i32 @sshbuf_get_string_direct(%struct.sshbuf* %257, i32* null, i32* null)
  store i32 %258, i32* %16, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %262 = call i32 @sshbuf_get_string_direct(%struct.sshbuf* %261, i32* null, i32* null)
  store i32 %262, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %260, %256
  %265 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %266 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %265, i32 0, i32 0
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 6
  %269 = load %struct.sshbuf*, %struct.sshbuf** %268, align 8
  %270 = call i32 @sshbuf_reset(%struct.sshbuf* %269)
  %271 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %271, i32* %16, align 4
  br label %314

272:                                              ; preds = %260
  br label %247

273:                                              ; preds = %254
  %274 = load %struct.sshbuf*, %struct.sshbuf** %11, align 8
  %275 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %276 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %275, i32 0, i32 0
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 5
  %279 = call i64 @sshkey_from_blob_internal(%struct.sshbuf* %274, %struct.TYPE_5__** %278, i32 0)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %273
  %282 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID_SIGN_KEY, align 4
  store i32 %282, i32* %16, align 4
  br label %314

283:                                              ; preds = %273
  %284 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %285 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %284, i32 0, i32 0
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 5
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @sshkey_type_is_valid_ca(i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %283
  %294 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID_SIGN_KEY, align 4
  store i32 %294, i32* %16, align 4
  br label %314

295:                                              ; preds = %283
  %296 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %297 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %296, i32 0, i32 0
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 5
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = load i8*, i8** %12, align 8
  %302 = load i64, i64* %14, align 8
  %303 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %304 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %303, i32 0, i32 0
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 4
  %307 = load %struct.sshbuf*, %struct.sshbuf** %306, align 8
  %308 = call i32 @sshbuf_ptr(%struct.sshbuf* %307)
  %309 = load i64, i64* %13, align 8
  %310 = call i32 @sshkey_verify(%struct.TYPE_5__* %300, i8* %301, i64 %302, i32 %308, i64 %309, i32* null, i32 0)
  store i32 %310, i32* %16, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %295
  br label %314

313:                                              ; preds = %295
  store i32 0, i32* %16, align 4
  br label %314

314:                                              ; preds = %313, %312, %293, %281, %264, %237, %223, %179, %144, %138, %123, %105, %90
  %315 = load %struct.sshbuf*, %struct.sshbuf** %11, align 8
  %316 = call i32 @sshbuf_free(%struct.sshbuf* %315)
  %317 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %318 = call i32 @sshbuf_free(%struct.sshbuf* %317)
  %319 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %320 = call i32 @sshbuf_free(%struct.sshbuf* %319)
  %321 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %322 = call i32 @sshbuf_free(%struct.sshbuf* %321)
  %323 = load i8*, i8** %12, align 8
  %324 = call i32 @free(i8* %323)
  %325 = load i32, i32* %16, align 4
  store i32 %325, i32* %4, align 4
  br label %326

326:                                              ; preds = %314, %28
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i32 @sshbuf_putb(%struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_get_u64(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_get_u32(%struct.sshbuf*, i64*) #1

declare dso_local i32 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i64*) #1

declare dso_local i32 @sshbuf_froms(%struct.sshbuf*, %struct.sshbuf**) #1

declare dso_local i32 @sshbuf_get_string_direct(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_get_string(%struct.sshbuf*, i8**, i64*) #1

declare dso_local i8** @recallocarray(i8**, i64, i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

declare dso_local i64 @sshkey_from_blob_internal(%struct.sshbuf*, %struct.TYPE_5__**, i32) #1

declare dso_local i32 @sshkey_type_is_valid_ca(i32) #1

declare dso_local i32 @sshkey_verify(%struct.TYPE_5__*, i8*, i64, i32, i64, i32*, i32) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
