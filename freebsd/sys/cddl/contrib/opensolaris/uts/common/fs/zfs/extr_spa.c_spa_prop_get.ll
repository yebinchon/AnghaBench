; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_prop_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_prop_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPROP_SRC_DEFAULT = common dso_local global i32 0, align 4
@ZPOOL_PROP_INVAL = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ZPOOL_PROP_BOOTFS = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_prop_get(%struct.TYPE_8__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %21 = load i32, i32* @KM_SLEEP, align 4
  %22 = call i64 @nvlist_alloc(i32** %19, i32 %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = call i32 @mutex_enter(i32* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i32**, i32*** %5, align 8
  %31 = call i32 @spa_prop_get_config(%struct.TYPE_8__* %29, i32** %30)
  %32 = load i32*, i32** %6, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = call i32 @mutex_exit(i32* %41)
  store i32 0, i32* %3, align 4
  br label %179

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @zap_cursor_init(i32* %7, i32* %44, i64 %47)
  br label %49

49:                                               ; preds = %158, %43
  %50 = call i32 @zap_cursor_retrieve(i32* %7, %struct.TYPE_7__* %8)
  store i32 %50, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %160

52:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %53 = load i32, i32* @ZPROP_SRC_DEFAULT, align 4
  store i32 %53, i32* %12, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @zpool_name_to_prop(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @ZPOOL_PROP_INVAL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %158

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %156 [
    i32 8, label %63
    i32 1, label %123
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @zpool_prop_default_numeric(i32 %66)
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %63
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @ZPOOL_PROP_BOOTFS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %71
  store i32* null, i32** %15, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = call i32* @spa_get_dsl(%struct.TYPE_8__* %76)
  store i32* %77, i32** %14, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* @FTAG, align 4
  %80 = call i32 @dsl_pool_config_enter(i32* %78, i32 %79)
  %81 = load i32*, i32** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FTAG, align 4
  %85 = call i32 @dsl_dataset_hold_obj(i32* %81, i32 %83, i32 %84, i32** %15)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* @FTAG, align 4
  %91 = call i32 @dsl_pool_config_exit(i32* %89, i32 %90)
  br label %157

92:                                               ; preds = %75
  %93 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %94 = load i32, i32* @KM_SLEEP, align 4
  %95 = call i8* @kmem_alloc(i32 %93, i32 %94)
  store i8* %95, i8** %11, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @dsl_dataset_name(i32* %96, i8* %97)
  %99 = load i32*, i32** %15, align 8
  %100 = load i32, i32* @FTAG, align 4
  %101 = call i32 @dsl_dataset_rele(i32* %99, i32 %100)
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* @FTAG, align 4
  %104 = call i32 @dsl_pool_config_exit(i32* %102, i32 %103)
  br label %108

105:                                              ; preds = %71
  store i8* null, i8** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %92
  %109 = load i32**, i32*** %5, align 8
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @spa_prop_add_list(i32* %110, i32 %111, i8* %112, i32 %113, i32 %114)
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %121 = call i32 @kmem_free(i8* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %108
  br label %157

123:                                              ; preds = %60
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @KM_SLEEP, align 4
  %127 = call i8* @kmem_alloc(i32 %125, i32 %126)
  store i8* %127, i8** %11, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @zap_lookup(i32* %128, i64 %131, i32 %133, i32 1, i32 %135, i8* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %123
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @kmem_free(i8* %141, i32 %143)
  br label %157

145:                                              ; preds = %123
  %146 = load i32**, i32*** %5, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i8*, i8** %11, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @spa_prop_add_list(i32* %147, i32 %148, i8* %149, i32 0, i32 %150)
  %152 = load i8*, i8** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @kmem_free(i8* %152, i32 %154)
  br label %157

156:                                              ; preds = %60
  br label %157

157:                                              ; preds = %156, %145, %140, %122, %88
  br label %158

158:                                              ; preds = %157, %59
  %159 = call i32 @zap_cursor_advance(i32* %7)
  br label %49

160:                                              ; preds = %49
  %161 = call i32 @zap_cursor_fini(i32* %7)
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = call i32 @mutex_exit(i32* %163)
  br label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @ENOENT, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i32**, i32*** %5, align 8
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @nvlist_free(i32* %174)
  %176 = load i32**, i32*** %5, align 8
  store i32* null, i32** %176, align 8
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %3, align 4
  br label %179

178:                                              ; preds = %168, %165
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %172, %39
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_prop_get_config(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i64) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @zpool_name_to_prop(i32) #1

declare dso_local i32 @zpool_prop_default_numeric(i32) #1

declare dso_local i32* @spa_get_dsl(%struct.TYPE_8__*) #1

declare dso_local i32 @dsl_pool_config_enter(i32*, i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, i32**) #1

declare dso_local i32 @dsl_pool_config_exit(i32*, i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dsl_dataset_name(i32*, i8*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @spa_prop_add_list(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i32 @zap_lookup(i32*, i64, i32, i32, i32, i8*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
