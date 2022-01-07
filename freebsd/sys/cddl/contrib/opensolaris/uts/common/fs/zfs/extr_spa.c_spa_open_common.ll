; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_open_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_open_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i64, i64, i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@SPA_LOAD_OPEN = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@curthread = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@POOL_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4
@SPA_LOAD_RECOVER = common dso_local global i64 0, align 8
@spa_mode_global = common dso_local global i32 0, align 4
@SPA_CONFIG_SRC_CACHEFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"spa_open_common: opening %s\00", align 1
@EBADF = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_15__**, i8*, i32*, i32**)* @spa_open_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_open_common(i8* %0, %struct.TYPE_15__** %1, i8* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %18 = load i64, i64* @SPA_LOAD_OPEN, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* @B_FALSE, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @B_FALSE, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %21, align 8
  %22 = call i64 @mutex_owner(i32* @spa_namespace_lock)
  %23 = load i64, i64* @curthread, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %27 = load i32, i32* @B_TRUE, align 4
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %25, %5
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.TYPE_15__* @spa_lookup(i8* %29)
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %12, align 8
  %31 = icmp eq %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* @ENOENT, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %199

40:                                               ; preds = %28
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @POOL_STATE_UNINITIALIZED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %159

46:                                               ; preds = %40
  %47 = load i32, i32* @B_TRUE, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32*, i32** %10, align 8
  br label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  br label %56

56:                                               ; preds = %52, %50
  %57 = phi i32* [ %51, %50 ], [ %55, %52 ]
  %58 = call i32 @zpool_get_load_policy(i32* %57, %struct.TYPE_14__* %17)
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %64, %56
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %68 = load i32, i32* @spa_mode_global, align 4
  %69 = call i32 @spa_activate(%struct.TYPE_15__* %67, i32 %68)
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i32, i32* @SPA_CONFIG_SRC_CACHEFILE, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @spa_load_best(%struct.TYPE_15__* %84, i64 %85, i32 %87, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @EBADF, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %78
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %96 = call i32 @spa_unload(%struct.TYPE_15__* %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %98 = call i32 @spa_deactivate(%struct.TYPE_15__* %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %100 = load i32, i32* @B_TRUE, align 4
  %101 = load i32, i32* @B_TRUE, align 4
  %102 = call i32 @spa_write_cachefile(%struct.TYPE_15__* %99, i32 %100, i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %104 = call i32 @spa_remove(%struct.TYPE_15__* %103)
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %109

109:                                              ; preds = %107, %94
  %110 = load i32, i32* @ENOENT, align 4
  %111 = call i32 @SET_ERROR(i32 %110)
  store i32 %111, i32* %6, align 4
  br label %199

112:                                              ; preds = %78
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %158

115:                                              ; preds = %112
  %116 = load i32**, i32*** %11, align 8
  %117 = icmp ne i32** %116, null
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %143

123:                                              ; preds = %118
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = load i32**, i32*** %11, align 8
  %128 = load i32, i32* @KM_SLEEP, align 4
  %129 = call i64 @nvlist_dup(i32* %126, i32** %127, i32 %128)
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @VERIFY(i32 %131)
  %133 = load i32**, i32*** %11, align 8
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @nvlist_add_nvlist(i32* %134, i32 %135, i32 %138)
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @VERIFY(i32 %141)
  br label %143

143:                                              ; preds = %123, %118, %115
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %145 = call i32 @spa_unload(%struct.TYPE_15__* %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %147 = call i32 @spa_deactivate(%struct.TYPE_15__* %146)
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %155

155:                                              ; preds = %153, %143
  %156 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %156, align 8
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %6, align 4
  br label %199

158:                                              ; preds = %112
  br label %159

159:                                              ; preds = %158, %40
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = call i32 @spa_open_ref(%struct.TYPE_15__* %160, i8* %161)
  %163 = load i32**, i32*** %11, align 8
  %164 = icmp ne i32** %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %167 = load i32, i32* @B_TRUE, align 4
  %168 = call i32* @spa_config_generate(%struct.TYPE_15__* %166, i32* null, i64 -1, i32 %167)
  %169 = load i32**, i32*** %11, align 8
  store i32* %168, i32** %169, align 8
  br label %170

170:                                              ; preds = %165, %159
  %171 = load i64, i64* %13, align 8
  %172 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i32**, i32*** %11, align 8
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @nvlist_add_nvlist(i32* %176, i32 %177, i32 %180)
  %182 = icmp eq i64 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @VERIFY(i32 %183)
  br label %185

185:                                              ; preds = %174, %170
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  store i32 0, i32* %190, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 4
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 3
  store i64 0, i64* %194, align 8
  %195 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %196

196:                                              ; preds = %188, %185
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %198 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  store %struct.TYPE_15__* %197, %struct.TYPE_15__** %198, align 8
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %196, %155, %109, %37
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i64 @mutex_owner(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_15__* @spa_lookup(i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zpool_get_load_policy(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @spa_activate(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i8*) #1

declare dso_local i32 @spa_load_best(%struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i32 @spa_unload(%struct.TYPE_15__*) #1

declare dso_local i32 @spa_deactivate(%struct.TYPE_15__*) #1

declare dso_local i32 @spa_write_cachefile(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @spa_remove(%struct.TYPE_15__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32) #1

declare dso_local i32 @spa_open_ref(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @spa_config_generate(%struct.TYPE_15__*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
