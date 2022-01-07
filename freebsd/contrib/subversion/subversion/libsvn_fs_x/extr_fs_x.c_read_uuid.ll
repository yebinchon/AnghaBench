; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_read_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_read_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@APR_UUID_FORMATTED_LENGTH = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*)* @read_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_uuid(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = load i32, i32* @APR_UUID_FORMATTED_LENGTH, align 4
  %14 = add nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @svn_fs_x__path_uuid(%struct.TYPE_6__* %18, i32* %19)
  %21 = load i32, i32* @APR_READ, align 4
  %22 = load i32, i32* @APR_BUFFERED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @APR_OS_DEFAULT, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @svn_io_file_open(i32** %6, i32 %20, i32 %23, i32 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = trunc i64 %15 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @svn_io_read_length_line(i32* %29, i8* %17, i32* %9, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @apr_pstrdup(i32 %35, i8* %17)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = trunc i64 %15 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @svn_io_read_length_line(i32* %40, i8* %17, i32* %9, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @apr_pstrdup(i32 %46, i8* %17)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @svn_io_file_close(i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32* %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #2

declare dso_local i32 @svn_fs_x__path_uuid(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @svn_io_read_length_line(i32*, i8*, i32*, i32*) #2

declare dso_local i8* @apr_pstrdup(i32, i8*) #2

declare dso_local i32 @svn_io_file_close(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
