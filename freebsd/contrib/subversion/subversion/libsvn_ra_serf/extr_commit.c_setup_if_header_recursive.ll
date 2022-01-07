; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_setup_if_header_recursive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_setup_if_header_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"> (<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"If\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_12__*, i8*, i32*)* @setup_if_header_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setup_if_header_recursive(i32* %0, i32* %1, %struct.TYPE_12__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  store i32* null, i32** %14, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %6, align 8
  br label %122

25:                                               ; preds = %5
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @apr_hash_first(i32* %26, i32 %29)
  store i32* %30, i32** %13, align 8
  br label %31

31:                                               ; preds = %97, %25
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %100

34:                                               ; preds = %31
  %35 = load i32*, i32** %13, align 8
  %36 = call i8* @apr_hash_this_key(i32* %35)
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @svn_relpath_skip_ancestor(i8* %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %97

42:                                               ; preds = %34
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i64 @svn_hash_gets(i32 %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %97

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %14, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @svn_pool_create(i32* %55)
  store i32* %56, i32** %14, align 8
  br label %60

57:                                               ; preds = %51
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @svn_pool_clear(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = icmp eq %struct.TYPE_11__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %11, align 8
  %65 = call %struct.TYPE_11__* @svn_stringbuf_create(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %64)
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %12, align 8
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_11__* %67, i8 signext 32)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = bitcast %struct.TYPE_13__* %16 to i8*
  %75 = bitcast %struct.TYPE_13__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 8, i1 false)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = call i64 @svn_path_url_add_component2(i8* %77, i8* %78, i32* %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_11__* %83, i8 signext 60)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = call i8* @apr_uri_unparse(i32* %86, %struct.TYPE_13__* %16, i32 0)
  %88 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_11__* %85, i8* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_11__* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i8* @apr_hash_this_val(i32* %92)
  %94 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_11__* %91, i8* %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %96 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_11__* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %69, %49, %41
  %98 = load i32*, i32** %13, align 8
  %99 = call i32* @apr_hash_next(i32* %98)
  store i32* %99, i32** %13, align 8
  br label %31

100:                                              ; preds = %31
  %101 = load i32*, i32** %14, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @svn_pool_destroy(i32* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = icmp ne %struct.TYPE_11__* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @serf_bucket_headers_set(i32* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @TRUE, align 4
  %116 = load i32*, i32** %7, align 8
  store i32 %115, i32* %116, align 4
  br label %120

117:                                              ; preds = %106
  %118 = load i32, i32* @FALSE, align 4
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %109
  %121 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %121, i32** %6, align 8
  br label %122

122:                                              ; preds = %120, %21
  %123 = load i32*, i32** %6, align 8
  ret i32* %123
}

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i64 @svn_hash_gets(i32, i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_11__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_11__*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @apr_uri_unparse(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @serf_bucket_headers_set(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
