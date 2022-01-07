; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_log_find_operative_revs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_log_find_operative_revs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i32*, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s:%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_4__*, i32*)* @log_find_operative_revs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @log_find_operative_revs(i8* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %4, align 8
  br label %151

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @apr_hash_first(i32* %32, i32 %35)
  store i32* %36, i32** %9, align 8
  br label %37

37:                                               ; preds = %146, %28
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %149

40:                                               ; preds = %37
  %41 = load i32*, i32** %9, align 8
  %42 = call i8* @apr_hash_this_key(i32* %41)
  store i8* %42, i8** %12, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i8* @svn_fspath__skip_ancestor(i32 %45, i8* %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %146

51:                                               ; preds = %40
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i8* @svn_relpath_join(i8* %54, i8* %55, i32* %56)
  store i8* %57, i8** %14, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @apr_psprintf(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @svn_mergeinfo_parse(i64* %16, i32 %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i8*, i8** %14, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @mergeinfo_in_catalog(i32* %15, i8** %11, i8* %65, i64 %66, i32 %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %145, label %76

76:                                               ; preds = %51
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %11, align 8
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = call i8* @svn_relpath_skip_ancestor(i8* %84, i8* %85)
  store i8* %86, i8** %18, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load i8*, i8** %18, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i32*, i32** %7, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = call i64 @strlen(i8* %98)
  %100 = load i8*, i8** %18, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = sub nsw i64 %99, %101
  %103 = sub nsw i64 %102, 1
  %104 = call i8* @apr_pstrmemdup(i32* %96, i8* %97, i64 %103)
  store i8* %104, i8** %19, align 8
  br label %107

105:                                              ; preds = %89, %83
  %106 = load i8*, i8** %12, align 8
  store i8* %106, i8** %19, align 8
  br label %107

107:                                              ; preds = %105, %95
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @apr_psprintf(i32* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %109, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @svn_mergeinfo_parse(i64* %16, i32 %111, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call i64 @svn_hash_gets(i32 %119, i8* %120)
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %107
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @svn_mergeinfo_merge2(i64 %125, i64 %126, i32* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  br label %144

133:                                              ; preds = %107
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @apr_pstrdup(i32* %139, i8* %140)
  %142 = load i64, i64* %16, align 8
  %143 = call i32 @svn_hash_sets(i32 %136, i32 %141, i64 %142)
  br label %144

144:                                              ; preds = %133, %124
  br label %145

145:                                              ; preds = %144, %51
  br label %146

146:                                              ; preds = %145, %50
  %147 = load i32*, i32** %9, align 8
  %148 = call i32* @apr_hash_next(i32* %147)
  store i32* %148, i32** %9, align 8
  br label %37

149:                                              ; preds = %37
  %150 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %150, i32** %4, align 8
  br label %151

151:                                              ; preds = %149, %26
  %152 = load i32*, i32** %4, align 8
  ret i32* %152
}

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i32, i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo_parse(i64*, i32, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @mergeinfo_in_catalog(i32*, i8**, i8*, i64, i32, i32*, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @svn_mergeinfo_merge2(i64, i64, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i64) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
