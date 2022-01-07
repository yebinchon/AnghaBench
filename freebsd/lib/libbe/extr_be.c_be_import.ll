; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@__const.be_import.flags = private unnamed_addr constant %struct.TYPE_7__ { i32 1 }, align 4
@BE_ERR_NOORIGIN = common dso_local global i32 0, align 4
@BE_ERR_NOENT = common dso_local global i32 0, align 4
@BE_ERR_IO = common dso_local global i32 0, align 4
@BE_ERR_UNKNOWN = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@BE_ERR_ZFSOPEN = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"canmount\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"noauto\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mountpoint\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_import(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @BE_MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.TYPE_7__* @__const.be_import.flags to i8*), i64 4, i1 false)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @be_root_concat(%struct.TYPE_8__* %20, i8* %21, i8* %18)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @zfs_receive(i32 %25, i8* %18, i32* null, %struct.TYPE_7__* %12, i32 %26, i32* null)
  store i32 %27, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %3
  %30 = load i32, i32* %13, align 4
  switch i32 %30, label %43 [
    i32 130, label %31
    i32 128, label %35
    i32 129, label %39
  ]

31:                                               ; preds = %29
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = load i32, i32* @BE_ERR_NOORIGIN, align 4
  %34 = call i32 @set_error(%struct.TYPE_8__* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = load i32, i32* @BE_ERR_NOENT, align 4
  %38 = call i32 @set_error(%struct.TYPE_8__* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

39:                                               ; preds = %29
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = load i32, i32* @BE_ERR_IO, align 4
  %42 = call i32 @set_error(%struct.TYPE_8__* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

43:                                               ; preds = %29
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %46 = call i32 @set_error(%struct.TYPE_8__* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

47:                                               ; preds = %3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %52 = call i32* @zfs_open(i32 %50, i8* %18, i32 %51)
  store i32* %52, i32** %11, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  %57 = call i32 @set_error(%struct.TYPE_8__* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

58:                                               ; preds = %47
  %59 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %60 = load i32, i32* @KM_SLEEP, align 4
  %61 = call i32 @nvlist_alloc(i32** %10, i32 %59, i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @nvlist_add_string(i32* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @nvlist_add_string(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @zfs_prop_set_list(i32* %66, i32* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @nvlist_free(i32* %69)
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @zfs_close(i32* %71)
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %58
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %78 = call i32 @set_error(%struct.TYPE_8__* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

79:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %75, %54, %43, %39, %35, %31
  %81 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @be_root_concat(%struct.TYPE_8__*, i8*, i8*) #3

declare dso_local i32 @zfs_receive(i32, i8*, i32*, %struct.TYPE_7__*, i32, i32*) #3

declare dso_local i32 @set_error(%struct.TYPE_8__*, i32) #3

declare dso_local i32* @zfs_open(i32, i8*, i32) #3

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #3

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #3

declare dso_local i32 @zfs_prop_set_list(i32*, i32*) #3

declare dso_local i32 @nvlist_free(i32*) #3

declare dso_local i32 @zfs_close(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
