; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_dtfs_fs_statvfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_dtfs_fs_statvfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.statvfs = type { i32, i32, i32, i32, i32, i32, i64, i64, i8*, i8*, i8* }
%struct.rlimit = type { i32 }
%struct.dtfs_mount = type { i32, i8* }

@RLIMIT_DATA = common dso_local global i32 0, align 4
@NFILES = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_fs_statvfs(%struct.puffs_usermount* %0, %struct.statvfs* %1) #0 {
  %3 = alloca %struct.puffs_usermount*, align 8
  %4 = alloca %struct.statvfs*, align 8
  %5 = alloca %struct.rlimit, align 4
  %6 = alloca %struct.dtfs_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %3, align 8
  store %struct.statvfs* %1, %struct.statvfs** %4, align 8
  %10 = load %struct.puffs_usermount*, %struct.puffs_usermount** %3, align 8
  %11 = call %struct.dtfs_mount* @puffs_getspecific(%struct.puffs_usermount* %10)
  store %struct.dtfs_mount* %11, %struct.dtfs_mount** %6, align 8
  %12 = call i32 (...) @getpagesize()
  store i32 %12, i32* %9, align 4
  %13 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %14 = call i32 @memset(%struct.statvfs* %13, i32 0, i32 64)
  %15 = load i32, i32* @RLIMIT_DATA, align 4
  %16 = call i64 @getrlimit(i32 %15, %struct.rlimit* %5)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  br label %22

21:                                               ; preds = %2
  store i32 16777216, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dtfs_mount*, %struct.dtfs_mount** %6, align 8
  %25 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ROUND(i32 %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sdiv i32 %30, %31
  %33 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %34 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @NFILES, align 8
  %36 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %37 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %40 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %42 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 8
  %43 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %44 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %43, i32 0, i32 1
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ROUND(i32 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = sdiv i32 %47, %48
  %50 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %51 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %53 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %52, i32 0, i32 4
  store i32 %49, i32* %53, align 8
  %54 = load i8*, i8** @NFILES, align 8
  %55 = load %struct.dtfs_mount*, %struct.dtfs_mount** %6, align 8
  %56 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %54 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %63 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %65 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %64, i32 0, i32 9
  store i8* %61, i8** %65, align 8
  %66 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %67 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %66, i32 0, i32 6
  store i64 0, i64* %67, align 8
  %68 = load %struct.statvfs*, %struct.statvfs** %4, align 8
  %69 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %68, i32 0, i32 7
  store i64 0, i64* %69, align 8
  ret i32 0
}

declare dso_local %struct.dtfs_mount* @puffs_getspecific(%struct.puffs_usermount*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @memset(%struct.statvfs*, i32, i32) #1

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @ROUND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
