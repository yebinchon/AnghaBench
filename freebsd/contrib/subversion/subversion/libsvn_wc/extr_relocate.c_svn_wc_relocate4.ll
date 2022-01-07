; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_relocate.c_svn_wc_relocate4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_relocate.c_svn_wc_relocate4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_ERR_WC_INVALID_OP_ON_CWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Cannot relocate '%s' as it is not the root of a working copy\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Cannot relocate '%s' as it is not the root of a working copy; try relocating '%s' instead\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_INVALID_RELOCATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot relocate a single file\00", align 1
@SVN_ERR_WC_INVALID_RELOCATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"Invalid source URL prefix: '%s' (does not overlap target's URL '%s')\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Invalid relocation destination: '%s' (not a URL)\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Invalid relocation destination: '%s' (does not point to target)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_relocate4(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3, i32 (i8*, i8*, i8*, i8*, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i8*, i8*, i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 (i8*, i8*, i8*, i8*, i32*)* %4, i32 (i8*, i8*, i8*, i8*, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @svn_wc__is_wcroot(i32* %25, %struct.TYPE_4__* %28, i8* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32, i32* %25, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %7
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32* @svn_wc__db_get_wcroot(i8** %26, i32 %38, i8* %39, i32* %40, i32* %41)
  store i32* %42, i32** %27, align 8
  %43 = load i32*, i32** %27, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load i32*, i32** %27, align 8
  %47 = call i32 @svn_error_clear(i32* %46)
  %48 = load i32, i32* @SVN_ERR_WC_INVALID_OP_ON_CWD, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i8* @svn_dirent_local_style(i8* %50, i32* %51)
  %53 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %48, i32* null, i32 %49, i8* %52)
  store i32* %53, i32** %8, align 8
  br label %158

54:                                               ; preds = %35
  %55 = load i32, i32* @SVN_ERR_WC_INVALID_OP_ON_CWD, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i8*, i8** %10, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i8* @svn_dirent_local_style(i8* %57, i32* %58)
  %60 = load i8*, i8** %26, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = call i8* @svn_dirent_local_style(i8* %60, i32* %61)
  %63 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %55, i32* null, i32 %56, i8* %59, i8* %62)
  store i32* %63, i32** %8, align 8
  br label %158

64:                                               ; preds = %7
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @svn_wc__db_read_info(i32* null, i64* %16, i32* null, i8** %17, i8** %18, i8** %24, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %67, i8* %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @svn_node_dir, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i32, i32* @SVN_ERR_CLIENT_INVALID_RELOCATION, align 4
  %78 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32* @svn_error_create(i32 %77, i32* null, i32 %78)
  store i32* %79, i32** %8, align 8
  br label %158

80:                                               ; preds = %64
  %81 = load i8*, i8** %18, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call i8* @svn_path_url_add_component2(i8* %81, i8* %82, i32* %83)
  store i8* %84, i8** %19, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = call i64 @strlen(i8* %85)
  store i64 %86, i64* %23, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i64 @strlen(i8* %87)
  store i64 %88, i64* %22, align 8
  %89 = load i64, i64* %22, align 8
  %90 = load i64, i64* %23, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %80
  %93 = load i8*, i8** %19, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = call i64 @strncmp(i8* %93, i8* %94, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92, %80
  %100 = load i32, i32* @SVN_ERR_WC_INVALID_RELOCATION, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i8*, i8** %11, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %100, i32* null, i32 %101, i8* %102, i8* %103)
  store i32* %104, i32** %8, align 8
  br label %158

105:                                              ; preds = %92
  %106 = load i64, i64* %23, align 8
  %107 = load i64, i64* %22, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i8*, i8** %12, align 8
  store i8* %110, i8** %21, align 8
  br label %119

111:                                              ; preds = %105
  %112 = load i32*, i32** %15, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %19, align 8
  %115 = load i64, i64* %22, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i32, i32* @SVN_VA_NULL, align 4
  %118 = call i8* @apr_pstrcat(i32* %112, i8* %113, i8* %116, i32 %117)
  store i8* %118, i8** %21, align 8
  br label %119

119:                                              ; preds = %111, %109
  %120 = load i8*, i8** %21, align 8
  %121 = call i32 @svn_path_is_url(i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @SVN_ERR_WC_INVALID_RELOCATION, align 4
  %125 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i8*, i8** %21, align 8
  %127 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %124, i32* null, i32 %125, i8* %126)
  store i32* %127, i32** %8, align 8
  br label %158

128:                                              ; preds = %119
  %129 = load i8*, i8** %21, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = call i8* @url_remove_final_relpath(i8* %129, i8* %130, i32* %131, i32* %132)
  store i8* %133, i8** %20, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* @SVN_ERR_WC_INVALID_RELOCATION, align 4
  %138 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %139 = load i8*, i8** %21, align 8
  %140 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %137, i32* null, i32 %138, i8* %139)
  store i32* %140, i32** %8, align 8
  br label %158

141:                                              ; preds = %128
  %142 = load i32 (i8*, i8*, i8*, i8*, i32*)*, i32 (i8*, i8*, i8*, i8*, i32*)** %13, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = load i8*, i8** %24, align 8
  %145 = load i8*, i8** %21, align 8
  %146 = load i8*, i8** %20, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 %142(i8* %143, i8* %144, i8* %145, i8* %146, i32* %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = load i8*, i8** %20, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @svn_wc__db_global_relocate(i32 %152, i8* %153, i8* %154, i32* %155)
  %157 = call i32* @svn_error_trace(i32 %156)
  store i32* %157, i32** %8, align 8
  br label %158

158:                                              ; preds = %141, %136, %123, %99, %76, %54, %45
  %159 = load i32*, i32** %8, align 8
  ret i32* %159
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__is_wcroot(i32*, %struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32* @svn_wc__db_get_wcroot(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i64*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i8* @url_remove_final_relpath(i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__db_global_relocate(i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
