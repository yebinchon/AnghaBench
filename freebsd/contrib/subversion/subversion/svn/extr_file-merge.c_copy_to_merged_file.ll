; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_copy_to_merged_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_copy_to_merged_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@APR_SIZE_MAX = common dso_local global i32 0, align 4
@SVN_ERR_IO_WRITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not write data to merged file\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i32*, i32*, i64, i64, i64, i32*)* @copy_to_merged_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_to_merged_file(i64* %0, i32* %1, i32* %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i64* %0, i64** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i64, i64* %14, align 8
  store i64 %24, i64* %21, align 8
  store i64 0, i64* %18, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = call i32* @svn_pool_create(i32* %25)
  store i32* %26, i32** %16, align 8
  br label %27

27:                                               ; preds = %43, %7
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 @svn_pool_clear(i32* %32)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @APR_SIZE_MAX, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @svn_io_file_readline(i32* %34, %struct.TYPE_4__** %17, i8** null, i64* %20, i32 %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i64, i64* %20, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %48

43:                                               ; preds = %31
  %44 = load i64, i64* %14, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %18, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %18, align 8
  br label %27

48:                                               ; preds = %42, %27
  store i64 0, i64* %19, align 8
  br label %49

49:                                               ; preds = %92, %48
  %50 = load i64, i64* %19, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %95

53:                                               ; preds = %49
  %54 = load i32*, i32** %16, align 8
  %55 = call i32 @svn_pool_clear(i32* %54)
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* @APR_SIZE_MAX, align 4
  %58 = load i32*, i32** %16, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = call i32 @svn_io_file_readline(i32* %56, %struct.TYPE_4__** %17, i8** %23, i64* %20, i32 %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i8*, i8** %23, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %66 = load i8*, i8** %23, align 8
  %67 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_4__* %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %53
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @svn_io_file_write_full(i32* %69, i32 %72, i64 %75, i64* %22, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i64, i64* %22, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %68
  %85 = load i32, i32* @SVN_ERR_IO_WRITE_ERROR, align 4
  %86 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %87 = call i32* @svn_error_create(i32 %85, i32* null, i32 %86)
  store i32* %87, i32** %8, align 8
  br label %105

88:                                               ; preds = %68
  %89 = load i64, i64* %20, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %95

92:                                               ; preds = %88
  %93 = load i64, i64* %19, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %19, align 8
  br label %49

95:                                               ; preds = %91, %49
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @svn_pool_destroy(i32* %96)
  %98 = load i64, i64* %21, align 8
  %99 = load i64, i64* %18, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* %19, align 8
  %102 = add nsw i64 %100, %101
  %103 = load i64*, i64** %9, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %8, align 8
  br label %105

105:                                              ; preds = %95, %84
  %106 = load i32*, i32** %8, align 8
  ret i32* %106
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_readline(i32*, %struct.TYPE_4__**, i8**, i64*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i32, i64, i64*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
