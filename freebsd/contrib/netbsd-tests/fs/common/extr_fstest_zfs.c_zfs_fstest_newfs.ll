; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_zfs.c_zfs_fstest_newfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_zfs.c_zfs_fstest_newfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ZFSDEV = common dso_local global i32 0, align 4
@RUMP_ETFS_BLK = common dso_local global i32 0, align 4
@SRVURL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_fstest_newfs(i32* %0, i8** %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @MAX(i32 67108864, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = call i32 (...) @rump_init()
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %57

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = load i32, i32* @O_CREAT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @open(i8* %22, i32 %25, i32 511)
  store i32 %26, i32* %13, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %57

29:                                               ; preds = %21
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ftruncate(i32 %30, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @close(i32 %35)
  store i32 -1, i32* %6, align 4
  br label %57

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* @ZFSDEV, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @RUMP_ETFS_BLK, align 4
  %43 = call i32 @rump_pub_etfs_register(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %57

48:                                               ; preds = %37
  %49 = load i32, i32* @SRVURL, align 4
  %50 = call i32 @rump_init_server(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i8**, i8*** %8, align 8
  store i8* null, i8** %56, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %53, %46, %34, %28, %19
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @rump_init(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @rump_pub_etfs_register(i32, i8*, i32) #1

declare dso_local i32 @rump_init_server(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
