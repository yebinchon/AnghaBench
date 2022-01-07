; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_list.c_item_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_list.c_item_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i32*, i32, i32 (i8*, %struct.TYPE_10__*, i32, i32*)*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@AUTHOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@SVN_ERR_RA_DAV_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported encoding '%s'\00", align 1
@ITEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"node-kind\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"has-props\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"created-rev\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@SVN_INVALID_FILESIZE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, %struct.TYPE_9__*, i32*, i32*)* @item_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @item_closed(i32* %0, i8* %1, i32 %2, %struct.TYPE_9__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %14, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @AUTHOR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %6
  %28 = load i32*, i32** %12, align 8
  %29 = call i8* @svn_hash_gets(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i8*, i8** %15, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %38 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i8*, i8** %15, align 8
  %40 = call i32* @svn_error_createf(i32 %37, i32* null, i32 %38, i8* %39)
  store i32* %40, i32** %7, align 8
  br label %140

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call %struct.TYPE_9__* @svn_base64_decode_string(%struct.TYPE_9__* %42, i32* %43)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %11, align 8
  br label %45

45:                                               ; preds = %41, %27
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @svn_stringbuf_set(%struct.TYPE_12__* %48, i8* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  br label %138

60:                                               ; preds = %6
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ITEM, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %137

64:                                               ; preds = %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %16, align 8
  %68 = bitcast %struct.TYPE_10__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %68, i8 0, i64 32, i1 false)
  %69 = load i32*, i32** %12, align 8
  %70 = call i8* @svn_hash_gets(i32* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %70, i8** %17, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i8* @svn_hash_gets(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %72, i8** %20, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i32 @svn_hash__get_bool(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  store i32 %75, i32* %76, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i8* @svn_hash_gets(i32* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i8* %78, i8** %19, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i8* @svn_hash_gets(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i8* %80, i8** %18, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = call i32 @svn_node_kind_from_word(i8* %81)
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  store i32 %82, i32* %83, align 4
  %84 = load i8*, i8** %20, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %64
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %88 = load i8*, i8** %20, align 8
  %89 = call i32 @svn_cstring_atoi64(i32* %87, i8* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  br label %94

91:                                               ; preds = %64
  %92 = load i32, i32* @SVN_INVALID_FILESIZE, align 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  store i32 %92, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i8*, i8** %19, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %99 = load i8*, i8** %19, align 8
  %100 = call i32 @svn_revnum_parse(i32* %98, i8* %99, i32* null)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i8*, i8** %18, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %110 = load i8*, i8** %18, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @svn_time_from_cstring(i32* %109, i8* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  br label %114

114:                                              ; preds = %108, %105
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32* %122, i32** %123, align 8
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32 (i8*, %struct.TYPE_10__*, i32, i32*)*, i32 (i8*, %struct.TYPE_10__*, i32, i32*)** %126, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = call i32 %127(i8* %128, %struct.TYPE_10__* %21, i32 %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %124, %60
  br label %138

138:                                              ; preds = %137, %45
  %139 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %139, i32** %7, align 8
  br label %140

140:                                              ; preds = %138, %36
  %141 = load i32*, i32** %7, align 8
  ret i32* %141
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_9__* @svn_base64_decode_string(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @svn_stringbuf_set(%struct.TYPE_12__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_hash__get_bool(i32*, i8*, i32) #1

declare dso_local i32 @svn_node_kind_from_word(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i32*, i8*) #1

declare dso_local i32 @svn_revnum_parse(i32*, i8*, i32*) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
