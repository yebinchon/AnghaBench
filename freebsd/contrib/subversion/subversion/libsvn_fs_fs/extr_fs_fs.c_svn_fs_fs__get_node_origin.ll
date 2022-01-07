; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__get_node_origin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__get_node_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__get_node_origin(i32** %0, i32* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32**, i32*** %5, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @svn_fs_fs__path_node_origin(i32* %16, %struct.TYPE_7__* %17, i32* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @get_node_origins_from_file(i32* %15, i32** %9, i32 %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @svn__ui64tobase36(i8* %29, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.TYPE_6__* @apr_hash_get(i32* %34, i8* %29, i32 %35)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %13, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %25
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @apr_pstrdup(i32* %41, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @svn_fs_fs__id_parse(i32** %40, i32 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %49

49:                                               ; preds = %39, %25
  %50 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %50)
  br label %51

51:                                               ; preds = %49, %4
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %52
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_node_origins_from_file(i32*, i32**, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_node_origin(i32*, %struct.TYPE_7__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @svn__ui64tobase36(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i32 @svn_fs_fs__id_parse(i32**, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
