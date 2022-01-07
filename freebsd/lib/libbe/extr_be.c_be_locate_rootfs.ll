; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_locate_rootfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_locate_rootfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.statfs = type { i32 }
%struct.extmnttab = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MNTTYPE_ZFS = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @be_locate_rootfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_locate_rootfs(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.statfs, align 4
  %5 = alloca %struct.extmnttab, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = call i64 @statfs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.statfs* %4)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = call i32 @statfs2mnttab(%struct.statfs* %4, %struct.extmnttab* %5)
  %11 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MNTTYPE_ZFS, align 4
  %14 = call i64 @strcmp(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %37

17:                                               ; preds = %9
  br label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

19:                                               ; preds = %17
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %24 = call i32* @zfs_path_to_zhandle(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %37

28:                                               ; preds = %19
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @zfs_get_name(i32* %32)
  %34 = call i32 @strlcpy(i32 %31, i32 %33, i32 4)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @zfs_close(i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %28, %27, %18, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @statfs2mnttab(%struct.statfs*, %struct.extmnttab*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32* @zfs_path_to_zhandle(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @zfs_get_name(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
