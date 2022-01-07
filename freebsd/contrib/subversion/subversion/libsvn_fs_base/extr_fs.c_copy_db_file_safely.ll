; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_copy_db_file_safely.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_copy_db_file_safely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@APR_READ = common dso_local global i32 0, align 4
@APR_LARGEFILE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_10__* null, align 8
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, i8*, i8*, i32, i64, i32*)* @copy_db_file_safely to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @copy_db_file_safely(i8* %0, i8* %1, i8* %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i8* @svn_dirent_join(i8* %23, i8* %24, i32* %25)
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i8* @svn_dirent_join(i8* %27, i8* %28, i32* %29)
  store i8* %30, i8** %17, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = load i32, i32* @APR_READ, align 4
  %33 = load i32, i32* @APR_LARGEFILE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @APR_OS_DEFAULT, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = call %struct.TYPE_10__* @svn_io_file_open(i32** %14, i8* %31, i32 %34, i32 %35, i32* %36)
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %18, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %6
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @APR_STATUS_IS_ENOENT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %51 = call i32 @svn_error_clear(%struct.TYPE_10__* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %7, align 8
  br label %128

53:                                               ; preds = %46, %40, %6
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %55 = call i32 @SVN_ERR(%struct.TYPE_10__* %54)
  %56 = load i8*, i8** %17, align 8
  %57 = load i32, i32* @APR_WRITE, align 4
  %58 = load i32, i32* @APR_CREATE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @APR_LARGEFILE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @APR_OS_DEFAULT, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = call %struct.TYPE_10__* @svn_io_file_open(i32** %15, i8* %56, i32 %61, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(%struct.TYPE_10__* %64)
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i8* @apr_palloc(i32* %66, i32 %67)
  store i8* %68, i8** %19, align 8
  br label %69

69:                                               ; preds = %53, %125
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %20, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call %struct.TYPE_10__* @svn_io_file_read(i32* %71, i8* %72, i32* %20, i32* %73)
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %21, align 8
  %75 = icmp ne %struct.TYPE_10__* %74, null
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @APR_STATUS_IS_EOF(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %84 = call i32 @svn_error_clear(%struct.TYPE_10__* %83)
  br label %95

85:                                               ; preds = %76
  %86 = load i32*, i32** %14, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call %struct.TYPE_10__* @svn_io_file_close(i32* %86, i32* %87)
  %89 = call i32 @svn_error_clear(%struct.TYPE_10__* %88)
  %90 = load i32*, i32** %15, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call %struct.TYPE_10__* @svn_io_file_close(i32* %90, i32* %91)
  %93 = call i32 @svn_error_clear(%struct.TYPE_10__* %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %7, align 8
  br label %128

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %69
  %97 = load i32*, i32** %15, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = load i32, i32* %20, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = call %struct.TYPE_10__* @svn_io_file_write_full(i32* %97, i8* %98, i32 %99, i32* null, i32* %100)
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %22, align 8
  %102 = icmp ne %struct.TYPE_10__* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load i32*, i32** %14, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = call %struct.TYPE_10__* @svn_io_file_close(i32* %104, i32* %105)
  %107 = call i32 @svn_error_clear(%struct.TYPE_10__* %106)
  %108 = load i32*, i32** %15, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = call %struct.TYPE_10__* @svn_io_file_close(i32* %108, i32* %109)
  %111 = call i32 @svn_error_clear(%struct.TYPE_10__* %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %7, align 8
  br label %128

113:                                              ; preds = %96
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32*, i32** %14, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call %struct.TYPE_10__* @svn_io_file_close(i32* %117, i32* %118)
  %120 = call i32 @SVN_ERR(%struct.TYPE_10__* %119)
  %121 = load i32*, i32** %15, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = call %struct.TYPE_10__* @svn_io_file_close(i32* %121, i32* %122)
  %124 = call i32 @SVN_ERR(%struct.TYPE_10__* %123)
  br label %126

125:                                              ; preds = %113
  br label %69

126:                                              ; preds = %116
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %7, align 8
  br label %128

128:                                              ; preds = %126, %103, %85, %49
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %129
}

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_10__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_10__*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @svn_io_file_read(i32*, i8*, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i32) #1

declare dso_local %struct.TYPE_10__* @svn_io_file_close(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_io_file_write_full(i32*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
