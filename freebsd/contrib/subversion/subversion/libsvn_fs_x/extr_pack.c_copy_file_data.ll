; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_pack.c_copy_file_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_pack.c_copy_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (i32)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*, i32*, i32, i32*)* @copy_file_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_file_data(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @svn_io_file_read_full2(i32* %19, i8* %20, i32 %21, i32* null, i32* null, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @svn_io_file_write_full(i32* %25, i8* %26, i32 %27, i32* null, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  br label %85

31:                                               ; preds = %5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %12, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @apr_palloc(i32* %39, i32 %42)
  store i8* %43, i8** %14, align 8
  br label %44

44:                                               ; preds = %66, %31
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MIN(i32 %48, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = icmp ne i32 (i32)* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32 (i32)*, i32 (i32)** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %60(i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %57, %47
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @svn_io_file_read_full2(i32* %67, i8* %68, i32 %69, i32* null, i32* null, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @svn_io_file_write_full(i32* %73, i8* %74, i32 %75, i32* null, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %44

82:                                               ; preds = %44
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @svn_pool_destroy(i32* %83)
  br label %85

85:                                               ; preds = %82, %18
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %86
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_read_full2(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
