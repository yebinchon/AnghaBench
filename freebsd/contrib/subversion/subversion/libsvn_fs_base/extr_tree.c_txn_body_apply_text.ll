; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_apply_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_apply_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.text_baton_t = type { i32, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@text_stream_writer = common dso_local global i32 0, align 4
@text_stream_closer = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_12__*)* @txn_body_apply_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_apply_text(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.text_baton_t*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.text_baton_t*
  store %struct.text_baton_t* %9, %struct.text_baton_t** %5, align 8
  %10 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %11 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %10, i32 0, i32 5
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %16 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %15, i32 0, i32 5
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %19 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @open_path(%struct.TYPE_13__** %6, %struct.TYPE_14__* %17, i32 %20, i32 0, i8* %21, %struct.TYPE_12__* %22, i32 %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %29 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %28, i32 0, i32 5
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %38 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_fs_base__allow_locked_operation(i32 %39, i32 %40, %struct.TYPE_12__* %41, i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %36, %2
  %48 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %49 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %48, i32 0, i32 5
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %53 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @make_path_mutable(%struct.TYPE_14__* %50, %struct.TYPE_13__* %51, i32 %54, %struct.TYPE_12__* %55, i32 %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %65 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %67 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %66, i32 0, i32 3
  %68 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %69 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %74 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @svn_fs_base__dag_get_edit_stream(i32* %67, i32 %70, i8* %71, %struct.TYPE_12__* %72, i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %79 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %80 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @svn_stream_create(%struct.text_baton_t* %78, i32 %81)
  %83 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %84 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %86 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @text_stream_writer, align 4
  %89 = call i32 @svn_stream_set_write(i32 %87, i32 %88)
  %90 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %91 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @text_stream_closer, align 4
  %94 = call i32 @svn_stream_set_close(i32 %92, i32 %93)
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %95
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_13__**, %struct.TYPE_14__*, i32, i32, i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @svn_fs_base__allow_locked_operation(i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_edit_stream(i32*, i32, i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @svn_stream_create(%struct.text_baton_t*, i32) #1

declare dso_local i32 @svn_stream_set_write(i32, i32) #1

declare dso_local i32 @svn_stream_set_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
