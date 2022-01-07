; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_write_cachefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_write_cachefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, i32, i32* }
%struct.TYPE_19__ = type { i32* }

@spa_namespace_lock = common dso_local global i32 0, align 4
@rootdir = common dso_local global i32* null, align 8
@spa_mode_global = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@POOL_STATE_ACTIVE = common dso_local global i64 0, align 8
@ZFS_IMPORT_TEMP_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@FM_EREPORT_ZFS_CONFIG_CACHE_WRITE = common dso_local global i32 0, align 4
@SPA_ASYNC_CONFIG_UPDATE = common dso_local global i32 0, align 4
@spa_config_generation = common dso_local global i32 0, align 4
@ESC_ZFS_CONFIG_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_write_cachefile(%struct.TYPE_18__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32*, i32** @rootdir, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @spa_mode_global, align 4
  %21 = load i32, i32* @FWRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %3
  br label %203

25:                                               ; preds = %19
  %26 = load i64, i64* @B_FALSE, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = call %struct.TYPE_19__* @list_head(i32* %28)
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %7, align 8
  br label %30

30:                                               ; preds = %140, %25
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %32 = icmp ne %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %145

33:                                               ; preds = %30
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %13, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %140

39:                                               ; preds = %33
  store i32* null, i32** %9, align 8
  br label %40

40:                                               ; preds = %128, %86, %60, %39
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %42 = call %struct.TYPE_18__* @spa_next(%struct.TYPE_18__* %41)
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %13, align 8
  %43 = icmp ne %struct.TYPE_18__* %42, null
  br i1 %43, label %44, label %129

44:                                               ; preds = %40
  store i32* null, i32** %14, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = icmp eq %struct.TYPE_18__* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %53 = call i64 @spa_state(%struct.TYPE_18__* %52)
  %54 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %58 = call i32 @spa_writeable(%struct.TYPE_18__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %48
  br label %40

61:                                               ; preds = %56, %51
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = call i32 @mutex_enter(i32* %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = call %struct.TYPE_19__* @list_head(i32* %66)
  store %struct.TYPE_19__* %67, %struct.TYPE_19__** %8, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %61
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @strcmp(i32* %80, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77, %72, %61
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 3
  %89 = call i32 @mutex_exit(i32* %88)
  br label %40

90:                                               ; preds = %77
  %91 = load i32*, i32** %9, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32* (...) @fnvlist_alloc()
  store i32* %94, i32** %9, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ZFS_IMPORT_TEMP_NAME, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %107 = call i8* @fnvlist_lookup_string(i32* %105, i32 %106)
  store i8* %107, i8** %12, align 8
  br label %111

108:                                              ; preds = %95
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %110 = call i8* @spa_name(%struct.TYPE_18__* %109)
  store i8* %110, i8** %12, align 8
  br label %111

111:                                              ; preds = %108, %102
  %112 = load i32*, i32** %9, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @fnvlist_add_nvlist(i32* %112, i8* %113, i32* %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  %120 = call i32 @mutex_exit(i32* %119)
  %121 = load i32*, i32** %9, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = call i64 @nvlist_lookup_nvlist(i32* %121, i8* %122, i32** %14)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %111
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @spa_config_clean(i32* %126)
  br label %128

128:                                              ; preds = %125, %111
  br label %40

129:                                              ; preds = %40
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @spa_config_write(%struct.TYPE_19__* %130, i32* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i64, i64* @B_TRUE, align 8
  store i64 %136, i64* %10, align 8
  br label %137

137:                                              ; preds = %135, %129
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @nvlist_free(i32* %138)
  br label %140

140:                                              ; preds = %137, %38
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = call %struct.TYPE_19__* @list_next(i32* %142, %struct.TYPE_19__* %143)
  store %struct.TYPE_19__* %144, %struct.TYPE_19__** %7, align 8
  br label %30

145:                                              ; preds = %30
  %146 = load i64, i64* %10, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @FM_EREPORT_ZFS_CONFIG_CACHE_WRITE, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = call i32 @zfs_ereport_post(i32 %154, %struct.TYPE_18__* %155, i32* null, i32* null, i32 0, i32 0)
  br label %157

157:                                              ; preds = %153, %148
  %158 = call i64 (...) @gethrtime()
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = load i32, i32* @SPA_ASYNC_CONFIG_UPDATE, align 4
  %163 = call i32 @spa_async_request(%struct.TYPE_18__* %161, i32 %162)
  br label %167

164:                                              ; preds = %145
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %164, %157
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = call %struct.TYPE_19__* @list_head(i32* %169)
  store %struct.TYPE_19__* %170, %struct.TYPE_19__** %7, align 8
  br label %171

171:                                              ; preds = %191, %167
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %175 = call %struct.TYPE_19__* @list_next(i32* %173, %struct.TYPE_19__* %174)
  store %struct.TYPE_19__* %175, %struct.TYPE_19__** %8, align 8
  %176 = icmp ne %struct.TYPE_19__* %175, null
  br i1 %176, label %177, label %194

177:                                              ; preds = %171
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %181 = call i32 @list_remove(i32* %179, %struct.TYPE_19__* %180)
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %177
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @spa_strfree(i32* %189)
  br label %191

191:                                              ; preds = %186, %177
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %193 = call i32 @kmem_free(%struct.TYPE_19__* %192, i32 8)
  br label %171

194:                                              ; preds = %171
  %195 = load i32, i32* @spa_config_generation, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @spa_config_generation, align 4
  %197 = load i64, i64* %6, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %201 = load i32, i32* @ESC_ZFS_CONFIG_SYNC, align 4
  %202 = call i32 @spa_event_notify(%struct.TYPE_18__* %200, i32* null, i32* null, i32 %201)
  br label %203

203:                                              ; preds = %24, %199, %194
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_19__* @list_head(i32*) #1

declare dso_local %struct.TYPE_18__* @spa_next(%struct.TYPE_18__*) #1

declare dso_local i64 @spa_state(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_18__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i8* @spa_name(%struct.TYPE_18__*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @spa_config_clean(i32*) #1

declare dso_local i32 @spa_config_write(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local %struct.TYPE_19__* @list_next(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @zfs_ereport_post(i32, %struct.TYPE_18__*, i32*, i32*, i32, i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @spa_strfree(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_18__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
