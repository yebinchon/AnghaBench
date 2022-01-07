; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.be_destroy_data = type { i32*, %struct.TYPE_6__* }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@BE_DESTROY_FORCE = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@BE_ERR_NOENT = common dso_local global i32 0, align 4
@BE_ERR_DESTROYACT = common dso_local global i32 0, align 4
@BE_ERR_ZFSOPEN = common dso_local global i32 0, align 4
@BE_DESTROY_WANTORIGIN = common dso_local global i32 0, align 4
@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4
@BE_DESTROY_ORIGIN = common dso_local global i32 0, align 4
@BE_ERR_NOORIGIN = common dso_local global i32 0, align 4
@BE_DESTROY_AUTOORIGIN = common dso_local global i32 0, align 4
@BE_ERR_DESTROYMNT = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@BE_ERR_NOMEM = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BE_ERR_UNKNOWN = common dso_local global i32 0, align 4
@BE_ERR_INVORIGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_destroy(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_destroy_data, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @BE_MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @BE_MAXPATHLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %8, i32 0, i32 1
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %27, align 8
  %28 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %8, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BE_DESTROY_FORCE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %15, align 4
  store i8 0, i8* %22, align 16
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @be_root_concat(%struct.TYPE_6__* %32, i8* %33, i8* %25)
  %35 = call i8* @strchr(i8* %25, i8 signext 64)
  store i8* %35, i8** %13, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %132

37:                                               ; preds = %3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %42 = call i32 @zfs_dataset_exists(i32 %40, i8* %25, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = load i32, i32* @BE_ERR_NOENT, align 4
  %47 = call i32 @set_error(%struct.TYPE_6__* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

48:                                               ; preds = %37
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @strcmp(i8* %25, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strcmp(i8* %25, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i32, i32* @BE_ERR_DESTROYACT, align 4
  %63 = call i32 @set_error(%struct.TYPE_6__* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

64:                                               ; preds = %54
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %69 = call i32* @zfs_open(i32 %67, i8* %25, i32 %68)
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  %75 = call i32 @set_error(%struct.TYPE_6__* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

76:                                               ; preds = %64
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @BE_DESTROY_WANTORIGIN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %84 = trunc i64 %20 to i32
  %85 = call i64 @zfs_prop_get(i32* %82, i32 %83, i8* %22, i32 %84, i32* null, i32* null, i32 0, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @BE_DESTROY_ORIGIN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = load i32, i32* @BE_ERR_NOORIGIN, align 4
  %95 = call i32 @set_error(%struct.TYPE_6__* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

96:                                               ; preds = %87, %81, %76
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @BE_DESTROY_AUTOORIGIN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load i8, i8* %22, align 16
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = call i64 @be_is_auto_snapshot_name(%struct.TYPE_6__* %106, i8* %22)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* @BE_DESTROY_ORIGIN, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %105, %101, %96
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @zfs_is_mounted(i32* %114, i32* null)
  store i32 %115, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @zfs_unmount(i32* %121, i32* null, i32 0)
  br label %130

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %8, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @free(i32* %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = load i32, i32* @BE_ERR_DESTROYMNT, align 4
  %129 = call i32 @set_error(%struct.TYPE_6__* %127, i32 %128)
  store i32 %129, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %113
  br label %172

132:                                              ; preds = %3
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %137 = call i32 @zfs_dataset_exists(i32 %135, i8* %25, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %132
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = load i32, i32* @BE_ERR_NOENT, align 4
  %142 = call i32 @set_error(%struct.TYPE_6__* %140, i32 %141)
  store i32 %142, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

143:                                              ; preds = %132
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = call i32* @strdup(i8* %145)
  %147 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %8, i32 0, i32 0
  store i32* %146, i32** %147, align 8
  %148 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %8, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = load i32, i32* @BE_ERR_NOMEM, align 4
  %154 = call i32 @set_error(%struct.TYPE_6__* %152, i32 %153)
  store i32 %154, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

155:                                              ; preds = %143
  %156 = load i8*, i8** %13, align 8
  store i8 0, i8* %156, align 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %161 = call i32* @zfs_open(i32 %159, i8* %25, i32 %160)
  store i32* %161, i32** %12, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %8, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @free(i32* %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  %170 = call i32 @set_error(%struct.TYPE_6__* %168, i32 %169)
  store i32 %170, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171, %131
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @be_destroy_cb(i32* %173, %struct.be_destroy_data* %8)
  store i32 %174, i32* %14, align 4
  %175 = load i32*, i32** %12, align 8
  %176 = call i32 @zfs_close(i32* %175)
  %177 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %8, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @free(i32* %178)
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %172
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* @EBUSY, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = load i32, i32* @BE_ERR_DESTROYMNT, align 4
  %189 = call i32 @set_error(%struct.TYPE_6__* %187, i32 %188)
  store i32 %189, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

190:                                              ; preds = %182
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %192 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %193 = call i32 @set_error(%struct.TYPE_6__* %191, i32 %192)
  store i32 %193, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

194:                                              ; preds = %172
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @BE_DESTROY_ORIGIN, align 4
  %197 = and i32 %195, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

200:                                              ; preds = %194
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @strlen(i8* %203)
  store i64 %204, i64* %17, align 8
  %205 = load i8, i8* %22, align 16
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %200
  %209 = call i64 @strlen(i8* %22)
  %210 = load i64, i64* %17, align 8
  %211 = add i64 %210, 1
  %212 = icmp ule i64 %209, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %208, %200
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %215 = load i32, i32* @BE_ERR_INVORIGIN, align 4
  %216 = call i32 @set_error(%struct.TYPE_6__* %214, i32 %215)
  store i32 %216, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

217:                                              ; preds = %208
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i64, i64* %17, align 8
  %222 = call i64 @strncmp(i8* %22, i8* %220, i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %217
  %225 = load i64, i64* %17, align 8
  %226 = getelementptr inbounds i8, i8* %22, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 47
  br i1 %229, label %230, label %231

230:                                              ; preds = %224, %217
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

231:                                              ; preds = %224
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %233 = load i64, i64* %17, align 8
  %234 = getelementptr inbounds i8, i8* %22, i64 %233
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @BE_DESTROY_ORIGIN, align 4
  %238 = xor i32 %237, -1
  %239 = and i32 %236, %238
  %240 = call i32 @be_destroy(%struct.TYPE_6__* %232, i8* %235, i32 %239)
  store i32 %240, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %241

241:                                              ; preds = %231, %230, %213, %199, %190, %186, %164, %151, %139, %123, %92, %72, %60, %44
  %242 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_root_concat(%struct.TYPE_6__*, i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @zfs_dataset_exists(i32, i8*, i32) #2

declare dso_local i32 @set_error(%struct.TYPE_6__*, i32) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i64 @be_is_auto_snapshot_name(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @zfs_is_mounted(i32*, i32*) #2

declare dso_local i32 @zfs_unmount(i32*, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @be_destroy_cb(i32*, %struct.be_destroy_data*) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
