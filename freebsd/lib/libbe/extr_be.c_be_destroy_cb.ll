; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_destroy_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_destroy_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_destroy_data = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @be_destroy_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_destroy_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.be_destroy_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @BE_MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.be_destroy_data*
  store %struct.be_destroy_data* %17, %struct.be_destroy_data** %8, align 8
  %18 = load %struct.be_destroy_data*, %struct.be_destroy_data** %8, align 8
  %19 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @zfs_iter_children(i32* %23, i32 (i32*, i8*)* @be_destroy_cb, i8* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @zfs_destroy(i32* %31, i32 0)
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @zfs_iter_filesystems(i32* %34, i32 (i32*, i8*)* @be_destroy_cb, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

41:                                               ; preds = %33
  %42 = trunc i64 %13 to i32
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @zfs_get_name(i32* %43)
  %45 = load %struct.be_destroy_data*, %struct.be_destroy_data** %8, align 8
  %46 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i8* %15, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %47)
  %49 = load %struct.be_destroy_data*, %struct.be_destroy_data** %8, align 8
  %50 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %55 = call i32 @zfs_dataset_exists(i32 %53, i8* %15, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

58:                                               ; preds = %41
  %59 = load %struct.be_destroy_data*, %struct.be_destroy_data** %8, align 8
  %60 = getelementptr inbounds %struct.be_destroy_data, %struct.be_destroy_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %65 = call i32* @zfs_open(i32 %63, i8* %15, i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @zfs_destroy(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %58
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %57, %39, %30, %28
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_iter_children(i32*, i32 (i32*, i8*)*, i8*) #2

declare dso_local i32 @zfs_destroy(i32*, i32) #2

declare dso_local i32 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @zfs_get_name(i32*) #2

declare dso_local i32 @zfs_dataset_exists(i32, i8*, i32) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
