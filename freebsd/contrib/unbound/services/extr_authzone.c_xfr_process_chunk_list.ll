; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_process_chunk_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_process_chunk_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i64, i32, i64, i32, %struct.TYPE_5__*, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.module_env = type { i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.auth_zone = type { i32, i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"http from %s: could not store data\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"xfr from %s: could not store IXFR data\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"xfr from %s: could not store AXFR data\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"xfr from %s: no SOA in zone after update (or malformed RR)\00", align 1
@verbosity = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"auth zone %s updated to serial %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.module_env*, i32*)* @xfr_process_chunk_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfr_process_chunk_list(%struct.auth_xfer* %0, %struct.module_env* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.auth_zone*, align 8
  %9 = alloca [256 x i8], align 16
  store %struct.auth_xfer* %0, %struct.auth_xfer** %5, align 8
  store %struct.module_env* %1, %struct.module_env** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %11 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %10, i32 0, i32 6
  %12 = call i32 @lock_basic_unlock(i32* %11)
  %13 = load %struct.module_env*, %struct.module_env** %6, align 8
  %14 = getelementptr inbounds %struct.module_env, %struct.module_env* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @lock_rw_rdlock(i32* %16)
  %18 = load %struct.module_env*, %struct.module_env** %6, align 8
  %19 = getelementptr inbounds %struct.module_env, %struct.module_env* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %22 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %25 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %28 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.auth_zone* @auth_zone_find(%struct.TYPE_6__* %20, i32 %23, i32 %26, i32 %29)
  store %struct.auth_zone* %30, %struct.auth_zone** %8, align 8
  %31 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %32 = icmp ne %struct.auth_zone* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %3
  %34 = load %struct.module_env*, %struct.module_env** %6, align 8
  %35 = getelementptr inbounds %struct.module_env, %struct.module_env* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_unlock(i32* %37)
  %39 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %40 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %39, i32 0, i32 6
  %41 = call i32 @lock_basic_lock(i32* %40)
  store i32 0, i32* %4, align 4
  br label %219

42:                                               ; preds = %3
  %43 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %44 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %43, i32 0, i32 0
  %45 = call i32 @lock_rw_wrlock(i32* %44)
  %46 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %47 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %46, i32 0, i32 6
  %48 = call i32 @lock_basic_lock(i32* %47)
  %49 = load %struct.module_env*, %struct.module_env** %6, align 8
  %50 = getelementptr inbounds %struct.module_env, %struct.module_env* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @lock_rw_unlock(i32* %52)
  %54 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %55 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %54, i32 0, i32 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %42
  %63 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %64 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %65 = load %struct.module_env*, %struct.module_env** %6, align 8
  %66 = getelementptr inbounds %struct.module_env, %struct.module_env* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @apply_http(%struct.auth_xfer* %63, %struct.auth_zone* %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %62
  %71 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %72 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %71, i32 0, i32 0
  %73 = call i32 @lock_rw_unlock(i32* %72)
  %74 = load i32, i32* @VERB_ALGO, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %77 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %76, i32 0, i32 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 (i64, i8*, i8*, ...) @verbose(i64 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %84)
  store i32 0, i32* %4, align 4
  br label %219

86:                                               ; preds = %62
  br label %153

87:                                               ; preds = %42
  %88 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %89 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %88, i32 0, i32 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %87
  %95 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %96 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %95, i32 0, i32 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %94
  %102 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %103 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %104 = load %struct.module_env*, %struct.module_env** %6, align 8
  %105 = getelementptr inbounds %struct.module_env, %struct.module_env* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @apply_ixfr(%struct.auth_xfer* %102, %struct.auth_zone* %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %101
  %110 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %111 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %110, i32 0, i32 0
  %112 = call i32 @lock_rw_unlock(i32* %111)
  %113 = load i32, i32* @VERB_ALGO, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %116 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %115, i32 0, i32 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 (i64, i8*, i8*, ...) @verbose(i64 %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  %125 = load i32*, i32** %7, align 8
  store i32 1, i32* %125, align 4
  store i32 0, i32* %4, align 4
  br label %219

126:                                              ; preds = %101
  br label %152

127:                                              ; preds = %94, %87
  %128 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %129 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %130 = load %struct.module_env*, %struct.module_env** %6, align 8
  %131 = getelementptr inbounds %struct.module_env, %struct.module_env* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @apply_axfr(%struct.auth_xfer* %128, %struct.auth_zone* %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %151, label %135

135:                                              ; preds = %127
  %136 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %137 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %136, i32 0, i32 0
  %138 = call i32 @lock_rw_unlock(i32* %137)
  %139 = load i32, i32* @VERB_ALGO, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %142 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %141, i32 0, i32 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 (i64, i8*, i8*, ...) @verbose(i64 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  store i32 0, i32* %4, align 4
  br label %219

151:                                              ; preds = %127
  br label %152

152:                                              ; preds = %151, %126
  br label %153

153:                                              ; preds = %152, %86
  %154 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %155 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %154, i32 0, i32 5
  store i64 0, i64* %155, align 8
  %156 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %157 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %159 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %160 = call i32 @xfr_find_soa(%struct.auth_zone* %158, %struct.auth_xfer* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %153
  %163 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %164 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %163, i32 0, i32 0
  %165 = call i32 @lock_rw_unlock(i32* %164)
  %166 = load i32, i32* @VERB_ALGO, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %169 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %168, i32 0, i32 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 (i64, i8*, i8*, ...) @verbose(i64 %167, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %176)
  store i32 0, i32* %4, align 4
  br label %219

178:                                              ; preds = %153
  %179 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %180 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.module_env*, %struct.module_env** %6, align 8
  %185 = getelementptr inbounds %struct.module_env, %struct.module_env* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %189 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %183, %178
  %191 = load %struct.auth_zone*, %struct.auth_zone** %8, align 8
  %192 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %191, i32 0, i32 0
  %193 = call i32 @lock_rw_unlock(i32* %192)
  %194 = load i64, i64* @verbosity, align 8
  %195 = load i64, i64* @VERB_QUERY, align 8
  %196 = icmp sge i64 %194, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %190
  %198 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %199 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %204 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %207 = call i32 @dname_str(i32 %205, i8* %206)
  %208 = load i64, i64* @VERB_QUERY, align 8
  %209 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %210 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %211 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i32 (i64, i8*, i8*, ...) @verbose(i64 %208, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %209, i32 %213)
  br label %215

215:                                              ; preds = %202, %197, %190
  %216 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %217 = load %struct.module_env*, %struct.module_env** %6, align 8
  %218 = call i32 @xfr_write_after_update(%struct.auth_xfer* %216, %struct.module_env* %217)
  store i32 1, i32* %4, align 4
  br label %219

219:                                              ; preds = %215, %162, %135, %109, %70, %33
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_zone* @auth_zone_find(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @apply_http(%struct.auth_xfer*, %struct.auth_zone*, i32) #1

declare dso_local i32 @verbose(i64, i8*, i8*, ...) #1

declare dso_local i32 @apply_ixfr(%struct.auth_xfer*, %struct.auth_zone*, i32) #1

declare dso_local i32 @apply_axfr(%struct.auth_xfer*, %struct.auth_zone*, i32) #1

declare dso_local i32 @xfr_find_soa(%struct.auth_zone*, %struct.auth_xfer*) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @xfr_write_after_update(%struct.auth_xfer*, %struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
