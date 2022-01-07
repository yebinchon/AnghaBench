; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_recover_get_largest_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_recover_get_largest_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i32*, i32*)* @recover_get_largest_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @recover_get_largest_revision(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @svn_pool_create(i32* %15)
  store i32* %16, i32** %7, align 8
  br label %17

17:                                               ; preds = %3, %39
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @svn_pool_clear(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.TYPE_7__* @svn_fs_fs__open_pack_or_rev_file(i32** %11, i32* %20, i32 %21, i32* %22, i32* %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SVN_ERR_FS_NO_SUCH_REVISION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = call i32 @svn_error_clear(%struct.TYPE_7__* %34)
  br label %42

36:                                               ; preds = %27, %17
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = call i32 @SVN_ERR(%struct.TYPE_7__* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %17

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %80, %42
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sdiv i32 %54, 2
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @svn_pool_clear(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call %struct.TYPE_7__* @svn_fs_fs__open_pack_or_rev_file(i32** %14, i32* %59, i32 %60, i32* %61, i32* %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %13, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %50
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SVN_ERR_FS_NO_SUCH_REVISION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = call i32 @svn_error_clear(%struct.TYPE_7__* %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %9, align 4
  br label %80

76:                                               ; preds = %66, %50
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = call i32 @SVN_ERR(%struct.TYPE_7__* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %72
  br label %45

81:                                               ; preds = %45
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @svn_pool_destroy(i32* %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_7__* %86
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_7__* @svn_fs_fs__open_pack_or_rev_file(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
