; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__add_index_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__add_index_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@APR_END = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__add_index_data(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @APR_END, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @svn_io_file_seek(i32* %19, i32 %20, i64* %13, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @svn_fs_x__l2p_index_append(i32** %17, i32* %24, i32* %25, i8* %26, i32 %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  store i64 0, i64* %14, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @APR_END, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @svn_io_file_seek(i32* %32, i32 %33, i64* %14, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @svn_fs_x__p2l_index_append(i32** %18, i32* %37, i32* %38, i8* %39, i32 %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i64, i64* %13, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i32*, i32** %18, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call %struct.TYPE_3__* @svn_fs_x__unparse_footer(i64 %45, i32* %46, i64 %47, i32* %48, i32* %49, i32* %50)
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %15, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @svn_io_file_write_full(i32* %52, i8* %55, i32 %58, i32* null, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %16, align 1
  %66 = load i8, i8* %16, align 1
  %67 = zext i8 %66 to i32
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @SVN_ERR_ASSERT(i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @svn_io_file_write_full(i32* %74, i8* %16, i32 1, i32* null, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_seek(i32*, i32, i64*, i32*) #1

declare dso_local i32 @svn_fs_x__l2p_index_append(i32**, i32*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__p2l_index_append(i32**, i32*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @svn_fs_x__unparse_footer(i64, i32*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
