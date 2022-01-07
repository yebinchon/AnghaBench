; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_validate_root_noderev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_validate_root_noderev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [93 x i8] c"predecessor count for the root node-revision is wrong: found (%d+%ld != %d), committing r%ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_4__*, i64, i32*)* @validate_root_noderev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @validate_root_noderev(i32* %0, %struct.TYPE_4__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @svn_fs_fs__revision_root(i32** %12, i32* %21, i64 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @svn_fs_fs__node_id(i32** %13, i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @svn_fs_fs__get_node_revision(%struct.TYPE_4__** %14, i32* %30, i32* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %4
  %50 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %11, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32* @svn_error_createf(i32 %50, i32* null, i32 %51, i32 %52, i64 %55, i32 %58, i64 %59)
  store i32* %60, i32** %5, align 8
  br label %63

61:                                               ; preds = %4
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %61, %49
  %64 = load i32*, i32** %5, align 8
  ret i32* %64
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__revision_root(i32**, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__node_id(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__get_node_revision(%struct.TYPE_4__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
