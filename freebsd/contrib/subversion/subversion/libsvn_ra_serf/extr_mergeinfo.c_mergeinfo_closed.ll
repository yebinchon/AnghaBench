; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_mergeinfo.c_mergeinfo_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_mergeinfo.c_mergeinfo_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MERGEINFO_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@MERGEINFO_PATH = common dso_local global i32 0, align 4
@MERGEINFO_INFO = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, %struct.TYPE_4__*, i32*, i32*)* @mergeinfo_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mergeinfo_closed(i32* %0, i8* %1, i32 %2, %struct.TYPE_4__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MERGEINFO_ITEM, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %6
  %23 = load i32*, i32** %11, align 8
  %24 = call i8* @svn_hash_gets(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %14, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i8* @svn_hash_gets(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %58

29:                                               ; preds = %22
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %14, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i8*, i8** %15, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @svn_mergeinfo_parse(i32* %16, i8* %42, i32 %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @apr_pstrdup(i32 %53, i8* %54)
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @svn_hash_sets(i32 %50, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %41, %29, %22
  br label %82

59:                                               ; preds = %6
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MERGEINFO_PATH, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MERGEINFO_INFO, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ true, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @SVN_ERR_ASSERT(i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @MERGEINFO_ITEM, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @MERGEINFO_PATH, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @svn_ra_serf__xml_note(i32* %71, i32 %72, i8* %77, i32 %80)
  br label %82

82:                                               ; preds = %67, %58
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %83
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo_parse(i32*, i8*, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_ra_serf__xml_note(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
