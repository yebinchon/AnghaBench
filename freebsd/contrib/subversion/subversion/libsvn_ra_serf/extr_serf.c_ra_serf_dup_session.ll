; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_serf.c_ra_serf_dup_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_serf.c_ra_serf_dup_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i32, %struct.TYPE_14__**, i32, i64, i32, i32*, i32, i8*, i64, i8*, i32*, i64, i32* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__*, i32 }

@svn_ra_serf__conn_setup = common dso_local global i32 0, align 4
@svn_ra_serf__conn_closed = common dso_local global i32 0, align 4
@svn_ra_serf__progress = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i32*, i32*)* @ra_serf_dup_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_serf_dup_session(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %12, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %20 = call %struct.TYPE_13__* @apr_pmemdup(i32* %18, %struct.TYPE_13__* %19, i32 248)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %13, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 23
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 21
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %5
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 21
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 21
  %33 = load i64, i64* %32, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @svn_config_copy_config(i64* %30, i64 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  br label %37

37:                                               ; preds = %28, %5
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @apr_pstrdup(i32* %43, i8* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @apr_pstrdup(i32* %56, i8* %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 30
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 29
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 28
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 27
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 27
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @apr_hash_copy(i32* %75, i8* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 27
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %63
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32*, i32** %10, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @apr_pstrdup(i32* %88, i8* %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @apr_pstrdup(i32* %101, i8* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %100, %95
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @apr_pstrdup(i32* %114, i8* %117)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %113, %108
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 26
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 5
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 5
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @apr_pstrdup(i32* %129, i8* %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %128, %121
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 6
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i32*, i32** %10, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 6
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @apr_pstrdup(i32* %142, i8* %145)
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 6
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %141, %136
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 7
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i32*, i32** %10, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 7
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @apr_pstrdup(i32* %155, i8* %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 7
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %154, %149
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 8
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load i32*, i32** %10, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 8
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @apr_pstrdup(i32* %168, i8* %171)
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 8
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %167, %162
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 9
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load i32*, i32** %10, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 9
  %184 = load i8*, i8** %183, align 8
  %185 = call i8* @apr_pstrdup(i32* %181, i8* %184)
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 9
  store i8* %185, i8** %187, align 8
  br label %188

188:                                              ; preds = %180, %175
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 10
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load i32*, i32** %10, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 10
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @apr_pstrdup(i32* %194, i8* %197)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 10
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %193, %188
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 11
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load i32*, i32** %10, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 11
  %210 = load i8*, i8** %209, align 8
  %211 = call i8* @apr_pstrdup(i32* %207, i8* %210)
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 11
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %206, %201
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 12
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i32*, i32** %10, align 8
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 12
  %223 = load i8*, i8** %222, align 8
  %224 = call i8* @apr_pstrdup(i32* %220, i8* %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 12
  store i8* %224, i8** %226, align 8
  br label %227

227:                                              ; preds = %219, %214
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 25
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %240

232:                                              ; preds = %227
  %233 = load i32*, i32** %10, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 25
  %236 = load i8*, i8** %235, align 8
  %237 = call i8* @apr_hash_copy(i32* %233, i8* %236)
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 25
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %232, %227
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 24
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 23
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @svn_ra_serf__blncache_create(i32* %242, i32* %245)
  %247 = call i32 @SVN_ERR(i32 %246)
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 13
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %260

252:                                              ; preds = %240
  %253 = load i32*, i32** %10, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 13
  %256 = load i8*, i8** %255, align 8
  %257 = call i8* @apr_pstrdup(i32* %253, i8* %256)
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 13
  store i8* %257, i8** %259, align 8
  br label %260

260:                                              ; preds = %252, %240
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 14
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %281

265:                                              ; preds = %260
  %266 = load i32*, i32** %10, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 14
  %269 = load i8*, i8** %268, align 8
  %270 = call i8* @apr_pstrdup(i32* %266, i8* %269)
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 14
  store i8* %270, i8** %272, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 22
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 14
  %277 = load i8*, i8** %276, align 8
  %278 = load i32*, i32** %10, align 8
  %279 = call i32 @svn_ra_serf__uri_parse(i32* %274, i8* %277, i32* %278)
  %280 = call i32 @SVN_ERR(i32 %279)
  br label %281

281:                                              ; preds = %265, %260
  %282 = load i32*, i32** %10, align 8
  %283 = load i8*, i8** %9, align 8
  %284 = call i8* @apr_pstrdup(i32* %282, i8* %283)
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 15
  store i8* %284, i8** %286, align 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 20
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 15
  %291 = load i8*, i8** %290, align 8
  %292 = load i32*, i32** %10, align 8
  %293 = call i32 @svn_ra_serf__uri_parse(i32* %288, i8* %291, i32* %292)
  %294 = call i32 @SVN_ERR(i32 %293)
  %295 = load i32*, i32** %10, align 8
  %296 = call i32 @serf_context_create(i32* %295)
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 18
  store i32 %296, i32* %298, align 8
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 21
  %302 = load i64, i64* %301, align 8
  %303 = load i32*, i32** %10, align 8
  %304 = load i32*, i32** %11, align 8
  %305 = call i32 @load_config(%struct.TYPE_13__* %299, i64 %302, i32* %303, i32* %304)
  %306 = call i32 @SVN_ERR(i32 %305)
  %307 = load i32*, i32** %10, align 8
  %308 = call %struct.TYPE_14__* @apr_pcalloc(i32* %307, i32 24)
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 19
  %311 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %311, i64 0
  store %struct.TYPE_14__* %308, %struct.TYPE_14__** %312, align 8
  %313 = load i32*, i32** %10, align 8
  %314 = call i32 @serf_bucket_allocator_create(i32* %313, i32* null, i32* null)
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 19
  %317 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %317, i64 0
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 3
  store i32 %314, i32* %320, align 8
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 19
  %324 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %324, i64 0
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 2
  store %struct.TYPE_13__* %321, %struct.TYPE_13__** %327, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 19
  %330 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %330, i64 0
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  store i32 -1, i32* %333, align 8
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 19
  %336 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %336, i64 0
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 18
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 20
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @svn_ra_serf__conn_setup, align 4
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 19
  %349 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %349, i64 0
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %350, align 8
  %352 = load i32, i32* @svn_ra_serf__conn_closed, align 4
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 19
  %355 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %355, i64 0
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %356, align 8
  %358 = load i32*, i32** %10, align 8
  %359 = call i64 @serf_connection_create2(i32* %339, i32 %342, i32 %345, i32 %346, %struct.TYPE_14__* %351, i32 %352, %struct.TYPE_14__* %357, i32* %358)
  store i64 %359, i64* %14, align 8
  %360 = load i64, i64* %14, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %281
  %363 = load i64, i64* %14, align 8
  %364 = call i32* @svn_ra_serf__wrap_err(i64 %363, i32* null)
  store i32* %364, i32** %6, align 8
  br label %380

365:                                              ; preds = %281
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 18
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @svn_ra_serf__progress, align 4
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %371 = call i32 @serf_context_set_progress_cb(i32 %368, i32 %369, %struct.TYPE_13__* %370)
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 16
  store i32 1, i32* %373, align 8
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 17
  store i64 0, i64* %375, align 8
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  store %struct.TYPE_13__* %376, %struct.TYPE_13__** %378, align 8
  %379 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %379, i32** %6, align 8
  br label %380

380:                                              ; preds = %365, %362
  %381 = load i32*, i32** %6, align 8
  ret i32* %381
}

declare dso_local %struct.TYPE_13__* @apr_pmemdup(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_copy_config(i64*, i64, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @apr_hash_copy(i32*, i8*) #1

declare dso_local i32 @svn_ra_serf__blncache_create(i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__uri_parse(i32*, i8*, i32*) #1

declare dso_local i32 @serf_context_create(i32*) #1

declare dso_local i32 @load_config(%struct.TYPE_13__*, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @serf_bucket_allocator_create(i32*, i32*, i32*) #1

declare dso_local i64 @serf_connection_create2(i32*, i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32* @svn_ra_serf__wrap_err(i64, i32*) #1

declare dso_local i32 @serf_context_set_progress_cb(i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
