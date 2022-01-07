; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_svn_fs_x__parse_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_svn_fs_x__parse_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@SVN_ERR_FS_CORRUPT_PROPLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Property name not NUL terminated\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Property value missing\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Property value too long\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Property value not NUL terminated\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Property count mismatch\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__parse_properties(i32** %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %8, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  store i64* %24, i64** %9, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @apr_hash_make(i32* %25)
  %27 = load i32**, i32*** %5, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = call i64* @svn__decode_uint(i32* %10, i64* %28, i64* %29)
  store i64* %30, i64** %8, align 8
  br label %31

31:                                               ; preds = %98, %3
  %32 = load i64*, i64** %8, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = icmp ult i64* %32, %33
  br i1 %34, label %35, label %112

35:                                               ; preds = %31
  %36 = load i64*, i64** %8, align 8
  %37 = bitcast i64* %36 to i8*
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i64*, i64** %8, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64* %44, i64** %8, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i32, i32* @SVN_ERR_FS_CORRUPT_PROPLIST, align 4
  %53 = call i32* @svn_error_createf(i32 %52, i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32* %53, i32** %4, align 8
  br label %124

54:                                               ; preds = %35
  %55 = load i64*, i64** %8, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = icmp uge i64* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @SVN_ERR_FS_CORRUPT_PROPLIST, align 4
  %60 = call i32* @svn_error_createf(i32 %59, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32* %60, i32** %4, align 8
  br label %124

61:                                               ; preds = %54
  %62 = load i64*, i64** %8, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = call i64* @svn__decode_uint(i32* %11, i64* %62, i64* %63)
  store i64* %64, i64** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %9, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = ptrtoint i64* %67 to i64
  %70 = ptrtoint i64* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 8
  %73 = icmp sge i64 %66, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load i32, i32* @SVN_ERR_FS_CORRUPT_PROPLIST, align 4
  %76 = call i32* @svn_error_createf(i32 %75, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32* %76, i32** %4, align 8
  br label %124

77:                                               ; preds = %61
  %78 = load i32*, i32** %7, align 8
  %79 = call %struct.TYPE_5__* @apr_pcalloc(i32* %78, i32 16)
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %12, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = bitcast i64* %80 to i8*
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %87, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %77
  %96 = load i32, i32* @SVN_ERR_FS_CORRUPT_PROPLIST, align 4
  %97 = call i32* @svn_error_createf(i32 %96, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32* %97, i32** %4, align 8
  br label %124

98:                                               ; preds = %77
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  %103 = load i64*, i64** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64* %105, i64** %8, align 8
  %106 = load i32**, i32*** %5, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %111 = call i32 @apr_hash_set(i32* %107, i8* %108, i32 %109, %struct.TYPE_5__* %110)
  br label %31

112:                                              ; preds = %31
  %113 = load i32**, i32*** %5, align 8
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @apr_hash_count(i32* %114)
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* @SVN_ERR_FS_CORRUPT_PROPLIST, align 4
  %121 = call i32* @svn_error_createf(i32 %120, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32* %121, i32** %4, align 8
  br label %124

122:                                              ; preds = %112
  %123 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %123, i32** %4, align 8
  br label %124

124:                                              ; preds = %122, %119, %95, %74, %58, %51
  %125 = load i32*, i32** %4, align 8
  ret i32* %125
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i64* @svn__decode_uint(i32*, i64*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
