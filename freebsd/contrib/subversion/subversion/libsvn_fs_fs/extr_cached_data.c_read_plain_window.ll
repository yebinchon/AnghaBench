; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_read_plain_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_read_plain_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__**, %struct.TYPE_12__*, i64, i32*, i32*)* @read_plain_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_plain_window(%struct.TYPE_11__** %0, %struct.TYPE_12__* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = call i32 @auto_open_shared_file(%struct.TYPE_13__* %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @auto_set_start_offset(%struct.TYPE_12__* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @rs_aligned_seek(%struct.TYPE_12__* %28, i32* null, i64 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i64, i64* %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call %struct.TYPE_11__* @svn_stringbuf_create_ensure(i64 %33, i32* %34)
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @svn_io_file_read_full2(i32 %43, i64* %47, i64 %48, i32* null, i32* null, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %63
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @auto_open_shared_file(%struct.TYPE_13__*) #1

declare dso_local i32 @auto_set_start_offset(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @rs_aligned_seek(%struct.TYPE_12__*, i32*, i64, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_stringbuf_create_ensure(i64, i32*) #1

declare dso_local i32 @svn_io_file_read_full2(i32, i64*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
