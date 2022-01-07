; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-info-cmd.c_client_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-info-cmd.c_client_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64 }

@svn_depth_unknown = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"URL '%s' non-existent in revision %ld\00", align 1
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_21__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i8*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32, i32, i32*, i32*, i32*, i32*)* @client_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @client_info(i8* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca %struct.TYPE_21__*, align 8
  %28 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @svn_depth_unknown, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = load i32, i32* @svn_depth_empty, align 4
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %38 = load i32*, i32** %20, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = call i32 @svn_client__ra_session_from_path2(i32** %22, %struct.TYPE_23__** %23, i8* %35, i32* null, %struct.TYPE_20__* %36, %struct.TYPE_20__* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %21, align 8
  %46 = call i32 @svn_uri_split(i32* null, i8** %25, i32 %44, i32* %45)
  %47 = load i32*, i32** %22, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %21, align 8
  %52 = call i32 @svn_ra_stat(i32* %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %50, %struct.TYPE_22__** %26, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %55 = icmp ne %struct.TYPE_22__* %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %34
  %57 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_21__* @svn_error_createf(i32 %57, i32* null, i32 %58, i32 %61, i32 %64)
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %11, align 8
  br label %148

66:                                               ; preds = %34
  %67 = load i32*, i32** %22, align 8
  %68 = load i32*, i32** %21, align 8
  %69 = call %struct.TYPE_21__* @svn_ra_get_lock(i32* %67, i32** %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %68)
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %27, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %71 = icmp ne %struct.TYPE_21__* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %80 = call i32 @svn_error_clear(%struct.TYPE_21__* %79)
  store i32* null, i32** %24, align 8
  br label %88

81:                                               ; preds = %72, %66
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %83 = icmp ne %struct.TYPE_21__* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %86 = call %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__* %85)
  store %struct.TYPE_21__* %86, %struct.TYPE_21__** %11, align 8
  br label %148

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %78
  %89 = load i32*, i32** %19, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @svn_depth_empty, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %146

95:                                               ; preds = %88
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @svn_node_dir, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %146

101:                                              ; preds = %95
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @svn_opt_revision_head, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %101
  %108 = load i32*, i32** %22, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32*, i32** %21, align 8
  %111 = call %struct.TYPE_21__* @svn_ra_get_locks2(i32* %108, i32** %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %109, i32* %110)
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %27, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %113 = icmp ne %struct.TYPE_21__* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %107
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SVN_ERR_UNSUPPORTED_FEATURE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120, %114
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %128 = call i32 @svn_error_clear(%struct.TYPE_21__* %127)
  br label %136

129:                                              ; preds = %120, %107
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %131 = icmp ne %struct.TYPE_21__* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %134 = call %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__* %133)
  store %struct.TYPE_21__* %134, %struct.TYPE_21__** %11, align 8
  br label %148

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %126
  br label %137

137:                                              ; preds = %136, %101
  %138 = load i32*, i32** %22, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %140 = load i32*, i32** %19, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32*, i32** %20, align 8
  %143 = load i32*, i32** %21, align 8
  %144 = call i32 @push_dir_info(i32* %138, %struct.TYPE_23__* %139, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %140, i32 %141, i32* %142, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %146

146:                                              ; preds = %137, %95, %88
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %147, %struct.TYPE_21__** %11, align 8
  br label %148

148:                                              ; preds = %146, %132, %84, %56
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  ret %struct.TYPE_21__* %149
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_23__**, i8*, i32*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @svn_uri_split(i32*, i8**, i32, i32*) #1

declare dso_local i32 @svn_ra_stat(i32*, i8*, i32, %struct.TYPE_22__**, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_21__* @svn_ra_get_lock(i32*, i32**, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @svn_ra_get_locks2(i32*, i32**, i8*, i32, i32*) #1

declare dso_local i32 @push_dir_info(i32*, %struct.TYPE_23__*, i8*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
