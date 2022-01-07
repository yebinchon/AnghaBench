; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnmucc/extr_svnmucc.c_sanitize_log_sources.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnmucc/extr_svnmucc.c_sanitize_log_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i8* }

@SVN_PROP_REVISION_LOG = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i32*, %struct.TYPE_5__*, i32*, i32*)* @sanitize_log_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sanitize_log_sources(i8** %0, i8* %1, i32* %2, %struct.TYPE_5__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i8**, i8*** %8, align 8
  store i8* null, i8** %15, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %18 = call %struct.TYPE_6__* @svn_hash_gets(i32* %16, i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %14, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %6
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21
  %28 = call i32* (...) @mutually_exclusive_logs_error()
  store i32* %28, i32** %7, align 8
  br label %66

29:                                               ; preds = %24
  %30 = load i32*, i32** %12, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @apr_pstrdup(i32* %30, i8* %33)
  %35 = load i8**, i8*** %8, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %38 = call i32 @svn_hash_sets(i32* %36, i32 %37, i32* null)
  br label %64

39:                                               ; preds = %6
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32* (...) @mutually_exclusive_logs_error()
  store i32* %46, i32** %7, align 8
  br label %66

47:                                               ; preds = %42
  %48 = load i32*, i32** %12, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @apr_pstrdup(i32* %48, i8* %51)
  %53 = load i8**, i8*** %8, align 8
  store i8* %52, i8** %53, align 8
  br label %63

54:                                               ; preds = %39
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32*, i32** %12, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i8* @apr_pstrdup(i32* %58, i8* %59)
  %61 = load i8**, i8*** %8, align 8
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %7, align 8
  br label %66

66:                                               ; preds = %64, %45, %27
  %67 = load i32*, i32** %7, align 8
  ret i32* %67
}

declare dso_local %struct.TYPE_6__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @mutually_exclusive_logs_error(...) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
