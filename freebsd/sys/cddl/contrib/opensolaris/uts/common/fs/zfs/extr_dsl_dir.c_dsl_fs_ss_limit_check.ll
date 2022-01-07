; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_fs_ss_limit_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_fs_ss_limit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@ZFS_PROP_FILESYSTEM_LIMIT = common dso_local global i64 0, align 8
@ZFS_PROP_SNAPSHOT_LIMIT = common dso_local global i64 0, align 8
@ENFORCE_NEVER = common dso_local global i64 0, align 8
@DD_FIELD_SNAPSHOT_COUNT = common dso_local global i8* null, align 8
@DD_FIELD_FILESYSTEM_COUNT = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ENFORCE_ALWAYS = common dso_local global i64 0, align 8
@EDQUOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_fs_ss_limit_check(%struct.TYPE_8__* %0, i64 %1, i64 %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 @dsl_pool_config_held(%struct.TYPE_9__* %25)
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @ZFS_PROP_FILESYSTEM_LIMIT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @ZFS_PROP_SNAPSHOT_LIMIT, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %5
  %36 = phi i1 [ true, %5 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 @dsl_enforce_ds_ss_limits(%struct.TYPE_8__* %39, i64 %40, i32* %41)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* @ENFORCE_NEVER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %121

47:                                               ; preds = %35
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %121

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @ZFS_PROP_SNAPSHOT_LIMIT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32*, i32** %11, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %121

59:                                               ; preds = %55
  %60 = load i8*, i8** @DD_FIELD_SNAPSHOT_COUNT, align 8
  store i8* %60, i8** %15, align 8
  br label %63

61:                                               ; preds = %51
  %62 = load i8*, i8** @DD_FIELD_FILESYSTEM_COUNT, align 8
  store i8* %62, i8** %15, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = icmp eq %struct.TYPE_8__* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %121

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = call i32 @dsl_dir_is_zapified(%struct.TYPE_8__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call i64 @zap_lookup(i32* %73, i32 %76, i8* %77, i32 8, i32 1, i64* %14)
  %79 = load i64, i64* @ENOENT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72, %68
  store i32 0, i32* %6, align 4
  br label %121

82:                                               ; preds = %72
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @zfs_prop_to_name(i64 %84)
  %86 = load i32, i32* @B_FALSE, align 4
  %87 = call i32 @dsl_prop_get_dd(%struct.TYPE_8__* %83, i32 %85, i32 8, i32 1, i64* %13, i32* null, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %6, align 4
  br label %121

92:                                               ; preds = %82
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* @ENFORCE_ALWAYS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* %13, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EDQUOT, align 4
  %104 = call i32 @SET_ERROR(i32 %103)
  store i32 %104, i32* %6, align 4
  br label %121

105:                                              ; preds = %96, %92
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = icmp ne %struct.TYPE_8__* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @dsl_fs_ss_limit_check(%struct.TYPE_8__* %113, i64 %114, i64 %115, %struct.TYPE_8__* %116, i32* %117)
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %110, %105
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %102, %90, %81, %67, %58, %50, %46
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_9__*) #1

declare dso_local i64 @dsl_enforce_ds_ss_limits(%struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @dsl_dir_is_zapified(%struct.TYPE_8__*) #1

declare dso_local i64 @zap_lookup(i32*, i32, i8*, i32, i32, i64*) #1

declare dso_local i32 @dsl_prop_get_dd(%struct.TYPE_8__*, i32, i32, i32, i64*, i32*, i32) #1

declare dso_local i32 @zfs_prop_to_name(i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
