; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_copy_create_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_copy_create_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }

@ZFS_MAX_DELEG_NAME = common dso_local global i32 0, align 4
@ZFS_DELEG_CREATE_SETS = common dso_local global i32 0, align 4
@ZFS_DELEG_CREATE = common dso_local global i32 0, align 4
@ZFS_DELEG_LOCAL = common dso_local global i32 0, align 4
@DMU_OT_DSL_PERMS = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@ZFS_DELEG_USER_SETS = common dso_local global i32 0, align 4
@ZFS_DELEG_USER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64, i64, i64, i32*)* @copy_create_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_create_perms(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = call %struct.TYPE_11__* @dsl_dir_phys(%struct.TYPE_10__* %26)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i32, i32* @ZFS_MAX_DELEG_NAME, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %17, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @ZFS_DELEG_CREATE_SETS, align 4
  br label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @ZFS_DELEG_CREATE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load i32, i32* @ZFS_DELEG_LOCAL, align 4
  %43 = call i32 @zfs_deleg_whokey(i8* %33, i32 %41, i32 %42, i64* null)
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @zap_lookup(i32* %44, i64 %45, i8* %33, i32 8, i32 1, i64* %13)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %19, align 4
  br label %129

49:                                               ; preds = %40
  %50 = load i64, i64* %14, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @dmu_buf_will_dirty(i32 %55, i32* %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @DMU_OT_DSL_PERMS, align 4
  %60 = load i32, i32* @DMU_OT_NONE, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i8* @zap_create(i32* %58, i32 %59, i32 %60, i32 0, i32* %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = call %struct.TYPE_11__* @dsl_dir_phys(%struct.TYPE_10__* %64)
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  store i64 %63, i64* %14, align 8
  br label %67

67:                                               ; preds = %52, %49
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @ZFS_DELEG_USER_SETS, align 4
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @ZFS_DELEG_USER, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load i32, i32* @ZFS_DELEG_LOCAL, align 4
  %77 = call i32 @zfs_deleg_whokey(i8* %33, i32 %75, i32 %76, i64* %9)
  %78 = load i32*, i32** %11, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i64 @zap_lookup(i32* %78, i64 %79, i8* %33, i32 8, i32 1, i64* %12)
  %81 = load i64, i64* @ENOENT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %74
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* @DMU_OT_DSL_PERMS, align 4
  %86 = load i32, i32* @DMU_OT_NONE, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i8* @zap_create(i32* %84, i32 %85, i32 %86, i32 0, i32* %87)
  %89 = ptrtoint i8* %88 to i64
  store i64 %89, i64* %12, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i64 @zap_add(i32* %90, i64 %91, i8* %33, i32 8, i32 1, i64* %12, i32* %92)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @VERIFY(i32 %95)
  br label %97

97:                                               ; preds = %83, %74
  %98 = load i32*, i32** %11, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @zap_cursor_init(i32* %15, i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %125, %97
  %102 = call i64 @zap_cursor_retrieve(i32* %15, %struct.TYPE_9__* %16)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %101
  store i64 0, i64* %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 8
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ false, %104 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @ASSERT(i32 %114)
  %116 = load i32*, i32** %11, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = call i64 @zap_update(i32* %116, i64 %117, i32 %119, i32 8, i32 1, i64* %20, i32* %120)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @VERIFY(i32 %123)
  br label %125

125:                                              ; preds = %112
  %126 = call i32 @zap_cursor_advance(i32* %15)
  br label %101

127:                                              ; preds = %101
  %128 = call i32 @zap_cursor_fini(i32* %15)
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %127, %48
  %130 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %19, align 4
  switch i32 %131, label %133 [
    i32 0, label %132
    i32 1, label %132
  ]

132:                                              ; preds = %129, %129
  ret void

133:                                              ; preds = %129
  unreachable
}

declare dso_local %struct.TYPE_11__* @dsl_dir_phys(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @zfs_deleg_whokey(i8*, i32, i32, i64*) #1

declare dso_local i64 @zap_lookup(i32*, i64, i8*, i32, i32, i64*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i8* @zap_create(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_add(i32*, i64, i8*, i32, i32, i64*, i32*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i64) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @zap_update(i32*, i64, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
