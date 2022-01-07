; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_ioctl_compat.c_zfs_ioctl_compat_pool_get_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_ioctl_compat.c_zfs_ioctl_compat_pool_get_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"allocated\00", align 1
@DATA_TYPE_NVLIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @zfs_ioctl_compat_pool_get_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioctl_compat_pool_get_props(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* null, i32** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @zfs_ioctl_compat_get_nvlist(i32 %9, i32 %12, i32 %15, i32** %4)
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @nvlist_lookup_nvlist(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %5)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @nvlist_add_nvlist(i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @DATA_TYPE_NVLIST, align 4
  %30 = call i32 @nvlist_remove(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %24, %20
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @nvlist_lookup_nvlist(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32** %5)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @nvlist_add_nvlist(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @DATA_TYPE_NVLIST, align 4
  %41 = call i32 @nvlist_remove(i32* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %31
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @zfs_ioctl_compat_put_nvlist(%struct.TYPE_4__* %43, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @nvlist_free(i32* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @zfs_ioctl_compat_get_nvlist(i32, i32, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_remove(i32*, i8*, i32) #1

declare dso_local i32 @zfs_ioctl_compat_put_nvlist(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
