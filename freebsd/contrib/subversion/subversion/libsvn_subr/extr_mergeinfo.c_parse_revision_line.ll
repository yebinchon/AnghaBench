; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_parse_revision_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_parse_revision_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Pathname not terminated by ':'\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Mergeinfo for '%s' maps to an empty revision range\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Could not find end of line in range list line in '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i32, i32*)* @parse_revision_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_revision_line(i8** %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call %struct.TYPE_9__* @apr_array_make(i32* %14, i32 1, i32 8)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %13, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @parse_pathname(i8** %16, i8* %17, i8** %10, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 58
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 4
  %28 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32* @svn_error_create(i32 %27, i32* null, i32 %28)
  store i32* %29, i32** %5, align 8
  br label %111

30:                                               ; preds = %4
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @parse_rangelist(i8** %35, i8* %36, %struct.TYPE_9__* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load i32, i32* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** %10, align 8
  %49 = call i32* @svn_error_createf(i32 %46, i32* null, i32 %47, i8* %48)
  store i32* %49, i32** %5, align 8
  br label %111

50:                                               ; preds = %30
  %51 = load i8**, i8*** %6, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 4
  %63 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32* @svn_error_createf(i32 %62, i32* null, i32 %63, i8* %65)
  store i32* %66, i32** %5, align 8
  br label %111

67:                                               ; preds = %55, %50
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8**, i8*** %6, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8**, i8*** %6, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @svn_rangelist__canonicalize(%struct.TYPE_9__* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @strlen(i8* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.TYPE_9__* @apr_hash_get(i32 %84, i8* %85, i32 %86)
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %12, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %77
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @svn_rangelist_merge2(%struct.TYPE_9__* %91, %struct.TYPE_9__* %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  br label %97

97:                                               ; preds = %90, %77
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @apr_hash_pool_get(i32 %99)
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @apr_pstrmemdup(i32 %100, i8* %101, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @apr_hash_pool_get(i32 %106)
  %108 = call i32 @svn_rangelist_dup(%struct.TYPE_9__* %105, i32 %107)
  %109 = call i32 @apr_hash_set(i32 %98, i32 %103, i32 %104, i32 %108)
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %110, i32** %5, align 8
  br label %111

111:                                              ; preds = %97, %61, %45, %26
  %112 = load i32*, i32** %5, align 8
  ret i32* %112
}

declare dso_local %struct.TYPE_9__* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_pathname(i8**, i8*, i8**, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parse_rangelist(i8**, i8*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @svn_rangelist__canonicalize(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_9__* @apr_hash_get(i32, i8*, i32) #1

declare dso_local i32 @svn_rangelist_merge2(%struct.TYPE_9__*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @apr_hash_set(i32, i32, i32, i32) #1

declare dso_local i32 @apr_pstrmemdup(i32, i8*, i32) #1

declare dso_local i32 @apr_hash_pool_get(i32) #1

declare dso_local i32 @svn_rangelist_dup(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
