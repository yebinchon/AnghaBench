; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_contents_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_contents_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.things_changed_args = type { i8*, i8*, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@SVN_ERR_FS_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Cannot compare file contents between two different filesystems\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"'%s' is not a file\00", align 1
@txn_body_contents_changed = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i8*, %struct.TYPE_5__*, i8*, i32, i32*)* @base_contents_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_contents_changed(i32* %0, %struct.TYPE_5__* %1, i8* %2, %struct.TYPE_5__* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.things_changed_args, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* @svn_error_create(i32 %26, i32* null, i32 %27)
  store i32* %28, i32** %8, align 8
  br label %79

29:                                               ; preds = %7
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @base_check_path(i64* %17, %struct.TYPE_5__* %30, i8* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* @svn_node_file, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %11, align 8
  %42 = call i32* @svn_error_createf(i32 %39, i32* null, i32 %40, i8* %41)
  store i32* %42, i32** %8, align 8
  br label %79

43:                                               ; preds = %29
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @base_check_path(i64* %17, %struct.TYPE_5__* %44, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @svn_node_file, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %54 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i8*, i8** %13, align 8
  %56 = call i32* @svn_error_createf(i32 %53, i32* null, i32 %54, i8* %55)
  store i32* %56, i32** %8, align 8
  br label %79

57:                                               ; preds = %43
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 6
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 5
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %61, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 4
  store i32* %66, i32** %67, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 3
  store i32* %68, i32** %69, align 8
  %70 = load i32, i32* %14, align 4
  %71 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @txn_body_contents_changed, align 4
  %76 = load i32, i32* @TRUE, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = call i32* @svn_fs_base__retry_txn(i64 %74, i32 %75, %struct.things_changed_args* %16, i32 %76, i32* %77)
  store i32* %78, i32** %8, align 8
  br label %79

79:                                               ; preds = %57, %52, %38, %25
  %80 = load i32*, i32** %8, align 8
  ret i32* %80
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @base_check_path(i64*, %struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32* @svn_fs_base__retry_txn(i64, i32, %struct.things_changed_args*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
