; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_client_find_automatic_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_client_find_automatic_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32 }

@SVN_ERR_CLIENT_UNRELATED_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"Can't perform automatic merge into '%s' because it is locally added and therefore not related to the merge source\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__**, i8*, i32*, i8*, i8*, i8*, i8*, i32*, i32*, i32*)* @client_find_automatic_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @client_find_automatic_merge(%struct.TYPE_8__** %0, i8* %1, i32* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %24 = load i32*, i32** %20, align 8
  %25 = call i8* @apr_palloc(i32* %24, i32 24)
  %26 = bitcast i8* %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %22, align 8
  %27 = load i32*, i32** %20, align 8
  %28 = call i8* @apr_palloc(i32* %27, i32 48)
  %29 = bitcast i8* %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %23, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @svn_dirent_is_absolute(i8* %30)
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %15, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = load i32*, i32** %20, align 8
  %41 = load i32*, i32** %21, align 8
  %42 = call i32 @open_target_wc(%struct.TYPE_9__** %34, i8* %35, i8* %36, i8* %37, i8* %38, i32* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %10
  %52 = load i32, i32* @SVN_ERR_CLIENT_UNRELATED_RESOURCES, align 4
  %53 = call i32 @_(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0))
  %54 = load i8*, i8** %15, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = call i32 @svn_dirent_local_style(i8* %54, i32* %55)
  %57 = call i32* @svn_error_createf(i32 %52, i32* null, i32 %53, i32 %56)
  store i32* %57, i32** %11, align 8
  br label %139

58:                                               ; preds = %10
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %19, align 8
  %73 = load i32*, i32** %20, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = call i32 @svn_client_open_ra_session2(i32* %60, i32 %66, i32 %71, i32* %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i8*, i8** %13, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = call i32 @svn_client__ra_session_from_path2(i32* %78, i32* %80, i8* %81, i32* null, i32* %82, i32* %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i8*, i8** %15, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = load i32*, i32** %21, align 8
  %99 = call i32 @check_same_repos(i32 %90, i8* %91, %struct.TYPE_10__* %95, i8* %96, i32 %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = call i32 @find_automatic_merge(i32* %102, i32* %104, %struct.TYPE_7__* %105, i32* %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %126, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %137, align 8
  %138 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %138, i32** %11, align 8
  br label %139

139:                                              ; preds = %58, %51
  %140 = load i32*, i32** %11, align 8
  ret i32* %140
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_target_wc(%struct.TYPE_9__**, i8*, i8*, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_client_open_ra_session2(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @check_same_repos(i32, i8*, %struct.TYPE_10__*, i8*, i32, i32*) #1

declare dso_local i32 @find_automatic_merge(i32*, i32*, %struct.TYPE_7__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
