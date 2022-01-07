; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_zfs_mount_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_zfs_mount_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"\0ACan't find ZFS pool %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\0ACan't find dataset %s in ZFS pool %s\0A\00", align 1
@zfsmount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"\0ACan't mount ZFS dataset\0A\00", align 1
@spa = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @zfs_mount_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_mount_ds(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 47)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %6, align 8
  store i8 0, i8* %12, align 1
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i8*, i8** %3, align 8
  %16 = call %struct.TYPE_7__* @spa_find_by_name(i8* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %2, align 4
  br label %51

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i64 @zfs_spa_init(%struct.TYPE_7__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %51

27:                                               ; preds = %22
  store i64 0, i64* %4, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @zfs_lookup_dataset(%struct.TYPE_7__* %31, i8* %32, i64* %4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %39)
  store i32 -1, i32* %2, align 4
  br label %51

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @zfs_mount(%struct.TYPE_7__* %43, i64 %44, i32* @zfsmount)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** @spa, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %35, %26, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_7__* @spa_find_by_name(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @zfs_spa_init(%struct.TYPE_7__*) #1

declare dso_local i64 @zfs_lookup_dataset(%struct.TYPE_7__*, i8*, i64*) #1

declare dso_local i64 @zfs_mount(%struct.TYPE_7__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
