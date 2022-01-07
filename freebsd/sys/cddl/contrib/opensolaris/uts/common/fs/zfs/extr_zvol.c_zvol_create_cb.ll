; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_create_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_create_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@DMU_OT_ZVOL = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@ZVOL_ZAP_OBJ = common dso_local global i32 0, align 4
@DMU_OT_ZVOL_PROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zvol_create_cb(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %21 = call i32 @zfs_prop_to_name(i32 %20)
  %22 = call i64 @nvlist_lookup_uint64(i32* %19, i32 %21, i32* %13)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %28 = call i32 @zfs_prop_to_name(i32 %27)
  %29 = call i64 @nvlist_lookup_uint64(i32* %26, i32 %28, i32* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %33 = call i32 @zfs_prop_default_numeric(i32 %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %31, %4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %37 = call i32 @zfs_prop_to_name(i32 %36)
  %38 = call i64 @nvlist_remove_all(i32* %35, i32 %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @VERIFY(i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %44 = call i32 @zfs_prop_to_name(i32 %43)
  %45 = call i64 @nvlist_remove_all(i32* %42, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @ZVOL_OBJ, align 4
  %48 = load i32, i32* @DMU_OT_ZVOL, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @DMU_OT_NONE, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @dmu_object_claim(i32* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 0, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @ZVOL_ZAP_OBJ, align 4
  %59 = load i32, i32* @DMU_OT_ZVOL_PROP, align 4
  %60 = load i32, i32* @DMU_OT_NONE, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @zap_create_claim(i32* %57, i32 %58, i32 %59, i32 %60, i32 0, i32* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @ZVOL_ZAP_OBJ, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @zap_update(i32* %67, i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8, i32 1, i32* %13, i32* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @zfs_prop_default_numeric(i32) #1

declare dso_local i64 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32 @dmu_object_claim(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zap_create_claim(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @zap_update(i32*, i32, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
