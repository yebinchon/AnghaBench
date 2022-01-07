; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_read_phys_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_read_phys_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@APR_SET = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_15__*, i32*, i32*)* @read_phys_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_phys_revision(i32* %0, %struct.TYPE_15__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, 64
  %23 = call i64 @MAX(i64 %18, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %14, align 8
  %28 = sub nsw i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @APR_SET, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @svn_io_file_seek(i32 %34, i32 %35, i64* %14, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %45 = load i32, i32* %15, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @svn_io_file_read_full2(i32 %43, i8* %44, i32 %45, i32* null, i32* null, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %50 = load i32, i32* %15, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call %struct.TYPE_14__* @svn_stringbuf_ncreate(i8* %49, i32 %50, i32* %51)
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %12, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @svn_fs_fs__parse_revision_trailer(i64* %10, i64* %11, %struct.TYPE_14__* %53, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @get_phys_change_count(i32* %59, %struct.TYPE_15__* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call %struct.TYPE_14__* @svn_fs_fs__unparse_revision_trailer(i64 %64, i64 %65, i32* %66)
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %12, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load i64, i64* %11, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @read_phsy_noderev(%struct.TYPE_14__** %13, i32* %83, i64 %84, %struct.TYPE_15__* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @read_noderev(i32* %90, %struct.TYPE_14__* %91, %struct.TYPE_15__* %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %97
}

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i64*, i32*) #1

declare dso_local i32 @svn_io_file_read_full2(i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_stringbuf_ncreate(i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__parse_revision_trailer(i64*, i64*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @get_phys_change_count(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_fs_fs__unparse_revision_trailer(i64, i64, i32*) #1

declare dso_local i32 @read_phsy_noderev(%struct.TYPE_14__**, i32*, i64, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @read_noderev(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
