; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_access.c_be_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_access.c_be_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.be_mount_info = type { i8*, i8*, i32, i32, i64, %struct.TYPE_6__* }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@BE_ERR_MOUNTED = common dso_local global i32 0, align 4
@BE_MNT_DEEP = common dso_local global i32 0, align 4
@BE_MNT_FORCE = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"/tmp/be_mount.XXXX\00", align 1
@BE_ERR_IO = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@BE_ERR_ZFSOPEN = common dso_local global i32 0, align 4
@BE_ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_mount(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.be_mount_info, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %21 = load i32, i32* @BE_MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @BE_MAXPATHLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @be_root_concat(%struct.TYPE_6__* %28, i8* %29, i8* %24)
  store i32 %30, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @set_error(%struct.TYPE_6__* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

36:                                               ; preds = %5
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @be_exists(%struct.TYPE_6__* %37, i8* %38)
  store i32 %39, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @set_error(%struct.TYPE_6__* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @is_mounted(i32 %48, i8* %24, i32* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = load i32, i32* @BE_ERR_MOUNTED, align 4
  %54 = call i32 @set_error(%struct.TYPE_6__* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BE_MNT_DEEP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @BE_MNT_FORCE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @MNT_FORCE, align 4
  br label %69

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  store i32 %70, i32* %15, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = trunc i64 %26 to i32
  %75 = call i32 @strlcpy(i8* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = call i32* @mkdtemp(i8* %27)
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = load i32, i32* @BE_ERR_IO, align 4
  %81 = call i32 @set_error(%struct.TYPE_6__* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %88 = call i32* @zfs_open(i32 %86, i8* %24, i32 %87)
  store i32* %88, i32** %19, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  %93 = call i32 @set_error(%struct.TYPE_6__* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

94:                                               ; preds = %83
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %18, i32 0, i32 5
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %96, align 8
  %97 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %18, i32 0, i32 0
  store i8* %24, i8** %97, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %103

101:                                              ; preds = %94
  %102 = load i8*, i8** %9, align 8
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i8* [ %27, %100 ], [ %102, %101 ]
  %105 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %18, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* %15, align 4
  %107 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %18, i32 0, i32 2
  store i32 %106, i32* %107, align 8
  %108 = load i32, i32* %16, align 4
  %109 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %18, i32 0, i32 3
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %18, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = call i64 @be_mount_iter(i32* %111, %struct.be_mount_info* %18)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %17, align 4
  br i1 %113, label %115, label %119

115:                                              ; preds = %103
  %116 = load i32*, i32** %19, align 8
  %117 = call i32 @zfs_close(i32* %116)
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

119:                                              ; preds = %103
  %120 = load i32*, i32** %19, align 8
  %121 = call i32 @zfs_close(i32* %120)
  %122 = load i8*, i8** %11, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %131

129:                                              ; preds = %124
  %130 = load i8*, i8** %9, align 8
  br label %131

131:                                              ; preds = %129, %128
  %132 = phi i8* [ %27, %128 ], [ %130, %129 ]
  %133 = load i32, i32* @BE_MAXPATHLEN, align 4
  %134 = call i32 @strlcpy(i8* %125, i8* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %119
  %136 = load i32, i32* @BE_ERR_SUCCESS, align 4
  store i32 %136, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

137:                                              ; preds = %135, %115, %90, %78, %51, %41, %32
  %138 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_root_concat(%struct.TYPE_6__*, i8*, i8*) #2

declare dso_local i32 @set_error(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @be_exists(%struct.TYPE_6__*, i8*) #2

declare dso_local i64 @is_mounted(i32, i8*, i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32* @mkdtemp(i8*) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i64 @be_mount_iter(i32*, %struct.be_mount_info*) #2

declare dso_local i32 @zfs_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
