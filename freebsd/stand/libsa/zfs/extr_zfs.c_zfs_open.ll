; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_zfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_zfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { %struct.file*, i32*, i64 }
%struct.file = type { i64, i32 }
%struct.zfsmount = type { i32 }

@zfs_dev = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.open_file*)* @zfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_open(i8* %0, %struct.open_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca %struct.zfsmount*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.open_file* %1, %struct.open_file** %5, align 8
  %9 = load %struct.open_file*, %struct.open_file** %5, align 8
  %10 = getelementptr inbounds %struct.open_file, %struct.open_file* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.zfsmount*
  store %struct.zfsmount* %12, %struct.zfsmount** %6, align 8
  %13 = load %struct.open_file*, %struct.open_file** %5, align 8
  %14 = getelementptr inbounds %struct.open_file, %struct.open_file* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, @zfs_dev
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = call %struct.file* @calloc(i32 1, i32 16)
  store %struct.file* %20, %struct.file** %7, align 8
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = icmp eq %struct.file* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %19
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = load %struct.open_file*, %struct.open_file** %5, align 8
  %28 = getelementptr inbounds %struct.open_file, %struct.open_file* %27, i32 0, i32 0
  store %struct.file* %26, %struct.file** %28, align 8
  %29 = load %struct.zfsmount*, %struct.zfsmount** %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  %33 = call i32 @zfs_lookup(%struct.zfsmount* %29, i8* %30, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load %struct.open_file*, %struct.open_file** %5, align 8
  %40 = getelementptr inbounds %struct.open_file, %struct.open_file* %39, i32 0, i32 0
  store %struct.file* null, %struct.file** %40, align 8
  %41 = load %struct.file*, %struct.file** %7, align 8
  %42 = call i32 @free(%struct.file* %41)
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %23, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.file* @calloc(i32, i32) #1

declare dso_local i32 @zfs_lookup(%struct.zfsmount*, i8*, i32*) #1

declare dso_local i32 @free(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
