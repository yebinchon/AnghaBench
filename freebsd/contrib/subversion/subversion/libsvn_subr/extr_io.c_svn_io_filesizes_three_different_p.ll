; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_filesizes_three_different_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_filesizes_three_different_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@APR_FINFO_MIN = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_filesizes_three_different_p(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca %struct.TYPE_3__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i32 @cstring_from_utf8(i8** %21, i8* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @cstring_from_utf8(i8** %22, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i8*, i8** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @cstring_from_utf8(i8** %23, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i8*, i8** %21, align 8
  %37 = load i32, i32* @APR_FINFO_MIN, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @apr_stat(%struct.TYPE_3__* %15, i8* %36, i32 %37, i32* %38)
  store i32 %39, i32* %18, align 4
  %40 = load i8*, i8** %22, align 8
  %41 = load i32, i32* @APR_FINFO_MIN, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @apr_stat(%struct.TYPE_3__* %16, i8* %40, i32 %41, i32* %42)
  store i32 %43, i32* %19, align 4
  %44 = load i8*, i8** %23, align 8
  %45 = load i32, i32* @APR_FINFO_MIN, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @apr_stat(%struct.TYPE_3__* %17, i8* %44, i32 %45, i32* %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %7
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %55, %57
  br label %59

59:                                               ; preds = %53, %50, %7
  %60 = phi i1 [ false, %50 ], [ false, %7 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %70, %72
  br label %74

74:                                               ; preds = %68, %65, %59
  %75 = phi i1 [ false, %65 ], [ false, %59 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %20, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %85, %87
  br label %89

89:                                               ; preds = %83, %80, %74
  %90 = phi i1 [ false, %80 ], [ false, %74 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %93
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @apr_stat(%struct.TYPE_3__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
