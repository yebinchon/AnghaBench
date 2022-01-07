; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_set_file_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_set_file_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, i8*, %struct.TYPE_11__*, i32*)* }

@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"lockdiscovery\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, %struct.TYPE_11__*, i32*)* @set_file_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_file_props(i8* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_11__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %14, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %15, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i8* @svn_ra_serf__svnname_from_wirename(i8* %25, i8* %26, i32* %27)
  store i8* %28, i8** %16, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %73, label %31

31:                                               ; preds = %6
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %31
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %71

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i32*, i32** %13, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @apr_pstrdup(i32* %53, i32 %56)
  store i8* %57, i8** %17, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = call i32 @apr_collapse_spaces(i8* %58, i8* %59)
  %61 = load i8*, i8** %17, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load i64, i64* @TRUE, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %52
  br label %71

71:                                               ; preds = %70, %48, %44, %41, %36, %31
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %7, align 8
  br label %92

73:                                               ; preds = %6
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @ensure_file_opened(%struct.TYPE_13__* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32 (i32, i8*, %struct.TYPE_11__*, i32*)*, i32 (i32, i8*, %struct.TYPE_11__*, i32*)** %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 %82(i32 %85, i8* %86, %struct.TYPE_11__* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %73, %71
  %93 = load i32*, i32** %7, align 8
  ret i32* %93
}

declare dso_local i8* @svn_ra_serf__svnname_from_wirename(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @apr_collapse_spaces(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_file_opened(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
