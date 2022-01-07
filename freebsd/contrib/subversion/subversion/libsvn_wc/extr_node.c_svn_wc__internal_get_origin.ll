; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__internal_get_origin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__internal_get_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Incomplete copy information on path '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_get_origin(i64* %0, i32* %1, i8** %2, i8** %3, i8** %4, i32* %5, i8** %6, i32* %7, i8* %8, i64 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i8*, align 8
  store i64* %0, i64** %14, align 8
  store i32* %1, i32** %15, align 8
  store i8** %2, i8*** %16, align 8
  store i8** %3, i8*** %17, align 8
  store i8** %4, i8*** %18, align 8
  store i32* %5, i32** %19, align 8
  store i8** %6, i8*** %20, align 8
  store i32* %7, i32** %21, align 8
  store i8* %8, i8** %22, align 8
  store i64 %9, i64* %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %36 = load i8**, i8*** %20, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %12
  %39 = load i8**, i8*** %20, align 8
  store i8* null, i8** %39, align 8
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i8**, i8*** %16, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i8** %33, i8*** %16, align 8
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32*, i32** %15, align 8
  %46 = load i8**, i8*** %16, align 8
  %47 = load i8**, i8*** %17, align 8
  %48 = load i8**, i8*** %18, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = load i64*, i64** %14, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = load i8*, i8** %22, align 8
  %53 = load i32*, i32** %24, align 8
  %54 = load i32*, i32** %25, align 8
  %55 = call i32 @svn_wc__db_read_info(i64* %30, i32* null, i32* %45, i8** %46, i8** %47, i8** %48, i32* null, i32* null, i32* null, i32* %49, i32* null, i32* null, i8** %26, i8** %27, i8** %28, i32* %29, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %32, i32* null, i32* null, i32* null, i64* %31, i64* %50, i32* %51, i8* %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i8**, i8*** %16, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %13, align 8
  br label %201

62:                                               ; preds = %44
  %63 = load i64, i64* %30, align 8
  %64 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i64, i64* %23, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load i64*, i64** %14, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* @FALSE, align 8
  %74 = load i64*, i64** %14, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %13, align 8
  br label %201

77:                                               ; preds = %66, %62
  %78 = load i8*, i8** %26, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %116

80:                                               ; preds = %77
  %81 = load i8*, i8** %26, align 8
  %82 = load i8**, i8*** %16, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %29, align 4
  %87 = load i32*, i32** %15, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i8**, i8*** %17, align 8
  %90 = icmp ne i8** %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %27, align 8
  %93 = load i8**, i8*** %17, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8**, i8*** %18, align 8
  %96 = icmp ne i8** %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %28, align 8
  %99 = load i8**, i8*** %18, align 8
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8**, i8*** %20, align 8
  %102 = icmp eq i8** %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %13, align 8
  br label %201

105:                                              ; preds = %100
  %106 = load i64, i64* %32, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32*, i32** %24, align 8
  %110 = load i8*, i8** %22, align 8
  %111 = call i8* @apr_pstrdup(i32* %109, i8* %110)
  %112 = load i8**, i8*** %20, align 8
  store i8* %111, i8** %112, align 8
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %13, align 8
  br label %201

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %77
  %117 = load i64, i64* @FALSE, align 8
  store i64 %117, i64* %34, align 8
  %118 = load i64, i64* %30, align 8
  %119 = load i64, i64* @svn_wc__db_status_added, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %116
  %122 = load i64, i64* %30, align 8
  %123 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i64, i64* %31, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125, %116
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* %34, align 8
  br label %130

130:                                              ; preds = %128, %125, %121
  %131 = load i64, i64* %34, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %182

133:                                              ; preds = %130
  %134 = load i8**, i8*** %17, align 8
  %135 = load i8**, i8*** %18, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load i32*, i32** %21, align 8
  %138 = load i8*, i8** %22, align 8
  %139 = load i32*, i32** %24, align 8
  %140 = load i32*, i32** %25, align 8
  %141 = call i32 @svn_wc__db_scan_addition(i64* %30, i8** %35, i32* null, i32* null, i32* null, i8** %26, i8** %134, i8** %135, i32* %136, i32* %137, i8* %138, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load i64, i64* %30, align 8
  %144 = load i64, i64* @svn_wc__db_status_added, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %133
  %147 = load i64*, i64** %14, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, i64* @FALSE, align 8
  %151 = load i64*, i64** %14, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %153, i32** %13, align 8
  br label %201

154:                                              ; preds = %133
  %155 = load i64, i64* %30, align 8
  %156 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i8*, i8** %26, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %163 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %164 = load i8*, i8** %22, align 8
  %165 = load i32*, i32** %25, align 8
  %166 = call i32 @svn_dirent_local_style(i8* %164, i32* %165)
  %167 = call i32* @svn_error_createf(i32 %162, i32* null, i32 %163, i32 %166)
  store i32* %167, i32** %13, align 8
  br label %201

168:                                              ; preds = %158, %154
  %169 = load i8*, i8** %26, align 8
  %170 = load i8*, i8** %35, align 8
  %171 = load i8*, i8** %22, align 8
  %172 = call i32 @svn_dirent_skip_ancestor(i8* %170, i8* %171)
  %173 = load i32*, i32** %24, align 8
  %174 = call i8* @svn_relpath_join(i8* %169, i32 %172, i32* %173)
  %175 = load i8**, i8*** %16, align 8
  store i8* %174, i8** %175, align 8
  %176 = load i8**, i8*** %20, align 8
  %177 = icmp ne i8** %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %168
  %179 = load i8*, i8** %35, align 8
  %180 = load i8**, i8*** %20, align 8
  store i8* %179, i8** %180, align 8
  br label %181

181:                                              ; preds = %178, %168
  br label %199

182:                                              ; preds = %130
  %183 = load i64*, i64** %14, align 8
  %184 = icmp ne i64* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i64, i64* @FALSE, align 8
  %187 = load i64*, i64** %14, align 8
  store i64 %186, i64* %187, align 8
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32*, i32** %15, align 8
  %190 = load i8**, i8*** %16, align 8
  %191 = load i8**, i8*** %17, align 8
  %192 = load i8**, i8*** %18, align 8
  %193 = load i32*, i32** %21, align 8
  %194 = load i8*, i8** %22, align 8
  %195 = load i32*, i32** %24, align 8
  %196 = load i32*, i32** %25, align 8
  %197 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* %189, i8** %190, i8** %191, i8** %192, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %193, i8* %194, i32* %195, i32* %196)
  %198 = call i32 @SVN_ERR(i32 %197)
  br label %199

199:                                              ; preds = %188, %181
  %200 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %200, i32** %13, align 8
  br label %201

201:                                              ; preds = %199, %161, %152, %108, %103, %75, %60
  %202 = load i32*, i32** %13, align 8
  ret i32* %202
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i64*, i64*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_wc__db_scan_addition(i64*, i8**, i32*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
