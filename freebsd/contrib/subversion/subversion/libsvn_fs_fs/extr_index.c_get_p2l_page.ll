; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_p2l_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_p2l_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_ERR_FS_INDEX_CORRUPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"P2L page description overlaps with next page description\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_4__*, i32*, i32, i64, i64, i64, i64, i32*)* @get_p2l_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_p2l_page(i32** %0, %struct.TYPE_4__* %1, i32* %2, i32 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store i32** %0, i32*** %11, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load i32*, i32** %19, align 8
  %27 = call i32* @apr_array_make(i32* %26, i32 16, i32 4)
  store i32* %27, i32** %21, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @auto_open_p2l_index(%struct.TYPE_4__* %28, i32* %29, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %15, align 8
  %37 = call i32 @packed_stream_seek(i32 %35, i64 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @packed_stream_get(i64* %20, i32 %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i64, i64* %20, align 8
  store i64 %43, i64* %22, align 8
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %24, align 4
  store i64 0, i64* %25, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %9
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %21, align 8
  %53 = call i32 @read_entry(i32 %51, i64* %22, i32* %24, i64* %25, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %100

55:                                               ; preds = %9
  br label %56

56:                                               ; preds = %67, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %21, align 8
  %61 = call i32 @read_entry(i32 %59, i64* %22, i32* %24, i64* %25, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @packed_stream_offset(i32 %65)
  store i64 %66, i64* %23, align 8
  br label %67

67:                                               ; preds = %56
  %68 = load i64, i64* %23, align 8
  %69 = load i64, i64* %16, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %56, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %23, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %77 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %78 = call i32* @svn_error_create(i32 %76, i32* null, i32 %77)
  store i32* %78, i32** %10, align 8
  br label %104

79:                                               ; preds = %71
  %80 = load i64, i64* %22, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %18, align 8
  %83 = add nsw i64 %81, %82
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @packed_stream_get(i64* %20, i32 %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i64, i64* %20, align 8
  store i64 %91, i64* %22, align 8
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %24, align 4
  store i64 0, i64* %25, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %21, align 8
  %97 = call i32 @read_entry(i32 %95, i64* %22, i32* %24, i64* %25, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %99

99:                                               ; preds = %85, %79
  br label %100

100:                                              ; preds = %99, %48
  %101 = load i32*, i32** %21, align 8
  %102 = load i32**, i32*** %11, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %103, i32** %10, align 8
  br label %104

104:                                              ; preds = %100, %75
  %105 = load i32*, i32** %10, align 8
  ret i32* %105
}

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @auto_open_p2l_index(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @packed_stream_seek(i32, i64) #1

declare dso_local i32 @packed_stream_get(i64*, i32) #1

declare dso_local i32 @read_entry(i32, i64*, i32*, i64*, i32*) #1

declare dso_local i64 @packed_stream_offset(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
