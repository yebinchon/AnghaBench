; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_read_repos_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_read_repos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i64*, i32*, i8*, i32*, i32*)* @db_read_repos_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @db_read_repos_info(i32* %0, i8** %1, i64* %2, i32* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = call i32 @read_info(i64* %16, i32* null, i32* %22, i8** %23, i64* %24, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i8**, i8*** %10, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %7
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33, %7
  %38 = load i64*, i64** %11, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %160

40:                                               ; preds = %37
  %41 = load i64*, i64** %11, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INVALID_REPOS_ID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %160

45:                                               ; preds = %40, %33
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @svn_wc__db_status_added, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i8**, i8*** %10, align 8
  %51 = load i64*, i64** %11, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @scan_addition(i32* null, i32* null, i8** %50, i64* %51, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %52, i8* %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  br label %159

58:                                               ; preds = %45
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %128

62:                                               ; preds = %58
  %63 = load i32*, i32** %12, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @scan_deletion(i8** %17, i32* null, i8** %18, i32* null, i32* %63, i8* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i8*, i8** %18, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %62
  store i8* null, i8** %19, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @SVN_ERR_ASSERT(i32 %74)
  %76 = load i8*, i8** %18, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i8* @svn_relpath_dirname(i8* %76, i32* %77)
  store i8* %78, i8** %19, align 8
  %79 = load i8**, i8*** %10, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @scan_addition(i32* null, i32* null, i8** %79, i64* %80, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %81, i8* %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i8**, i8*** %10, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %71
  %90 = load i8**, i8*** %10, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i8* @svn_dirent_skip_ancestor(i8* %92, i8* %93)
  %95 = load i32*, i32** %14, align 8
  %96 = call i8* @svn_relpath_join(i8* %91, i8* %94, i32* %95)
  %97 = load i8**, i8*** %10, align 8
  store i8* %96, i8** %97, align 8
  br label %98

98:                                               ; preds = %89, %71
  br label %127

99:                                               ; preds = %62
  %100 = load i8*, i8** %17, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %99
  %103 = load i32*, i32** %9, align 8
  %104 = load i8**, i8*** %10, align 8
  %105 = load i64*, i64** %11, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i32* null, i32* %103, i8** %104, i64* %105, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %106, i8* %107, i32* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load i8**, i8*** %10, align 8
  %113 = icmp ne i8** %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %102
  %115 = load i8**, i8*** %10, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = call i8* @svn_dirent_skip_ancestor(i8* %117, i8* %118)
  %120 = load i32*, i32** %14, align 8
  %121 = call i8* @svn_relpath_join(i8* %116, i8* %119, i32* %120)
  %122 = load i8**, i8*** %10, align 8
  store i8* %121, i8** %122, align 8
  br label %123

123:                                              ; preds = %114, %102
  br label %126

124:                                              ; preds = %99
  %125 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %126

126:                                              ; preds = %124, %123
  br label %127

127:                                              ; preds = %126, %98
  br label %158

128:                                              ; preds = %58
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %155

132:                                              ; preds = %128
  %133 = load i8*, i8** %13, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 @svn_relpath_split(i8** %20, i8** %21, i8* %133, i32* %134)
  %136 = load i8**, i8*** %10, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = call i32 @scan_addition(i32* null, i32* null, i8** %136, i64* %137, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %138, i8* %139, i32* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load i8**, i8*** %10, align 8
  %145 = icmp ne i8** %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %132
  %147 = load i8**, i8*** %10, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %21, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = call i8* @svn_relpath_join(i8* %148, i8* %149, i32* %150)
  %152 = load i8**, i8*** %10, align 8
  store i8* %151, i8** %152, align 8
  br label %153

153:                                              ; preds = %146, %132
  %154 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %154, i32** %8, align 8
  br label %162

155:                                              ; preds = %128
  %156 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %157

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157, %127
  br label %159

159:                                              ; preds = %158, %49
  br label %160

160:                                              ; preds = %159, %40, %37
  %161 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %161, i32** %8, align 8
  br label %162

162:                                              ; preds = %160, %153
  %163 = load i32*, i32** %8, align 8
  ret i32* %163
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_info(i64*, i32*, i32*, i8**, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @scan_addition(i32*, i32*, i8**, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @scan_deletion(i8**, i32*, i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i8**, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32 @svn_relpath_split(i8**, i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
