; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_svn_fs_x__serialize_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_svn_fs_x__serialize_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8**, i32* }
%struct.TYPE_5__ = type { i64, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__serialize_properties(i8** %0, i64* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @apr_hash_count(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @apr_palloc(i32* %20, i32 %26)
  %28 = bitcast i8* %27 to i8**
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i8** %28, i8*** %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = call i8* @apr_palloc(i32* %30, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32* %37, i32** %38, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32* @apr_hash_first(i32* %39, i32* %40)
  store i32* %41, i32** %12, align 8
  store i64 0, i64* %14, align 8
  br label %42

42:                                               ; preds = %58, %4
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i32*, i32** %12, align 8
  %47 = call i8* @apr_hash_this_key(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* %47, i8** %51, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @apr_hash_this_val(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32*, i32** %12, align 8
  %60 = call i32* @apr_hash_next(i32* %59)
  store i32* %60, i32** %12, align 8
  %61 = load i64, i64* %14, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %14, align 8
  br label %42

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 100
  %67 = load i32*, i32** %8, align 8
  %68 = call i32* @svn_temp_serializer__init(%struct.TYPE_6__* %10, i32 24, i32 %66, i32* %67)
  store i32* %68, i32** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %72, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  %78 = call i32 @serialize_cstring_array(i32* %73, i8*** %74, i32 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @serialize_svn_string_array(i32* %79, i32** %80, i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call %struct.TYPE_5__* @svn_temp_serializer__get(i32* %84)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %13, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %5, align 8
  store i8* %88, i8** %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %6, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %94
}

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @apr_hash_this_val(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_temp_serializer__init(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @serialize_cstring_array(i32*, i8***, i32) #1

declare dso_local i32 @serialize_svn_string_array(i32*, i32**, i32) #1

declare dso_local %struct.TYPE_5__* @svn_temp_serializer__get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
