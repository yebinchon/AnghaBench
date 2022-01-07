; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_sfs_readdir_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_sfs_readdir_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readdir_args = type { i64* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dirent = type { i8*, i32, i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.vop_readdir_args*, %struct.TYPE_3__*, i32*)* @sfs_readdir_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfs_readdir_common(i8* %0, i8* %1, %struct.vop_readdir_args* %2, %struct.TYPE_3__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vop_readdir_args*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dirent, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.vop_readdir_args* %2, %struct.vop_readdir_args** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %9, align 8
  %15 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %9, align 8
  %20 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @SET_ERROR(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %112

31:                                               ; preds = %22
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %112

39:                                               ; preds = %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 4
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** @DT_DIR, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 3
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 46, i8* %51, align 1
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 2
  store i32 32, i32* %53, align 4
  %54 = call i32 @dirent_terminate(%struct.dirent* %12)
  %55 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %9, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @vfs_read_dirent(%struct.vop_readdir_args* %55, %struct.dirent* %12, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %6, align 4
  br label %112

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 32
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = call i32 @SET_ERROR(i32 %73)
  store i32 %74, i32* %6, align 4
  br label %112

75:                                               ; preds = %66
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %79, 32
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 4
  store i8* %82, i8** %83, align 8
  %84 = load i8*, i8** @DT_DIR, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 3
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 46, i8* %88, align 1
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 46, i8* %91, align 1
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 1
  store i32 2, i32* %92, align 8
  %93 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 2
  store i32 32, i32* %93, align 4
  %94 = call i32 @dirent_terminate(%struct.dirent* %12)
  %95 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %9, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @vfs_read_dirent(%struct.vop_readdir_args* %95, %struct.dirent* %12, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %81
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @SET_ERROR(i32 %103)
  store i32 %104, i32* %6, align 4
  br label %112

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105, %75
  %107 = load i32*, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32*, i32** %11, align 8
  store i32 64, i32* %110, align 4
  br label %111

111:                                              ; preds = %109, %106
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %102, %72, %62, %36, %28
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dirent_terminate(%struct.dirent*) #1

declare dso_local i32 @vfs_read_dirent(%struct.vop_readdir_args*, %struct.dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
