; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_xform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_xform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i8*, i8* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@ZFS_ACL_VERSION_INITIAL = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@zfs_acl_fuid_ops = common dso_local global i32 0, align 4
@ZFS_ACL_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_acl_xform(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %13, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZFS_ACL_VERSION_INITIAL, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 24, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @KM_SLEEP, align 4
  %29 = call %struct.TYPE_19__* @kmem_alloc(i32 %27, i32 %28)
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %35, %3
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i8* @zfs_acl_next_ace(%struct.TYPE_20__* %31, i8* %32, i32* %12, i32* %11, i8** %10, i8** %9)
  store i8* %33, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 2
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 8
  br label %30

61:                                               ; preds = %30
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call %struct.TYPE_21__* @zfs_acl_node_alloc(i32 %67)
  store %struct.TYPE_21__* %68, %struct.TYPE_21__** %14, align 8
  %69 = load i32, i32* @zfs_acl_fuid_ops, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = call %struct.TYPE_17__* @ZTOV(%struct.TYPE_18__* %75)
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32*, i32** %6, align 8
  %90 = call i64 @zfs_copy_ace_2_fuid(i32 %74, i32 %78, %struct.TYPE_20__* %79, %struct.TYPE_19__* %80, i32 %83, i32 %86, i32* %88, i32* null, i32* %89)
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @VERIFY(i32 %92)
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* @ZFS_ACL_VERSION, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 24
  %108 = trunc i64 %107 to i32
  %109 = call i32 @kmem_free(%struct.TYPE_19__* %102, i32 %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %111 = call i32 @zfs_acl_release_nodes(%struct.TYPE_20__* %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %115 = call i32 @list_insert_head(i32* %113, %struct.TYPE_21__* %114)
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_19__* @kmem_alloc(i32, i32) #1

declare dso_local i8* @zfs_acl_next_ace(%struct.TYPE_20__*, i8*, i32*, i32*, i8**, i8**) #1

declare dso_local %struct.TYPE_21__* @zfs_acl_node_alloc(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zfs_copy_ace_2_fuid(i32, i32, %struct.TYPE_20__*, %struct.TYPE_19__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @ZTOV(%struct.TYPE_18__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @zfs_acl_release_nodes(%struct.TYPE_20__*) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
