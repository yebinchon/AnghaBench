; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPSHOT_LIMIT = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_snapshot_check(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @dmu_tx_pool(i32* %27)
  store i32* %28, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @dmu_tx_is_syncing(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %149

32:                                               ; preds = %2
  store i32* null, i32** %9, align 8
  %33 = call i32* (...) @fnvlist_alloc()
  store i32* %33, i32** %9, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32* @nvlist_next_nvpair(i32* %36, i32* null)
  store i32* %37, i32** %7, align 8
  br label %38

38:                                               ; preds = %84, %32
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %90

41:                                               ; preds = %38
  %42 = load i32, i32* @MAXPATHLEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %12, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @nvpair_name(i32* %46)
  %48 = trunc i64 %43 to i32
  %49 = call i32 @strlcpy(i8* %45, i8* %47, i32 %48)
  %50 = call i8* @strchr(i8* %45, i8 signext 64)
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 4, i32* %14, align 4
  br label %80

54:                                               ; preds = %41
  %55 = load i8*, i8** %10, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %76, %54
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @nvlist_lookup_uint64(i32* %57, i8* %45, i64* %11)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i32 @fnvlist_add_uint64(i32* %61, i8* %45, i32 %64)
  br label %69

66:                                               ; preds = %56
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @fnvlist_add_uint64(i32* %67, i8* %45, i32 1)
  br label %69

69:                                               ; preds = %66, %60
  %70 = call i8* @strrchr(i8* %45, i8 signext 47)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i8*, i8** %10, align 8
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %73, %69
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %56, label %79

79:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %14, align 4
  switch i32 %82, label %243 [
    i32 0, label %83
    i32 4, label %84
  ]

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %83, %80
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32* @nvlist_next_nvpair(i32* %87, i32* %88)
  store i32* %89, i32** %7, align 8
  br label %38

90:                                               ; preds = %38
  %91 = load i32*, i32** %9, align 8
  %92 = call i32* @nvlist_next_nvpair(i32* %91, i32* null)
  store i32* %92, i32** %7, align 8
  br label %93

93:                                               ; preds = %142, %90
  %94 = load i32*, i32** %7, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %146

96:                                               ; preds = %93
  store i32 0, i32* %15, align 4
  store i64 0, i64* %17, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i8* @nvpair_name(i32* %97)
  store i8* %98, i8** %16, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = call i64 @fnvpair_value_uint64(i32* %99)
  store i64 %100, i64* %17, align 8
  %101 = load i64, i64* %17, align 8
  %102 = icmp sgt i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i32, i32* @FTAG, align 4
  %108 = call i32 @dsl_dataset_hold(i32* %105, i8* %106, i32 %107, %struct.TYPE_6__** %18)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %96
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %17, align 8
  %116 = load i32, i32* @ZFS_PROP_SNAPSHOT_LIMIT, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dsl_fs_ss_limit_check(i32 %114, i64 %115, i32 %116, i32* null, i32 %119)
  store i32 %120, i32* %15, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %122 = load i32, i32* @FTAG, align 4
  %123 = call i32 @dsl_dataset_rele(%struct.TYPE_6__* %121, i32 %122)
  br label %124

124:                                              ; preds = %111, %96
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %124
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @fnvlist_add_int32(i32* %135, i8* %136, i32 %137)
  br label %139

139:                                              ; preds = %132, %127
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %8, align 4
  br label %146

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141
  %143 = load i32*, i32** %9, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = call i32* @nvlist_next_nvpair(i32* %143, i32* %144)
  store i32* %145, i32** %7, align 8
  br label %93

146:                                              ; preds = %139, %93
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @nvlist_free(i32* %147)
  br label %149

149:                                              ; preds = %146, %2
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32* @nvlist_next_nvpair(i32* %152, i32* null)
  store i32* %153, i32** %7, align 8
  br label %154

154:                                              ; preds = %235, %149
  %155 = load i32*, i32** %7, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %241

157:                                              ; preds = %154
  store i32 0, i32* %19, align 4
  %158 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %159 = zext i32 %158 to i64
  %160 = call i8* @llvm.stacksave()
  store i8* %160, i8** %23, align 8
  %161 = alloca i8, i64 %159, align 16
  store i64 %159, i64* %24, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = call i8* @nvpair_name(i32* %162)
  store i8* %163, i8** %21, align 8
  %164 = load i8*, i8** %21, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %157
  %169 = load i32, i32* @ENAMETOOLONG, align 4
  %170 = call i32 @SET_ERROR(i32 %169)
  store i32 %170, i32* %19, align 4
  br label %171

171:                                              ; preds = %168, %157
  %172 = load i32, i32* %19, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %196

174:                                              ; preds = %171
  %175 = load i8*, i8** %21, align 8
  %176 = call i8* @strchr(i8* %175, i8 signext 64)
  store i8* %176, i8** %22, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* @EINVAL, align 4
  %181 = call i32 @SET_ERROR(i32 %180)
  store i32 %181, i32* %19, align 4
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i32, i32* %19, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load i8*, i8** %21, align 8
  %187 = load i8*, i8** %22, align 8
  %188 = load i8*, i8** %21, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = add nsw i64 %191, 1
  %193 = trunc i64 %192 to i32
  %194 = call i32 @strlcpy(i8* %161, i8* %186, i32 %193)
  br label %195

195:                                              ; preds = %185, %182
  br label %196

196:                                              ; preds = %195, %171
  %197 = load i32, i32* %19, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* @FTAG, align 4
  %202 = call i32 @dsl_dataset_hold(i32* %200, i8* %161, i32 %201, %struct.TYPE_6__** %20)
  store i32 %202, i32* %19, align 4
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i32, i32* %19, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %203
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %208 = load i8*, i8** %22, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i32*, i32** %4, align 8
  %211 = load i32, i32* @B_FALSE, align 4
  %212 = call i32 @dsl_dataset_snapshot_check_impl(%struct.TYPE_6__* %207, i8* %209, i32* %210, i32 %211, i32 0, i32* null)
  store i32 %212, i32* %19, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %214 = load i32, i32* @FTAG, align 4
  %215 = call i32 @dsl_dataset_rele(%struct.TYPE_6__* %213, i32 %214)
  br label %216

216:                                              ; preds = %206, %203
  %217 = load i32, i32* %19, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %216
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i8*, i8** %21, align 8
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @fnvlist_add_int32(i32* %227, i8* %228, i32 %229)
  br label %231

231:                                              ; preds = %224, %219
  %232 = load i32, i32* %19, align 4
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %231, %216
  %234 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %234)
  br label %235

235:                                              ; preds = %233
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32*, i32** %7, align 8
  %240 = call i32* @nvlist_next_nvpair(i32* %238, i32* %239)
  store i32* %240, i32** %7, align 8
  br label %154

241:                                              ; preds = %154
  %242 = load i32, i32* %8, align 4
  ret i32 %242

243:                                              ; preds = %80
  unreachable
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i64 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i8*, i64*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @dsl_fs_ss_limit_check(i32, i64, i32, i32*, i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_snapshot_check_impl(%struct.TYPE_6__*, i8*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
