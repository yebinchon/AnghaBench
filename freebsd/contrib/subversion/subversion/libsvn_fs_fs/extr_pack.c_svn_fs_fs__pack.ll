; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_pack.c_svn_fs_fs__pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_pack.c_svn_fs_fs__pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.pack_baton = type { i64, i8*, i32, i8*, i32 (i8*, i32, i32, i32*)*, %struct.TYPE_7__*, i32 }

@SVN_FS_FS__MIN_PACKED_FORMAT = common dso_local global i64 0, align 8
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"FSFS format (%d) too old to pack; please upgrade the filesystem.\00", align 1
@svn_fs_pack_notify_noop = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@DEFAULT_MAX_MEM = common dso_local global i64 0, align 8
@SVN_FS_FS__MIN_PACK_LOCK_FORMAT = common dso_local global i64 0, align 8
@pack_body = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__pack(%struct.TYPE_7__* %0, i64 %1, i32 (i8*, i32, i32, i32*)* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (i8*, i32, i32, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.pack_baton, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 (i8*, i32, i32, i32*)* %2, i32 (i8*, i32, i32, i32*)** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = bitcast %struct.pack_baton* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 56, i1 false)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %17, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SVN_FS_FS__MIN_PACKED_FORMAT, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %7
  %30 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32* @svn_error_createf(i32 %30, i32* null, i32 %31, i64 %34)
  store i32* %35, i32** %8, align 8
  br label %115

36:                                               ; preds = %7
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %11, align 8
  %43 = icmp ne i32 (i8*, i32, i32, i32*)* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* @svn_fs_pack_notify_noop, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 %45(i8* %46, i32 -1, i32 %47, i32* %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %8, align 8
  br label %115

52:                                               ; preds = %36
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @get_pack_status(i64* %19, %struct.TYPE_7__* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %19, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %11, align 8
  %61 = icmp ne i32 (i8*, i32, i32, i32*)* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sdiv i32 %67, %70
  %72 = load i32, i32* @svn_fs_pack_notify_noop, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 %63(i8* %64, i32 %71, i32 %72, i32* %73)
  br label %75

75:                                               ; preds = %62, %59
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %8, align 8
  br label %115

77:                                               ; preds = %52
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %16, i32 0, i32 5
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %79, align 8
  %80 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %11, align 8
  %81 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %16, i32 0, i32 4
  store i32 (i8*, i32, i32, i32*)* %80, i32 (i8*, i32, i32, i32*)** %81, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %16, i32 0, i32 3
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %16, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %16, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i64, i64* %10, align 8
  br label %94

92:                                               ; preds = %77
  %93 = load i64, i64* @DEFAULT_MAX_MEM, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = getelementptr inbounds %struct.pack_baton, %struct.pack_baton* %16, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SVN_FS_FS__MIN_PACK_LOCK_FORMAT, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = load i32, i32* @pack_body, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = call i32* @svn_fs_fs__with_pack_lock(%struct.TYPE_7__* %103, i32 %104, %struct.pack_baton* %16, i32* %105)
  store i32* %106, i32** %18, align 8
  br label %112

107:                                              ; preds = %94
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = load i32, i32* @pack_body, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = call i32* @svn_fs_fs__with_write_lock(%struct.TYPE_7__* %108, i32 %109, %struct.pack_baton* %16, i32* %110)
  store i32* %111, i32** %18, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32*, i32** %18, align 8
  %114 = call i32* @svn_error_trace(i32* %113)
  store i32* %114, i32** %8, align 8
  br label %115

115:                                              ; preds = %112, %75, %50, %29
  %116 = load i32*, i32** %8, align 8
  ret i32* %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_pack_status(i64*, %struct.TYPE_7__*, i32*) #2

declare dso_local i32* @svn_fs_fs__with_pack_lock(%struct.TYPE_7__*, i32, %struct.pack_baton*, i32*) #2

declare dso_local i32* @svn_fs_fs__with_write_lock(%struct.TYPE_7__*, i32, %struct.pack_baton*, i32*) #2

declare dso_local i32* @svn_error_trace(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
