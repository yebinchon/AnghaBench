; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 (i32, i8*)*, i64 }
%struct.TYPE_11__ = type { i32 }

@SVN_ERR_BAD_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid host '%s'\00", align 1
@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_CATEGORY_SERVERS = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8**, i8*, %struct.TYPE_10__*, i8*, i32*, i32*, i32*, i32*)* @ra_svn_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_open(%struct.TYPE_9__* %0, i8** %1, i8* %2, %struct.TYPE_10__* %3, i8* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca %struct.TYPE_11__, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = call i32* @svn_pool_create(i32* %28)
  store i32* %29, i32** %20, align 8
  %30 = load i8**, i8*** %12, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = load i8**, i8*** %12, align 8
  store i8* null, i8** %33, align 8
  br label %34

34:                                               ; preds = %32, %9
  %35 = load i8*, i8** %13, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = call i32 @parse_url(i8* %35, %struct.TYPE_11__* %24, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i8*, i8** %13, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = call i32 @parse_tunnel(i8* %39, i8** %22, i32* %40)
  %42 = load i8*, i8** %22, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %90

44:                                               ; preds = %34
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32 (i32, i8*)*, i32 (i32, i8*)** %51, align 8
  %53 = icmp ne i32 (i32, i8*)* %52, null
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %54
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32 (i32, i8*)*, i32 (i32, i8*)** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %22, align 8
  %67 = call i32 %62(i32 %65, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %59, %44
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = call i8* @svn_path_uri_decode(i32 %71, i32* %72)
  store i8* %73, i8** %27, align 8
  %74 = load i8*, i8** %27, align 8
  %75 = call i32 @is_valid_hostinfo(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @SVN_ERR_BAD_URL, align 4
  %79 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @svn_error_createf(i32 %78, i32* null, i32 %79, i32 %81)
  store i32* %82, i32** %10, align 8
  br label %133

83:                                               ; preds = %69
  %84 = load i8*, i8** %22, align 8
  %85 = load i8*, i8** %27, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = load i32*, i32** %18, align 8
  %88 = call i32 @find_tunnel_agent(i8* %84, i8* %85, i8*** %23, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %91

90:                                               ; preds = %59, %54, %49, %34
  store i8** null, i8*** %23, align 8
  br label %91

91:                                               ; preds = %90, %83
  %92 = load i32*, i32** %17, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %97 = call i32* @svn_hash_gets(i32* %95, i32 %96)
  br label %99

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i32* [ %97, %94 ], [ null, %98 ]
  store i32* %100, i32** %26, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* @SVN_CONFIG_CATEGORY_SERVERS, align 4
  %106 = call i32* @svn_hash_gets(i32* %104, i32 %105)
  br label %108

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i32* [ %106, %103 ], [ null, %107 ]
  store i32* %109, i32** %25, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_CATEGORY_CONFIG, align 4
  %112 = load i32*, i32** %26, align 8
  %113 = call i32 @svn_auth_set_parameter(i32* %110, i32 %111, i32* %112)
  %114 = load i32*, i32** %16, align 8
  %115 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS, align 4
  %116 = load i32*, i32** %25, align 8
  %117 = call i32 @svn_auth_set_parameter(i32* %114, i32 %115, i32* %116)
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %22, align 8
  %120 = load i8**, i8*** %23, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = load i32*, i32** %19, align 8
  %127 = call i32 @open_session(i32** %21, i8* %118, %struct.TYPE_11__* %24, i8* %119, i8** %120, i32* %121, %struct.TYPE_10__* %122, i8* %123, i32* %124, i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load i32*, i32** %21, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32* %129, i32** %131, align 8
  %132 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %132, i32** %10, align 8
  br label %133

133:                                              ; preds = %108, %77
  %134 = load i32*, i32** %10, align 8
  ret i32* %134
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_url(i8*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @parse_tunnel(i8*, i8**, i32*) #1

declare dso_local i8* @svn_path_uri_decode(i32, i32*) #1

declare dso_local i32 @is_valid_hostinfo(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @find_tunnel_agent(i8*, i8*, i8***, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_auth_set_parameter(i32*, i32, i32*) #1

declare dso_local i32 @open_session(i32**, i8*, %struct.TYPE_11__*, i8*, i8**, i32*, %struct.TYPE_10__*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
