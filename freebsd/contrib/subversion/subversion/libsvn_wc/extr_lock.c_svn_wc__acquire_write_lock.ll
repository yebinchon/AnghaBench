; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc__acquire_write_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc__acquire_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32* }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't obtain lock on non-directory '%s'.\00", align 1
@svn_node_unknown = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"'%s' is not a working copy\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @svn_wc__acquire_write_lock(i8** %0, %struct.TYPE_15__* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i8** %0, i8*** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call %struct.TYPE_16__* @svn_wc__db_is_switched(i64* %15, i64* %16, i64* %17, i32* %24, i8* %25, i32* %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %18, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %6
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %38 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %37)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %7, align 8
  br label %165

39:                                               ; preds = %30
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %41 = call i32 @svn_error_clear(%struct.TYPE_16__* %40)
  %42 = load i64, i64* @svn_node_none, align 8
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %39, %6
  %46 = load i8**, i8*** %8, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @svn_node_dir, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @SVN_ERR_WC_NOT_DIRECTORY, align 4
  %54 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %10, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @svn_dirent_local_style(i8* %55, i32* %56)
  %58 = call %struct.TYPE_16__* @svn_error_createf(i32 %53, i32* null, i32 %54, i32 %57)
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %7, align 8
  br label %165

59:                                               ; preds = %48, %45
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* @svn_node_dir, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i64, i64* %15, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %62, %59
  %73 = load i64, i64* %11, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %138

75:                                               ; preds = %72
  %76 = load i8**, i8*** %8, align 8
  %77 = icmp ne i8** %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @SVN_ERR_ASSERT(i32 %78)
  %80 = load i8*, i8** %10, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call i8* @svn_dirent_dirname(i8* %80, i32* %81)
  store i8* %82, i8** %19, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* @svn_node_dir, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load i64, i64* %16, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %19, align 8
  store i8* %90, i8** %10, align 8
  br label %91

91:                                               ; preds = %89, %86
  br label %137

92:                                               ; preds = %75
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* @svn_node_none, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* @svn_node_unknown, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %19, align 8
  store i8* %101, i8** %10, align 8
  br label %136

102:                                              ; preds = %96, %92
  %103 = load i32*, i32** %14, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = load i64, i64* @FALSE, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call %struct.TYPE_16__* @svn_wc__db_read_kind(i64* %20, i32* %103, i8* %104, i32 %105, i32 %106, i64 %107, i32* %108)
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %18, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %111 = icmp ne %struct.TYPE_16__* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %102
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %114 = call i64 @SVN_WC__ERR_IS_NOT_CURRENT_WC(%struct.TYPE_16__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %118 = call i32 @svn_error_clear(%struct.TYPE_16__* %117)
  %119 = load i64, i64* @svn_node_unknown, align 8
  store i64 %119, i64* %20, align 8
  br label %123

120:                                              ; preds = %112, %102
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %122 = call i32 @SVN_ERR(%struct.TYPE_16__* %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* @svn_node_dir, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %129 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i8*, i8** %10, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = call i32 @svn_dirent_local_style(i8* %130, i32* %131)
  %133 = call %struct.TYPE_16__* @svn_error_createf(i32 %128, i32* null, i32 %129, i32 %132)
  store %struct.TYPE_16__* %133, %struct.TYPE_16__** %7, align 8
  br label %165

134:                                              ; preds = %123
  %135 = load i8*, i8** %19, align 8
  store i8* %135, i8** %10, align 8
  br label %136

136:                                              ; preds = %134, %100
  br label %137

137:                                              ; preds = %136, %91
  br label %147

138:                                              ; preds = %72
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* @svn_node_dir, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8*, i8** %10, align 8
  %144 = load i32*, i32** %13, align 8
  %145 = call i8* @svn_dirent_dirname(i8* %143, i32* %144)
  store i8* %145, i8** %10, align 8
  br label %146

146:                                              ; preds = %142, %138
  br label %147

147:                                              ; preds = %146, %137
  %148 = load i8**, i8*** %8, align 8
  %149 = icmp ne i8** %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32*, i32** %12, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i8* @apr_pstrdup(i32* %151, i8* %152)
  %154 = load i8**, i8*** %8, align 8
  store i8* %153, i8** %154, align 8
  br label %155

155:                                              ; preds = %150, %147
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i64, i64* @FALSE, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = call %struct.TYPE_16__* @svn_wc__db_wclock_obtain(i32* %158, i8* %159, i32 -1, i64 %160, i32* %161)
  %163 = call i32 @SVN_ERR(%struct.TYPE_16__* %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %164, %struct.TYPE_16__** %7, align 8
  br label %165

165:                                              ; preds = %155, %127, %52, %36
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  ret %struct.TYPE_16__* %166
}

declare dso_local %struct.TYPE_16__* @svn_wc__db_is_switched(i64*, i64*, i64*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_read_kind(i64*, i32*, i8*, i32, i32, i64, i32*) #1

declare dso_local i64 @SVN_WC__ERR_IS_NOT_CURRENT_WC(%struct.TYPE_16__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_16__*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_wclock_obtain(i32*, i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
