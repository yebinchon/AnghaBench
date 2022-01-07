; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__crawl_file_external.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__crawl_file_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_26__ = type { %struct.TYPE_27__* (i8*, i32*)*, %struct.TYPE_27__* (i8*, i8*, i32, i32, i32, i32, i32*, i32*)*, %struct.TYPE_27__* (i8*, i8*, i32, i32, i32, i32*, i32*)*, %struct.TYPE_27__* (i8*, i8*, i32*)* }
%struct.TYPE_25__ = type { i32* }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_27__* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_27__* @svn_wc__crawl_file_external(%struct.TYPE_24__* %0, i8* %1, %struct.TYPE_26__* %2, i8* %3, i64 %4, i64 %5, i32 %6, i8* %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_27__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_25__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %13, align 8
  store i8* %1, i8** %14, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %24, align 8
  %36 = load i32*, i32** %24, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i32*, i32** %23, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = call %struct.TYPE_27__* @svn_wc__db_base_get_info(i32* null, i64* %26, i32* %28, i8** %30, i8** %29, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_25__** %27, i32* null, i32* null, i64* %31, i32* %36, i8* %37, i32* %38, i32* %39)
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %25, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %42 = icmp ne %struct.TYPE_27__* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %11
  %44 = load i64, i64* %26, align 8
  %45 = load i64, i64* @svn_node_dir, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %31, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %89, label %50

50:                                               ; preds = %47, %43, %11
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %52 = icmp ne %struct.TYPE_27__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %61 = call %struct.TYPE_27__* @svn_error_trace(%struct.TYPE_27__* %60)
  store %struct.TYPE_27__* %61, %struct.TYPE_27__** %12, align 8
  br label %164

62:                                               ; preds = %53, %50
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %64 = call i32 @svn_error_clear(%struct.TYPE_27__* %63)
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_27__* (i8*, i8*, i32, i32, i32, i32*, i32*)*, %struct.TYPE_27__* (i8*, i8*, i32, i32, i32, i32*, i32*)** %66, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* @svn_depth_infinity, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32*, i32** %23, align 8
  %72 = call %struct.TYPE_27__* %67(i8* %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %69, i32 %70, i32* null, i32* %71)
  %73 = call i32 @SVN_ERR(%struct.TYPE_27__* %72)
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_27__* (i8*, i8*, i32*)*, %struct.TYPE_27__* (i8*, i8*, i32*)** %75, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i32*, i32** %23, align 8
  %79 = call %struct.TYPE_27__* %76(i8* %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %78)
  %80 = call i32 @SVN_ERR(%struct.TYPE_27__* %79)
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_27__* (i8*, i32*)*, %struct.TYPE_27__* (i8*, i32*)** %82, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i32*, i32** %23, align 8
  %86 = call %struct.TYPE_27__* %83(i8* %84, i32* %85)
  %87 = call i32 @SVN_ERR(%struct.TYPE_27__* %86)
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_27__* %88, %struct.TYPE_27__** %12, align 8
  br label %164

89:                                               ; preds = %47
  %90 = load i64, i64* %17, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %89
  %93 = load i8*, i8** %14, align 8
  %94 = load i32*, i32** %23, align 8
  %95 = call %struct.TYPE_27__* @svn_io_check_path(i8* %93, i64* %32, i32* %94)
  %96 = call i32 @SVN_ERR(%struct.TYPE_27__* %95)
  %97 = load i64, i64* %32, align 8
  %98 = load i64, i64* @svn_node_none, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %92
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = load i64, i64* %18, align 8
  %104 = load i32*, i32** %23, align 8
  %105 = call %struct.TYPE_27__* @svn_wc_restore(%struct.TYPE_24__* %101, i8* %102, i64 %103, i32* %104)
  store %struct.TYPE_27__* %105, %struct.TYPE_27__** %25, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %107 = icmp ne %struct.TYPE_27__* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %116 = call %struct.TYPE_27__* @svn_error_trace(%struct.TYPE_27__* %115)
  store %struct.TYPE_27__* %116, %struct.TYPE_27__** %12, align 8
  br label %164

117:                                              ; preds = %108
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %119 = call i32 @svn_error_clear(%struct.TYPE_27__* %118)
  br label %120

120:                                              ; preds = %117, %100
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %89
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_27__* (i8*, i8*, i32, i32, i32, i32*, i32*)*, %struct.TYPE_27__* (i8*, i8*, i32, i32, i32, i32*, i32*)** %124, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* %28, align 4
  %128 = load i32, i32* @svn_depth_infinity, align 4
  %129 = load i32, i32* @FALSE, align 4
  %130 = load i32*, i32** %23, align 8
  %131 = call %struct.TYPE_27__* %125(i8* %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32* null, i32* %130)
  %132 = call i32 @SVN_ERR(%struct.TYPE_27__* %131)
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_27__* (i8*, i8*, i32, i32, i32, i32, i32*, i32*)*, %struct.TYPE_27__* (i8*, i8*, i32, i32, i32, i32, i32*, i32*)** %134, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load i8*, i8** %29, align 8
  %138 = load i8*, i8** %30, align 8
  %139 = load i32*, i32** %23, align 8
  %140 = call i32 @svn_path_url_add_component2(i8* %137, i8* %138, i32* %139)
  %141 = load i32, i32* %28, align 4
  %142 = load i32, i32* @svn_depth_infinity, align 4
  %143 = load i32, i32* @FALSE, align 4
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %145 = icmp ne %struct.TYPE_25__* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %122
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  br label %151

150:                                              ; preds = %122
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi i32* [ %149, %146 ], [ null, %150 ]
  %153 = load i32*, i32** %23, align 8
  %154 = call %struct.TYPE_27__* %135(i8* %136, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %141, i32 %142, i32 %143, i32* %152, i32* %153)
  %155 = call i32 @SVN_ERR(%struct.TYPE_27__* %154)
  br label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_27__* (i8*, i32*)*, %struct.TYPE_27__* (i8*, i32*)** %158, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = load i32*, i32** %23, align 8
  %162 = call %struct.TYPE_27__* %159(i8* %160, i32* %161)
  %163 = call %struct.TYPE_27__* @svn_error_trace(%struct.TYPE_27__* %162)
  store %struct.TYPE_27__* %163, %struct.TYPE_27__** %12, align 8
  br label %164

164:                                              ; preds = %156, %114, %62, %59
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  ret %struct.TYPE_27__* %165
}

declare dso_local %struct.TYPE_27__* @svn_wc__db_base_get_info(i32*, i64*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_25__**, i32*, i32*, i64*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_27__* @svn_error_trace(%struct.TYPE_27__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_27__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_27__* @svn_wc_restore(%struct.TYPE_24__*, i8*, i64, i32*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
