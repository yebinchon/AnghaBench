; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_set_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_set_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempted to set entry in non-directory node\00", align 1
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Attempted to set entry in immutable node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__dag_set_entry(%struct.TYPE_7__* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @svn_node_dir, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %24 = call i32* @svn_error_create(i32 %22, i32* null, i32 %23)
  store i32* %24, i32** %7, align 8
  br label %41

25:                                               ; preds = %6
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = call i32 @svn_fs_x__dag_check_mutable(%struct.TYPE_7__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32* @svn_error_create(i32 %30, i32* null, i32 %31)
  store i32* %32, i32** %7, align 8
  br label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i32* @set_entry(%struct.TYPE_7__* %34, i8* %35, i32* %36, i32 %37, i32 %38, i32* %39)
  store i32* %40, i32** %7, align 8
  br label %41

41:                                               ; preds = %33, %29, %21
  %42 = load i32*, i32** %7, align 8
  ret i32* %42
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_x__dag_check_mutable(%struct.TYPE_7__*) #1

declare dso_local i32* @set_entry(%struct.TYPE_7__*, i8*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
