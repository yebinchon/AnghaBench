; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_get_info_for_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_get_info_for_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i32*, i64*, i32*, i64*, %struct.TYPE_9__*, i8*, %struct.TYPE_9__*, i32*, i32*)* @get_info_for_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_info_for_copy(i32* %0, i8** %1, i32* %2, i64* %3, i32* %4, i64* %5, %struct.TYPE_9__* %6, i8* %7, %struct.TYPE_9__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  store i32* %0, i32** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64* %3, i64** %15, align 8
  store i32* %4, i32** %16, align 8
  store i64* %5, i64** %17, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %18, align 8
  store i8* %7, i8** %19, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i8**, i8*** %13, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %41 = load i8*, i8** %19, align 8
  %42 = load i32*, i32** %21, align 8
  %43 = load i32*, i32** %22, align 8
  %44 = call i32* @read_info(i64* %25, i32* %36, i32* %24, i8** %23, i32* %26, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %37, i32* %38, i32* %39, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %27, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_9__* %40, i8* %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32* %44)
  %46 = load i64*, i64** %17, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %11
  %49 = load i64, i64* %27, align 8
  %50 = load i64*, i64** %17, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %11
  %52 = load i64, i64* %25, align 8
  %53 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load i8*, i8** %19, align 8
  %57 = load i32*, i32** %22, align 8
  %58 = call i32 @svn_dirent_split(i8** %28, i8** %29, i8* %56, i32* %57)
  %59 = load i32*, i32** %12, align 8
  %60 = load i8**, i8*** %13, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %63 = load i8*, i8** %28, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %65 = load i32*, i32** %22, align 8
  %66 = load i32*, i32** %22, align 8
  %67 = call i32* @get_info_for_copy(i32* %59, i8** %60, i32* %61, i64* null, i32* null, i64* null, %struct.TYPE_9__* %62, i8* %63, %struct.TYPE_9__* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32* %67)
  %69 = load i8**, i8*** %13, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %55
  %73 = load i8**, i8*** %13, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %29, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = call i8* @svn_relpath_join(i8* %74, i8* %75, i32* %76)
  %78 = load i8**, i8*** %13, align 8
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %72, %55
  br label %160

80:                                               ; preds = %51
  %81 = load i64, i64* %25, align 8
  %82 = load i64, i64* @svn_wc__db_status_added, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %86 = load i8*, i8** %19, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = load i32*, i32** %22, align 8
  %89 = call i32* @scan_addition(i64* %25, i8** null, i32* null, i32* null, i8** null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_9__* %85, i8* %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32* %89)
  br label %159

91:                                               ; preds = %80
  %92 = load i64, i64* %25, align 8
  %93 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %145

95:                                               ; preds = %91
  %96 = load i64, i64* %27, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %145

98:                                               ; preds = %95
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = load i32*, i32** %22, align 8
  %102 = load i32*, i32** %22, align 8
  %103 = call i32* @scan_deletion(i8** %30, i32* null, i8** %31, i32* null, %struct.TYPE_9__* %99, i8* %100, i32* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32* %103)
  %105 = load i8*, i8** %31, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %128

107:                                              ; preds = %98
  %108 = load i8*, i8** %31, align 8
  %109 = load i32*, i32** %22, align 8
  %110 = call i8* @svn_relpath_dirname(i8* %108, i32* %109)
  store i8* %110, i8** %33, align 8
  %111 = load i8**, i8*** %13, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %115 = load i8*, i8** %33, align 8
  %116 = load i32*, i32** %22, align 8
  %117 = load i32*, i32** %22, align 8
  %118 = call i32* @scan_addition(i64* null, i8** %32, i32* null, i32* null, i8** %111, i32* %112, i32* %113, i32* null, i32* null, i32* null, %struct.TYPE_9__* %114, i8* %115, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32* %118)
  %120 = load i8**, i8*** %13, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %32, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = call i8* @svn_relpath_skip_ancestor(i8* %122, i8* %123)
  %125 = load i32*, i32** %21, align 8
  %126 = call i8* @svn_relpath_join(i8* %121, i8* %124, i32* %125)
  %127 = load i8**, i8*** %13, align 8
  store i8* %126, i8** %127, align 8
  br label %144

128:                                              ; preds = %98
  %129 = load i8*, i8** %30, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i32*, i32** %14, align 8
  %133 = load i8**, i8*** %13, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %136 = load i8*, i8** %19, align 8
  %137 = load i32*, i32** %21, align 8
  %138 = load i32*, i32** %22, align 8
  %139 = call i32* @svn_wc__db_base_get_info_internal(i32* null, i32* null, i32* %132, i8** %133, i32* %134, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_9__* %135, i8* %136, i32* %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32* %139)
  br label %143

141:                                              ; preds = %128
  %142 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %143

143:                                              ; preds = %141, %131
  br label %144

144:                                              ; preds = %143, %107
  br label %158

145:                                              ; preds = %95, %91
  %146 = load i64, i64* %25, align 8
  %147 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %157

150:                                              ; preds = %145
  %151 = load i8*, i8** %23, align 8
  %152 = load i8**, i8*** %13, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i32, i32* %24, align 4
  %154 = load i32*, i32** %14, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load i32*, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %150, %149
  br label %158

158:                                              ; preds = %157, %144
  br label %159

159:                                              ; preds = %158, %84
  br label %160

160:                                              ; preds = %159, %79
  %161 = load i64*, i64** %15, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i64, i64* %25, align 8
  %165 = load i64*, i64** %15, align 8
  store i64 %164, i64* %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %169 = icmp ne %struct.TYPE_9__* %167, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %166
  %171 = load i8**, i8*** %13, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %190

174:                                              ; preds = %170
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %22, align 8
  %179 = call i32* @svn_wc__db_fetch_repos_info(i8** %34, i8** %35, %struct.TYPE_9__* %175, i32 %177, i32* %178)
  %180 = call i32 @SVN_ERR(i32* %179)
  %181 = load i32*, i32** %12, align 8
  %182 = load i8*, i8** %34, align 8
  %183 = load i8*, i8** %35, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %22, align 8
  %188 = call i32* @create_repos_id(i32* %181, i8* %182, i8* %183, i32 %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32* %188)
  br label %190

190:                                              ; preds = %174, %170, %166
  %191 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %191
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @read_info(i64*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32* @scan_addition(i64*, i8**, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i8*, i32*, i32*) #1

declare dso_local i32* @scan_deletion(i8**, i32*, i8**, i32*, %struct.TYPE_9__*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32* @svn_wc__db_fetch_repos_info(i8**, i8**, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32* @create_repos_id(i32*, i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
