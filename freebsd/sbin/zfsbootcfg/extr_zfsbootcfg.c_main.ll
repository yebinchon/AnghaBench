; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/zfsbootcfg/extr_zfsbootcfg.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/zfsbootcfg/extr_zfsbootcfg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"usage: zfsbootcfg <boot.config(5) options>\0A\00", align 1
@MAX_COMMAND_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"options string is too long\0A\00", align 1
@KENV_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"vfs.zfs.boot.primary_pool\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"can't get vfs.zfs.boot.primary_pool\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"can't parse vfs.zfs.boot.primary_pool\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vfs.zfs.boot.primary_vdev\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"can't get vfs.zfs.boot.primary_vdev\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"can't parse vfs.zfs.boot.primary_vdev\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"internal error: failed to initialize ZFS library\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"ZFS_IOC_NEXTBOOT failed\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"zfs next boot options are successfully written\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MAX_COMMAND_LEN, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %79

28:                                               ; preds = %17
  %29 = load i32, i32* @KENV_GET, align 4
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %31 = call i64 @kenv(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 32)
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @perror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %79

35:                                               ; preds = %28
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %37 = call i64 @strtoumax(i8* %36, i32* null, i32 10)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %79

42:                                               ; preds = %35
  %43 = load i32, i32* @KENV_GET, align 4
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %45 = call i64 @kenv(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %44, i32 32)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @perror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %79

49:                                               ; preds = %42
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %51 = call i64 @strtoumax(i8* %50, i32* null, i32 10)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %79

56:                                               ; preds = %49
  %57 = call i32* (...) @libzfs_init()
  store i32* %57, i32** %7, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %79

62:                                               ; preds = %56
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @zpool_nextboot(i32* %63, i64 %64, i64 %65, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @libzfs_fini(i32* %73)
  store i32 1, i32* %3, align 4
  br label %79

75:                                               ; preds = %62
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @libzfs_fini(i32* %76)
  %78 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %71, %59, %54, %47, %40, %33, %25, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @kenv(i32, i8*, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @strtoumax(i8*, i32*, i32) #1

declare dso_local i32* @libzfs_init(...) #1

declare dso_local i64 @zpool_nextboot(i32*, i64, i64, i8*) #1

declare dso_local i32 @libzfs_fini(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
