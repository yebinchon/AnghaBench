; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_deep_clone_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_deep_clone_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libbe_dccb = type { i32, i32, i32 }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@ZFS_PROP_CANMOUNT = common dso_local global i32 0, align 4
@ZPROP_CONT = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i64 0, align 8
@ZPROP_SRC_RECEIVED = common dso_local global i64 0, align 8
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @be_deep_clone_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_deep_clone_prop(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.libbe_dccb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @BE_MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @BE_MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.libbe_dccb*
  store %struct.libbe_dccb* %22, %struct.libbe_dccb** %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ZFS_PROP_CANMOUNT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @ZPROP_CONT, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @zfs_prop_readonly(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @ZPROP_CONT, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

34:                                               ; preds = %28
  %35 = load %struct.libbe_dccb*, %struct.libbe_dccb** %7, align 8
  %36 = getelementptr inbounds %struct.libbe_dccb, %struct.libbe_dccb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = trunc i64 %15 to i32
  %40 = trunc i64 %19 to i32
  %41 = call i32 @zfs_prop_get(i32 %37, i32 %38, i8* %17, i32 %39, i64* %8, i8* %20, i32 %40, i32 0)
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @ZPROP_CONT, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

45:                                               ; preds = %34
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @ZPROP_SRC_LOCAL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @ZPROP_SRC_RECEIVED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @ZPROP_CONT, align 4
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

55:                                               ; preds = %49, %45
  store i8* %17, i8** %12, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.libbe_dccb*, %struct.libbe_dccb** %7, align 8
  %61 = getelementptr inbounds %struct.libbe_dccb, %struct.libbe_dccb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i8* @be_mountpoint_augmented(i32 %62, i8* %63)
  store i8* %64, i8** %12, align 8
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.libbe_dccb*, %struct.libbe_dccb** %7, align 8
  %67 = getelementptr inbounds %struct.libbe_dccb, %struct.libbe_dccb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @zfs_prop_to_name(i32 %69)
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @nvlist_add_string(i32 %68, i32 %70, i8* %71)
  %73 = load i32, i32* @ZPROP_CONT, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %65, %53, %43, %32, %26
  %75 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @zfs_prop_readonly(i32) #2

declare dso_local i32 @zfs_prop_get(i32, i32, i8*, i32, i64*, i8*, i32, i32) #2

declare dso_local i8* @be_mountpoint_augmented(i32, i8*) #2

declare dso_local i32 @nvlist_add_string(i32, i32, i8*) #2

declare dso_local i32 @zfs_prop_to_name(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
