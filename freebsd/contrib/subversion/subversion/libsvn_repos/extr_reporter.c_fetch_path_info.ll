; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_fetch_path_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_fetch_path_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i8**, %struct.TYPE_8__**, i8*, i32*)* @fetch_path_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_path_info(%struct.TYPE_7__* %0, i8** %1, %struct.TYPE_8__** %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @relevant(%struct.TYPE_8__* %19, i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i8**, i8*** %7, align 8
  store i8* null, i8** %25, align 8
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %26, align 8
  br label %81

27:                                               ; preds = %5
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %32, i64 %43
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 47)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load i32*, i32** %10, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @apr_pstrmemdup(i32* %50, i8* %51, i32 %57)
  %59 = load i8**, i8*** %7, align 8
  store i8* %58, i8** %59, align 8
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %60, align 8
  br label %80

61:                                               ; preds = %41
  %62 = load i8*, i8** %12, align 8
  %63 = load i8**, i8*** %7, align 8
  store i8* %62, i8** %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32* @svn_pool_create(i32 %70)
  store i32* %71, i32** %14, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @read_path_info(%struct.TYPE_8__** %73, i32 %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %61, %49
  br label %81

81:                                               ; preds = %80, %24
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %82
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @relevant(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_path_info(%struct.TYPE_8__**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
