; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__internal_ensure_adm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__internal_ensure_adm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Revision %ld doesn't match existing revision %ld in '%s'\00", align 1
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"URL '%s' (uuid: '%s') doesn't match existing URL '%s' (uuid: '%s') in '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_ensure_adm(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = call i8* @svn_uri_skip_ancestor(i8* %28, i8* %29, i32* %30)
  store i8* %31, i8** %22, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @svn_dirent_is_absolute(i8* %32)
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @SVN_ERR_ASSERT(i32 %41)
  %43 = load i8*, i8** %14, align 8
  %44 = icmp ne i8* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @SVN_ERR_ASSERT(i32 %45)
  %47 = load i8*, i8** %22, align 8
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @svn_wc__internal_check_wc(i32* %18, i32* %51, i8* %52, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32, i32* %18, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %8
  %60 = load i32*, i32** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %22, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @init_adm(i32* %60, i8* %61, i8* %62, i8* %63, i8* %64, i32 %65, i32 %66, i32* %67)
  %69 = call i32* @svn_error_trace(i32 %68)
  store i32* %69, i32** %9, align 8
  br label %170

70:                                               ; preds = %8
  %71 = load i32*, i32** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @svn_wc__db_read_info(i64* %23, i32* null, i32* %27, i8** %24, i8** %25, i8** %26, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %19, i8** %20, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %71, i8* %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i64, i64* %23, align 8
  %78 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %168

80:                                               ; preds = %70
  %81 = load i64, i64* %23, align 8
  %82 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %168

84:                                               ; preds = %80
  %85 = load i32, i32* %27, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32, i32* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 4
  %90 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32, i32* %27, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8*, i8** %11, align 8
  %98 = call i32* (i32, i32*, i32, i8*, i8*, i8*, ...) @svn_error_createf(i32 %89, i32* null, i32 %90, i8* %93, i8* %96, i8* %97)
  store i32* %98, i32** %9, align 8
  br label %170

99:                                               ; preds = %84
  %100 = load i8*, i8** %25, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %121, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %23, align 8
  %104 = load i64, i64* @svn_wc__db_status_added, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32*, i32** %10, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = call i32 @svn_wc__db_scan_addition(i32* null, i32* null, i8** %24, i8** %25, i8** %26, i32* null, i32* null, i32* null, i32* null, i32* %107, i8* %108, i32* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  br label %120

113:                                              ; preds = %102
  %114 = load i32*, i32** %10, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* null, i8** %24, i8** %25, i8** %26, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %114, i8* %115, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  br label %120

120:                                              ; preds = %113, %106
  br label %121

121:                                              ; preds = %120, %99
  %122 = load i8*, i8** %26, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = call i64 @strcmp(i8* %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %25, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = call i64 @strcmp(i8* %127, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** %24, align 8
  %133 = load i8*, i8** %22, align 8
  %134 = call i32 @svn_relpath_skip_ancestor(i8* %132, i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %167, label %136

136:                                              ; preds = %131, %126, %121
  %137 = load i32, i32* %21, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load i8*, i8** %20, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %20, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = call i64 @strcmp(i8* %143, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load i8*, i8** %19, align 8
  %149 = load i8*, i8** %22, align 8
  %150 = call i64 @strcmp(i8* %148, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %147, %142, %139, %136
  %153 = load i32, i32* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 4
  %154 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %155 = load i8*, i8** %12, align 8
  %156 = load i8*, i8** %26, align 8
  %157 = load i8*, i8** %25, align 8
  %158 = load i8*, i8** %24, align 8
  %159 = load i32*, i32** %17, align 8
  %160 = call i32 @svn_path_url_add_component2(i8* %157, i8* %158, i32* %159)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load i8*, i8** %14, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = call i32* (i32, i32*, i32, i8*, i8*, i8*, ...) @svn_error_createf(i32 %153, i32* null, i32 %154, i8* %155, i8* %156, i8* %162, i8* %163, i8* %164)
  store i32* %165, i32** %9, align 8
  br label %170

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %166, %131
  br label %168

168:                                              ; preds = %167, %80, %70
  %169 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %169, i32** %9, align 8
  br label %170

170:                                              ; preds = %168, %152, %88, %59
  %171 = load i32*, i32** %9, align 8
  ret i32* %171
}

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__internal_check_wc(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @init_adm(i32*, i8*, i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_wc__db_scan_addition(i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
