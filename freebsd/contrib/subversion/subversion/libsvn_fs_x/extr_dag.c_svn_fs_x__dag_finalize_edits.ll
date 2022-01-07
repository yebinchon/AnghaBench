; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_finalize_edits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_finalize_edits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Checksum mismatch for '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__dag_finalize_edits(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @svn_fs_x__dag_file_checksum(%struct.TYPE_14__** %8, %struct.TYPE_15__* %12, i32 %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = call i32 @svn_checksum_match(%struct.TYPE_14__* %19, %struct.TYPE_14__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %11
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @svn_checksum_mismatch_err(%struct.TYPE_14__* %24, %struct.TYPE_14__* %25, i32* %26, i32 %27, i32 %32)
  store i32* %33, i32** %4, align 8
  br label %39

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = call i32 @svn_fs_x__update_dag_cache(%struct.TYPE_15__* %36)
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %35, %23
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__dag_file_checksum(%struct.TYPE_14__**, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32* @svn_checksum_mismatch_err(%struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_x__update_dag_cache(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
