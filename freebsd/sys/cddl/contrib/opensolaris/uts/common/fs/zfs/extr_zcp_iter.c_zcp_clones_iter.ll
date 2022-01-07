; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_clones_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_clones_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i64 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"unexpected error %d from dsl_dataset_hold_obj(dsobj)\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"unexpected error %d from zap_cursor_retrieve()\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"unexpected error %d from dsl_dataset_hold_obj(za_first_integer)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_clones_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_clones_iter(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_upvalueindex(i32 1)
  %21 = call i32 @lua_tonumber(i32* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_upvalueindex(i32 2)
  %24 = call i32 @lua_tonumber(i32* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.TYPE_14__* @zcp_run_info(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %9, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_12__* %29, i32 %30, i32 %31, %struct.TYPE_13__** %10)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %112

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @luaL_error(i32* %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %112

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__* %46)
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = load i32, i32* @FTAG, align 4
  %54 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %52, i32 %53)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %112

55:                                               ; preds = %45
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__* %59)
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @zap_cursor_init_serialized(i32* %13, i32 %58, i64 %62, i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %65, i32 %66)
  %68 = call i32 @zap_cursor_retrieve(i32* %13, %struct.TYPE_11__* %12)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %55
  %72 = call i32 @zap_cursor_fini(i32* %13)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @ENOENT, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @luaL_error(i32* %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %112

80:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %112

81:                                               ; preds = %55
  %82 = call i32 @zap_cursor_advance(i32* %13)
  %83 = call i32 @zap_cursor_serialize(i32* %13)
  store i32 %83, i32* %8, align 4
  %84 = call i32 @zap_cursor_fini(i32* %13)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FTAG, align 4
  %89 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_12__* %85, i32 %87, i32 %88, %struct.TYPE_13__** %11)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @luaL_error(i32* %93, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %112

96:                                               ; preds = %81
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dsl_dir_name(i32 %99, i8* %18)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = load i32, i32* @FTAG, align 4
  %103 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %101, i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @lua_pushnumber(i32* %104, i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @lua_upvalueindex(i32 2)
  %109 = call i32 @lua_replace(i32* %107, i32 %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @lua_pushstring(i32* %110, i8* %18)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %96, %92, %80, %76, %51, %40, %36
  %113 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_tonumber(i32*, i32) #2

declare dso_local i32 @lua_upvalueindex(i32) #2

declare dso_local %struct.TYPE_14__* @zcp_run_info(i32*) #2

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_12__*, i32, i32, %struct.TYPE_13__**) #2

declare dso_local i32 @luaL_error(i32*, i8*, i32) #2

declare dso_local %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__*) #2

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @zap_cursor_init_serialized(i32*, i32, i64, i32) #2

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @zap_cursor_fini(i32*) #2

declare dso_local i32 @zap_cursor_advance(i32*) #2

declare dso_local i32 @zap_cursor_serialize(i32*) #2

declare dso_local i32 @dsl_dir_name(i32, i8*) #2

declare dso_local i32 @lua_pushnumber(i32*, i32) #2

declare dso_local i32 @lua_replace(i32*, i32) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
