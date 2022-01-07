; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_binary_diff.c_create_compressed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_binary_diff.c_create_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"diffgz\00", align 1
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN__STREAM_CHUNK_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, i32*, i32 (i8*)*, i8*, i32*, i32*)* @create_compressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_compressed(i32** %0, i32* %1, i32* %2, i32* %3, i32 (i8*)* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32 (i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 (i8*)* %4, i32 (i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %18, align 4
  %23 = load i32**, i32*** %9, align 8
  %24 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = call i32 @svn_io_open_uniquely_named(i32** %23, i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32**, i32*** %9, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 @svn_stream_from_aprfile2(i32* %30, i32 %31, i32* %32)
  %34 = load i32*, i32** %16, align 8
  %35 = call i32* @svn_stream_compressed(i32 %33, i32* %34)
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %8
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %20, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %21, align 8
  %44 = trunc i64 %41 to i32
  store i32 %44, i32* %19, align 4
  %45 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  %46 = icmp ne i32 (i8*)* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 %48(i8* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %47, %39
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @svn_stream_read_full(i32* %53, i8* %43, i32* %19)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %18, align 4
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @svn_stream_write(i32* %59, i8* %43, i32* %19)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %62)
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %39, label %67

67:                                               ; preds = %63
  br label %72

68:                                               ; preds = %8
  store i32 0, i32* %22, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @svn_stream_write(i32* %69, i8* null, i32* %22)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %68, %67
  %73 = load i32*, i32** %17, align 8
  %74 = call i32 @svn_stream_close(i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32, i32* %18, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32**, i32*** %9, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @svn_io_file_size_get(i32* %78, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_uniquely_named(i32**, i32*, i32*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_compressed(i32, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @svn_stream_read_full(i32*, i8*, i32*) #1

declare dso_local i32 @svn_stream_write(i32*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_io_file_size_get(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
