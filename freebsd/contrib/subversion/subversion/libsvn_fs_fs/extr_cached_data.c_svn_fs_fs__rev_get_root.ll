; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__rev_get_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__rev_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__rev_get_root(i32** %0, %struct.TYPE_9__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @svn_fs_fs__ensure_revision_exists(i32 %20, %struct.TYPE_9__* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = call i64 @svn_fs_fs__use_log_addressing(%struct.TYPE_9__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @svn_fs_fs__id_create_root(i32 %29, i32* %30)
  %32 = load i32**, i32*** %7, align 8
  store i32* %31, i32** %32, align 8
  br label %78

33:                                               ; preds = %5
  store i32* null, i32** %15, align 8
  %34 = load i32**, i32*** %7, align 8
  %35 = bitcast i32** %34 to i8**
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @svn_cache__get(i8** %35, i64* %16, i32 %38, i32* %9, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i64, i64* %16, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %6, align 8
  br label %80

46:                                               ; preds = %33
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @svn_fs_fs__open_pack_or_rev_file(i32** %13, %struct.TYPE_9__* %47, i32 %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @get_root_changes_offset(i32* %14, i32* null, i32* %53, %struct.TYPE_9__* %54, i32 %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %13, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @get_fs_id_at_offset(i32** %15, i32* %59, %struct.TYPE_9__* %60, i32 %61, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @svn_fs_fs__close_revision_file(i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @svn_cache__set(i32 %71, i32* %9, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %15, align 8
  %77 = load i32**, i32*** %7, align 8
  store i32* %76, i32** %77, align 8
  br label %78

78:                                               ; preds = %46, %28
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %78, %44
  %81 = load i32*, i32** %6, align 8
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__ensure_revision_exists(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @svn_fs_fs__use_log_addressing(%struct.TYPE_9__*) #1

declare dso_local i32* @svn_fs_fs__id_create_root(i32, i32*) #1

declare dso_local i32 @svn_cache__get(i8**, i64*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__open_pack_or_rev_file(i32**, %struct.TYPE_9__*, i32, i32*, i32*) #1

declare dso_local i32 @get_root_changes_offset(i32*, i32*, i32*, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @get_fs_id_at_offset(i32**, i32*, %struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__close_revision_file(i32*) #1

declare dso_local i32 @svn_cache__set(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
