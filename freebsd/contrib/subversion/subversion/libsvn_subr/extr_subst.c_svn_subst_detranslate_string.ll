; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_detranslate_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_detranslate_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@APR_EOL_STR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @svn_subst_detranslate_string(%struct.TYPE_11__** %0, %struct.TYPE_11__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %5, align 8
  br label %86

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @APR_EOL_STR, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @svn_subst_translate_cstring2(i32 %21, i8** %11, i32 %22, i32 %23, i32* null, i32 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %18
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call %struct.TYPE_12__* @svn_cmdline_cstring_from_utf8(i8** %12, i8* %31, i32* %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %10, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @APR_STATUS_IS_EINVAL(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i8*, i8** %11, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i8* @svn_cmdline_cstring_from_utf8_fuzzy(i8* %43, i32* %44)
  store i8* %45, i8** %12, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = call i32 @svn_error_clear(%struct.TYPE_12__* %46)
  br label %54

48:                                               ; preds = %36, %30
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %5, align 8
  br label %86

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %42
  br label %80

55:                                               ; preds = %18
  %56 = load i8*, i8** %11, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call %struct.TYPE_12__* @svn_utf_cstring_from_utf8(i8** %12, i8* %56, i32* %57)
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %10, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @APR_STATUS_IS_EINVAL(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i8* @svn_utf_cstring_from_utf8_fuzzy(i8* %68, i32* %69)
  store i8* %70, i8** %12, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = call i32 @svn_error_clear(%struct.TYPE_12__* %71)
  br label %79

73:                                               ; preds = %61, %55
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %5, align 8
  br label %86

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %67
  br label %80

80:                                               ; preds = %79, %54
  %81 = load i8*, i8** %12, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call %struct.TYPE_11__* @svn_string_create(i8* %81, i32* %82)
  %84 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %5, align 8
  br label %86

86:                                               ; preds = %80, %76, %51, %15
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %87
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_subst_translate_cstring2(i32, i8**, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_cmdline_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EINVAL(i32) #1

declare dso_local i8* @svn_cmdline_cstring_from_utf8_fuzzy(i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_utf_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i8* @svn_utf_cstring_from_utf8_fuzzy(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_string_create(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
