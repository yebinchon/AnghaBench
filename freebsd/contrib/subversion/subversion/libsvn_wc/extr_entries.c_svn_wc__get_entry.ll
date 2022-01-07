; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_svn_wc__get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_svn_wc__get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@SVN_ERR_WC_MISSING = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Admin area of '%s' is missing\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"'%s' is not of the right kind\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @svn_wc__get_entry(%struct.TYPE_13__** %0, i32* %1, i8* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i32 @get_entry_access_info(i8** %16, i8** %17, i32* %20, i8* %21, i64 %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = load i8*, i8** %17, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call %struct.TYPE_14__* @read_entry_pair(%struct.TYPE_13__** %18, %struct.TYPE_13__** %27, i32* %28, i8* %29, i8* %30, i32* %31, i32* %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %19, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %102

36:                                               ; preds = %7
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SVN_ERR_WC_MISSING, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @svn_node_unknown, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %17, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %42, %36
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %53 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %8, align 8
  br label %149

54:                                               ; preds = %46
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %56 = call i32 @svn_error_clear(%struct.TYPE_14__* %55)
  %57 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @svn_node_file, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call %struct.TYPE_14__* @svn_wc__get_entry(%struct.TYPE_13__** %57, i32* %58, i8* %59, i64 %60, i64 %61, i32* %62, i32* %63)
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %19, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  %67 = icmp eq %struct.TYPE_14__* %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %8, align 8
  br label %149

70:                                               ; preds = %54
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SVN_ERR_NODE_UNEXPECTED_KIND, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %78 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %77)
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %8, align 8
  br label %149

79:                                               ; preds = %70
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %81 = call i32 @svn_error_clear(%struct.TYPE_14__* %80)
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = icmp ne %struct.TYPE_13__* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @svn_node_dir, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %85, %79
  %93 = phi i1 [ false, %79 ], [ %91, %85 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @SVN_ERR_ASSERT(i32 %94)
  %96 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %97 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %98 = load i8*, i8** %11, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @svn_dirent_local_style(i8* %98, i32* %99)
  %101 = call %struct.TYPE_14__* @svn_error_createf(i64 %96, i32* null, i32 %97, i32 %100)
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %8, align 8
  br label %149

102:                                              ; preds = %7
  %103 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = icmp eq %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %8, align 8
  br label %149

111:                                              ; preds = %106
  %112 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %113 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i8*, i8** %11, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = call i32 @svn_dirent_local_style(i8* %114, i32* %115)
  %117 = call %struct.TYPE_14__* @svn_error_createf(i64 %112, i32* null, i32 %113, i32 %116)
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** %8, align 8
  br label %149

118:                                              ; preds = %102
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* @svn_node_file, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @svn_node_file, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %140, label %129

129:                                              ; preds = %122, %118
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* @svn_node_dir, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @svn_node_dir, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %133, %122
  %141 = load i64, i64* @SVN_ERR_NODE_UNEXPECTED_KIND, align 8
  %142 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i8*, i8** %11, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = call i32 @svn_dirent_local_style(i8* %143, i32* %144)
  %146 = call %struct.TYPE_14__* @svn_error_createf(i64 %141, i32* null, i32 %142, i32 %145)
  store %struct.TYPE_14__* %146, %struct.TYPE_14__** %8, align 8
  br label %149

147:                                              ; preds = %133, %129
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %148, %struct.TYPE_14__** %8, align 8
  br label %149

149:                                              ; preds = %147, %140, %111, %109, %92, %76, %68, %51
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  ret %struct.TYPE_14__* %150
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_entry_access_info(i8**, i8**, i32*, i8*, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @read_entry_pair(%struct.TYPE_13__**, %struct.TYPE_13__**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_14__* @svn_error_createf(i64, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
