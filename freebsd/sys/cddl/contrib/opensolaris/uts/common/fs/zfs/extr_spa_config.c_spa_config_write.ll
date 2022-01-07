; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_config_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@FWRITE = common dso_local global i32 0, align 4
@FTRUNC = common dso_local global i32 0, align 4
@FCREAT = common dso_local global i32 0, align 4
@FOFFMAX = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@RMFILE = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@CRCREAT = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@RLIM64_INFINITY = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@FSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @spa_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_config_write(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @FWRITE, align 4
  %13 = load i32, i32* @FTRUNC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FCREAT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FOFFMAX, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @UIO_SYSSPACE, align 4
  %26 = load i32, i32* @RMFILE, align 4
  %27 = call i32 @vn_remove(i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %3, align 4
  br label %91

29:                                               ; preds = %2
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @fnvlist_pack(i32* %30, i64* %6)
  store i8* %31, i8** %7, align 8
  %32 = load i32, i32* @MAXPATHLEN, align 4
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call i8* @kmem_zalloc(i32 %32, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @MAXPATHLEN, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @UIO_SYSSPACE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @CRCREAT, align 4
  %45 = call i32 @vn_open(i8* %41, i32 %42, i32 %43, i32 420, i32** %8, i32 %44, i32 0)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %29
  %49 = load i32, i32* @UIO_WRITE, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @UIO_SYSSPACE, align 4
  %54 = load i32, i32* @RLIM64_INFINITY, align 4
  %55 = load i32, i32* @kcred, align 4
  %56 = call i32 @vn_rdwr(i32 %49, i32* %50, i8* %51, i64 %52, i32 0, i32 %53, i32 0, i32 %54, i32 %55, i32* null)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @FSYNC, align 4
  %62 = load i32, i32* @kcred, align 4
  %63 = call i32 @VOP_FSYNC(i32* %60, i32 %61, i32 %62, i32* null)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %59, %48
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @UIO_SYSSPACE, align 4
  %73 = call i32 @vn_rename(i8* %68, i8* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %67, %64
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @kcred, align 4
  %78 = call i32 @VOP_CLOSE(i32* %75, i32 %76, i32 1, i32 0, i32 %77, i32* null)
  br label %79

79:                                               ; preds = %74, %29
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* @UIO_SYSSPACE, align 4
  %82 = load i32, i32* @RMFILE, align 4
  %83 = call i32 @vn_remove(i8* %80, i32 %81, i32 %82)
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @fnvlist_pack_free(i8* %84, i64 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* @MAXPATHLEN, align 4
  %89 = call i32 @kmem_free(i8* %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %79, %21
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @vn_remove(i8*, i32, i32) #1

declare dso_local i8* @fnvlist_pack(i32*, i64*) #1

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @vn_open(i8*, i32, i32, i32, i32**, i32, i32) #1

declare dso_local i32 @vn_rdwr(i32, i32*, i8*, i64, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VOP_FSYNC(i32*, i32, i32, i32*) #1

declare dso_local i32 @vn_rename(i8*, i8*, i32) #1

declare dso_local i32 @VOP_CLOSE(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fnvlist_pack_free(i8*, i64) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
