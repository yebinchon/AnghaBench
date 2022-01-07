; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_auth_zone_delegpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_auth_zone_delegpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, i64, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iter_qstate = type { %struct.delegpt*, %struct.TYPE_5__, i64 }
%struct.delegpt = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32* }
%struct.auth_zone = type { i32, i32, i32, i64, i32, i64 }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"auth_zone %s fallback because cache blacklisted\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"alloc failure\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32*, i64)* @auth_zone_delegpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_zone_delegpt(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.auth_zone*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca %struct.delegpt*, align 8
  %13 = alloca [256 x i8], align 16
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %15 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %249

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %24 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %28 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %22, %19
  %32 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_rdlock(i32* %37)
  %39 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %40 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %47 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.auth_zone* @auth_zones_find_zone(%struct.TYPE_8__* %43, i32* %44, i64 %45, i32 %49)
  store %struct.auth_zone* %50, %struct.auth_zone** %10, align 8
  %51 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %52 = icmp ne %struct.auth_zone* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %31
  %54 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %55 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @lock_rw_unlock(i32* %59)
  store i32 1, i32* %5, align 4
  br label %249

61:                                               ; preds = %31
  %62 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %63 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %62, i32 0, i32 0
  %64 = call i32 @lock_rw_rdlock(i32* %63)
  %65 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %66 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i32 @lock_rw_unlock(i32* %70)
  %72 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %73 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %245

76:                                               ; preds = %61
  %77 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %78 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %77, i32 0, i32 0
  %79 = load %struct.delegpt*, %struct.delegpt** %78, align 8
  %80 = icmp ne %struct.delegpt* %79, null
  br i1 %80, label %81, label %128

81:                                               ; preds = %76
  %82 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %83 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %86 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %85, i32 0, i32 0
  %87 = load %struct.delegpt*, %struct.delegpt** %86, align 8
  %88 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @query_dname_compare(i32 %84, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %81
  %93 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %94 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %93, i32 0, i32 0
  %95 = load %struct.delegpt*, %struct.delegpt** %94, align 8
  %96 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %92
  %100 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %101 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %99
  %105 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %106 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load i64, i64* @verbosity, align 8
  %111 = load i64, i64* @VERB_ALGO, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %115 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %118 = call i32 @dname_str(i32 %116, i8* %117)
  %119 = load i64, i64* @VERB_ALGO, align 8
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %121 = call i32 @verbose(i64 %119, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %113, %109
  %123 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %124 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %123, i32 0, i32 0
  %125 = call i32 @lock_rw_unlock(i32* %124)
  %126 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %127 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %126, i32 0, i32 0
  store %struct.delegpt* null, %struct.delegpt** %127, align 8
  store i32 1, i32* %5, align 4
  br label %249

128:                                              ; preds = %104, %99, %92, %81, %76
  %129 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %130 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %129, i32 0, i32 0
  %131 = load %struct.delegpt*, %struct.delegpt** %130, align 8
  %132 = icmp eq %struct.delegpt* %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %135 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %138 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %137, i32 0, i32 0
  %139 = load %struct.delegpt*, %struct.delegpt** %138, align 8
  %140 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @dname_subdomain_c(i32 %136, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %244

144:                                              ; preds = %133, %128
  %145 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %146 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %144
  %150 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %151 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %149
  %155 = load i64, i64* @verbosity, align 8
  %156 = load i64, i64* @VERB_ALGO, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %160 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %163 = call i32 @dname_str(i32 %161, i8* %162)
  %164 = load i64, i64* @VERB_ALGO, align 8
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %166 = call i32 @verbose(i64 %164, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %158, %154
  %168 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %169 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %168, i32 0, i32 0
  %170 = call i32 @lock_rw_unlock(i32* %169)
  store i32 1, i32* %5, align 4
  br label %249

171:                                              ; preds = %149, %144
  %172 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %173 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @regional_alloc_zero(i32 %174, i32 16)
  %176 = inttoptr i64 %175 to %struct.delegpt*
  store %struct.delegpt* %176, %struct.delegpt** %12, align 8
  %177 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %178 = icmp ne %struct.delegpt* %177, null
  br i1 %178, label %195, label %179

179:                                              ; preds = %171
  %180 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %181 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %182 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %187 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %186, i32 0, i32 0
  %188 = call i32 @lock_rw_unlock(i32* %187)
  store i32 1, i32* %5, align 4
  br label %249

189:                                              ; preds = %179
  %190 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %191 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %190, i32 0, i32 0
  %192 = call i32 @lock_rw_unlock(i32* %191)
  %193 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %194 = call i32 @errinf(%struct.module_qstate* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %249

195:                                              ; preds = %171
  %196 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %197 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %200 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %203 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @regional_alloc_init(i32 %198, i32 %201, i32 %204)
  %206 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %207 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %209 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %228, label %212

212:                                              ; preds = %195
  %213 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %214 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %215 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %220 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %219, i32 0, i32 0
  %221 = call i32 @lock_rw_unlock(i32* %220)
  store i32 1, i32* %5, align 4
  br label %249

222:                                              ; preds = %212
  %223 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %224 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %223, i32 0, i32 0
  %225 = call i32 @lock_rw_unlock(i32* %224)
  %226 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %227 = call i32 @errinf(%struct.module_qstate* %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %249

228:                                              ; preds = %195
  %229 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %230 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %233 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 4
  %234 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %235 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %238 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %240 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %239, i32 0, i32 0
  store i32 1, i32* %240, align 4
  %241 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %242 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %243 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %242, i32 0, i32 0
  store %struct.delegpt* %241, %struct.delegpt** %243, align 8
  br label %244

244:                                              ; preds = %228, %133
  br label %245

245:                                              ; preds = %244, %61
  %246 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %247 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %246, i32 0, i32 0
  %248 = call i32 @lock_rw_unlock(i32* %247)
  store i32 1, i32* %5, align 4
  br label %249

249:                                              ; preds = %245, %222, %218, %189, %185, %167, %122, %53, %18
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_zone* @auth_zones_find_zone(%struct.TYPE_8__*, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @verbose(i64, i8*, i8*) #1

declare dso_local i64 @dname_subdomain_c(i32, i32) #1

declare dso_local i64 @regional_alloc_zero(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @regional_alloc_init(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
