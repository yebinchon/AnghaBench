; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_store_dirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_store_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.ls_baton = type { i32, i32, i32 }

@svn_node_file = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_8__*, %struct.TYPE_8__*, i8*, i32*)* @store_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @store_dirent(i8* %0, i8* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ls_baton*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.ls_baton*
  store %struct.ls_baton* %16, %struct.ls_baton** %13, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = load %struct.ls_baton*, %struct.ls_baton** %13, align 8
  %19 = getelementptr inbounds %struct.ls_baton, %struct.ls_baton* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_8__* @svn_dirent_dup(%struct.TYPE_8__* %17, i32 %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %6
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @svn_node_file, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.ls_baton*, %struct.ls_baton** %13, align 8
  %36 = getelementptr inbounds %struct.ls_baton, %struct.ls_baton* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @svn_path_basename(i8* %34, i32 %37)
  store i8* %38, i8** %14, align 8
  %39 = load %struct.ls_baton*, %struct.ls_baton** %13, align 8
  %40 = getelementptr inbounds %struct.ls_baton, %struct.ls_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = call i32 @svn_hash_sets(i32 %41, i8* %42, %struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %33
  %48 = load %struct.ls_baton*, %struct.ls_baton** %13, align 8
  %49 = getelementptr inbounds %struct.ls_baton, %struct.ls_baton* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %14, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = call i32 @svn_hash_sets(i32 %50, i8* %51, %struct.TYPE_8__* %52)
  br label %54

54:                                               ; preds = %47, %33
  br label %55

55:                                               ; preds = %54, %27
  br label %78

56:                                               ; preds = %6
  %57 = load %struct.ls_baton*, %struct.ls_baton** %13, align 8
  %58 = getelementptr inbounds %struct.ls_baton, %struct.ls_baton* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @apr_pstrdup(i32 %59, i8* %60)
  store i8* %61, i8** %8, align 8
  %62 = load %struct.ls_baton*, %struct.ls_baton** %13, align 8
  %63 = getelementptr inbounds %struct.ls_baton, %struct.ls_baton* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = call i32 @svn_hash_sets(i32 %64, i8* %65, %struct.TYPE_8__* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = icmp ne %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %56
  %71 = load %struct.ls_baton*, %struct.ls_baton** %13, align 8
  %72 = getelementptr inbounds %struct.ls_baton, %struct.ls_baton* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = call i32 @svn_hash_sets(i32 %73, i8* %74, %struct.TYPE_8__* %75)
  br label %77

77:                                               ; preds = %70, %56
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %79
}

declare dso_local %struct.TYPE_8__* @svn_dirent_dup(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @svn_path_basename(i8*, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, %struct.TYPE_8__*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
