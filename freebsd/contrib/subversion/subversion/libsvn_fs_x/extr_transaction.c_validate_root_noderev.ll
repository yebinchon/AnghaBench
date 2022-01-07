; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_validate_root_noderev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_validate_root_noderev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"predecessor count for the root node-revision is wrong: found (%d+%ld != %d), committing r%ld\00", align 1
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
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @svn_fs_x__init_rev_root(i32* %12, i64 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @svn_fs_x__get_node_revision(%struct.TYPE_4__** %13, i32* %22, i32* %12, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub nsw i64 %36, %37
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %4
  %41 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %11, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32* @svn_error_createf(i32 %41, i32* null, i32 %42, i32 %43, i64 %46, i32 %49, i64 %50)
  store i32* %51, i32** %5, align 8
  br label %54

52:                                               ; preds = %4
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %53, i32** %5, align 8
  br label %54

54:                                               ; preds = %52, %40
  %55 = load i32*, i32** %5, align 8
  ret i32* %55
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_fs_x__init_rev_root(i32*, i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_node_revision(%struct.TYPE_4__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
