; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"w(c)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Requested username does not match\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"w()\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"ANONYMOUS\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CRAM-MD5\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Must authenticate with listed mechanism\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i8*, %struct.TYPE_7__*, i32, i32, i32*)* @auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @auth(i32* %0, i32* %1, i8* %2, i8* %3, %struct.TYPE_7__* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %15, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %74

35:                                               ; preds = %28
  %36 = load i8*, i8** %12, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %45, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = call i32* (i32*, i32*, i8*, i8*, ...) @svn_ra_svn__write_tuple(i32* %54, i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32* %56, i32** %9, align 8
  br label %141

57:                                               ; preds = %44, %39
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i8* %62, i8** %66, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i32* (i32*, i32*, i8*, i8*, ...) @svn_ra_svn__write_tuple(i32* %67, i32* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i32 @SVN_ERR(i32* %69)
  %71 = load i32, i32* @TRUE, align 4
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %9, align 8
  br label %141

74:                                               ; preds = %35, %28, %8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp uge i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = load i8*, i8** %12, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = call i32* (i32*, i32*, i8*, i8*, ...) @svn_ra_svn__write_tuple(i32* %90, i32* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i32 @SVN_ERR(i32* %92)
  %94 = load i32, i32* @TRUE, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %96, i32** %9, align 8
  br label %141

97:                                               ; preds = %86, %82, %74
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = icmp uge i32 %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %97
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %137

112:                                              ; preds = %105
  %113 = load i8*, i8** %12, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %112
  %117 = load i32*, i32** %11, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i32* @svn_ra_svn_cram_server(i32* %117, i32* %118, i64 %123, i8** %18, i32* %124)
  %126 = call i32 @SVN_ERR(i32* %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = call i8* @apr_pstrdup(i32 %129, i8* %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i8* %131, i8** %135, align 8
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %136, i32** %9, align 8
  br label %141

137:                                              ; preds = %112, %105, %97
  %138 = load i32*, i32** %11, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = call i32* (i32*, i32*, i8*, i8*, ...) @svn_ra_svn__write_tuple(i32* %138, i32* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  store i32* %140, i32** %9, align 8
  br label %141

141:                                              ; preds = %137, %116, %89, %57, %53
  %142 = load i32*, i32** %9, align 8
  ret i32* %142
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_ra_svn__write_tuple(i32*, i32*, i8*, i8*, ...) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_svn_cram_server(i32*, i32*, i64, i8**, i32*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
