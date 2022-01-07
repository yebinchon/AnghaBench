; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_merge_alias_ace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_merge_alias_ace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32 }

@SVN_ERR_AUTHZ_INVALID_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Alias '%s' was never defined\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i8*, i32*)* @merge_alias_ace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_alias_ace(i8* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %12, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %13, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %14, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = call i8* @svn_hash_gets(i32 %29, i8* %30)
  store i8* %31, i8** %16, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* @SVN_ERR_AUTHZ_INVALID_CONFIG, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %14, align 8
  %38 = call i32* @svn_error_createf(i32 %35, i32* null, i32 %36, i8* %37)
  store i32* %38, i32** %6, align 8
  br label %104

39:                                               ; preds = %5
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %16, align 8
  store i8* %45, i8** %15, align 8
  br label %60

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %16, align 8
  %53 = load i32, i32* @SVN_VA_NULL, align 4
  %54 = call i8* @apr_pstrcat(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53)
  store i8* %54, i8** %15, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = call i8* @intern_string(%struct.TYPE_7__* %57, i8* %58, i32 -1)
  store i8* %59, i8** %15, align 8
  br label %60

60:                                               ; preds = %46, %44
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = call i8* @svn_hash_gets(i32 %63, i8* %64)
  %66 = bitcast i8* %65 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %17, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %60
  %70 = load i8*, i8** %16, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %78 = call i32 @svn_hash_sets(i32 %75, i8* %76, %struct.TYPE_6__* %77)
  br label %102

79:                                               ; preds = %60
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = icmp eq i32 %85, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @SVN_ERR_ASSERT(i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %79, %69
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %103, i32** %6, align 8
  br label %104

104:                                              ; preds = %102, %34
  %105 = load i32*, i32** %6, align 8
  ret i32* %105
}

declare dso_local i8* @svn_hash_gets(i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_pstrcat(i32, i8*, i8*, i32) #1

declare dso_local i8* @intern_string(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
