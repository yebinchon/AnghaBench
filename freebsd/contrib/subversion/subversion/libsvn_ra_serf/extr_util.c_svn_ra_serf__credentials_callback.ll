; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__credentials_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__credentials_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@SVN_AUTH_CRED_SIMPLE = common dso_local global i32 0, align 4
@SVN_ERR_AUTHN_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"No more credentials or we tried too many times.\0AAuthentication failed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Proxy authentication failed\00", align 1
@APR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_ra_serf__credentials_callback(i8** %0, i8** %1, i32* %2, i8* %3, i32 %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %18, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %19, align 8
  %28 = load i32, i32* %14, align 4
  %29 = icmp eq i32 %28, 401
  br i1 %29, label %30, label %99

30:                                               ; preds = %8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  %38 = load i32, i32* @SVN_AUTH_CRED_SIMPLE, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_14__* @svn_auth_first_credentials(i8** %20, i32* %37, i32 %38, i8* %39, i32 %42, i32 %45)
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %22, align 8
  br label %55

47:                                               ; preds = %30
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_14__* @svn_auth_next_credentials(i8** %20, i32 %50, i32 %53)
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %22, align 8
  br label %55

55:                                               ; preds = %47, %35
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %57 = icmp ne %struct.TYPE_14__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %61 = call i32 @save_error(%struct.TYPE_12__* %59, %struct.TYPE_14__* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  br label %140

65:                                               ; preds = %55
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i8*, i8** %20, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 4
  br i1 %76, label %77, label %84

77:                                               ; preds = %72, %65
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %79 = load i32, i32* @SVN_ERR_AUTHN_FAILED, align 4
  %80 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %81 = call %struct.TYPE_14__* @svn_error_create(i32 %79, i32* null, i32 %80)
  %82 = call i32 @save_error(%struct.TYPE_12__* %78, %struct.TYPE_14__* %81)
  %83 = load i32, i32* @SVN_ERR_AUTHN_FAILED, align 4
  store i32 %83, i32* %9, align 4
  br label %140

84:                                               ; preds = %72
  %85 = load i8*, i8** %20, align 8
  %86 = bitcast i8* %85 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %21, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @apr_pstrdup(i32* %87, i32 %90)
  %92 = load i8**, i8*** %10, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @apr_pstrdup(i32* %93, i32 %96)
  %98 = load i8**, i8*** %11, align 8
  store i8* %97, i8** %98, align 8
  br label %133

99:                                               ; preds = %8
  %100 = load i32*, i32** %17, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @apr_pstrdup(i32* %100, i32 %103)
  %105 = load i8**, i8*** %10, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @apr_pstrdup(i32* %106, i32 %109)
  %111 = load i8**, i8*** %11, align 8
  store i8* %110, i8** %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %99
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 4
  br i1 %124, label %125, label %132

125:                                              ; preds = %120, %99
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %127 = load i32, i32* @SVN_ERR_AUTHN_FAILED, align 4
  %128 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %129 = call %struct.TYPE_14__* @svn_error_create(i32 %127, i32* null, i32 %128)
  %130 = call i32 @save_error(%struct.TYPE_12__* %126, %struct.TYPE_14__* %129)
  %131 = load i32, i32* @SVN_ERR_AUTHN_FAILED, align 4
  store i32 %131, i32* %9, align 4
  br label %140

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %84
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %133, %125, %77, %58
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_14__* @svn_auth_first_credentials(i8**, i32*, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @svn_auth_next_credentials(i8**, i32, i32) #1

declare dso_local i32 @save_error(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
