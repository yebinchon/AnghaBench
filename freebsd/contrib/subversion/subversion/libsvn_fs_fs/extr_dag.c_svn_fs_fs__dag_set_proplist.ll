; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_set_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_set_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Can't set proplist on *immutable* node-revision %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__dag_set_proplist(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = call i32 @svn_fs_fs__dag_check_mutable(%struct.TYPE_8__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_7__* @svn_fs_fs__id_unparse(i32 %16, i32* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @svn_error_createf(i32 %19, i32* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32* %23, i32** %4, align 8
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i32 @get_node_revision(i32** %8, %struct.TYPE_8__* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @svn_fs_fs__set_proplist(i32 %30, i32* %31, i32* %32, i32* %33)
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %24, %13
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

declare dso_local i32 @svn_fs_fs__dag_check_mutable(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @svn_fs_fs__id_unparse(i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_node_revision(i32**, %struct.TYPE_8__*) #1

declare dso_local i32* @svn_fs_fs__set_proplist(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
