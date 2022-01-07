; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_pack.c_svn_fs_x__pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_pack.c_svn_fs_x__pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i8*, i32, i8*, i32 (i8*, i32, i32, i32*)*, %struct.TYPE_9__*, i32 }

@svn_fs_pack_notify_noop = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@DEFAULT_MAX_MEM = common dso_local global i64 0, align 8
@pack_body = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__pack(%struct.TYPE_9__* %0, i64 %1, i32 (i8*, i32, i32, i32*)* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (i8*, i32, i32, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 (i8*, i32, i32, i32*)* %2, i32 (i8*, i32, i32, i32*)** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 56, i1 false)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = call i32 @get_pack_status(i64* %17, %struct.TYPE_9__* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i64, i64* %17, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %7
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %18, align 8
  %30 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %11, align 8
  %31 = icmp ne i32 (i8*, i32, i32, i32*)* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  %42 = load i32, i32* @svn_fs_pack_notify_noop, align 4
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 %33(i8* %34, i32 %41, i32 %42, i32* %43)
  br label %45

45:                                               ; preds = %32, %26
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %8, align 8
  br label %71

47:                                               ; preds = %7
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %49, align 8
  %50 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  store i32 (i8*, i32, i32, i32*)* %50, i32 (i8*, i32, i32, i32*)** %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i64, i64* %10, align 8
  br label %64

62:                                               ; preds = %47
  %63 = load i64, i64* @DEFAULT_MAX_MEM, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = load i32, i32* @pack_body, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = call i32* @svn_fs_x__with_pack_lock(%struct.TYPE_9__* %67, i32 %68, %struct.TYPE_10__* %16, i32* %69)
  store i32* %70, i32** %8, align 8
  br label %71

71:                                               ; preds = %64, %45
  %72 = load i32*, i32** %8, align 8
  ret i32* %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_pack_status(i64*, %struct.TYPE_9__*, i32*) #2

declare dso_local i32* @svn_fs_x__with_pack_lock(%struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
