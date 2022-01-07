; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_window_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_window_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_7__*, i32, i32 (i32*, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@WRITE_BUFFER_SIZE = common dso_local global i64 0, align 8
@txn_body_txdelta_finalize_edits = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @window_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @window_consumer(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %11 = load i32 (i32*, i32)*, i32 (i32*, i32)** %10, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %11(i32* %12, i32 %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WRITE_BUFFER_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %20, %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @svn_stream_write(i32 %36, i32 %41, i64* %6)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @svn_stringbuf_setempty(%struct.TYPE_7__* %46)
  br label %48

48:                                               ; preds = %28, %20
  %49 = load i32*, i32** %3, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @svn_stream_close(i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @txn_body_txdelta_finalize_edits, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @svn_fs_base__retry_txn(i32 %61, i32 %62, %struct.TYPE_6__* %63, i32 %64, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %51, %48
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_write(i32, i32, i64*) #1

declare dso_local i32 @svn_stringbuf_setempty(%struct.TYPE_7__*) #1

declare dso_local i32 @svn_stream_close(i32) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
