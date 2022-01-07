; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_translate_string2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_translate_string2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_subst_translate_string2(%struct.TYPE_5__** %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %23, align 8
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %9, align 8
  br label %80

25:                                               ; preds = %8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i8*, i8** %14, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %18, align 8
  br label %55

36:                                               ; preds = %28, %25
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = call i32 @svn_utf_cstring_to_utf8_ex2(i8** %18, i8* %42, i8* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %54

47:                                               ; preds = %36
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 @svn_utf_cstring_to_utf8(i8** %18, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %54

54:                                               ; preds = %47, %39
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = call i64 @strcmp(i8* %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %55
  %68 = load i32*, i32** %12, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = call i32 @translate_cstring(i8** %19, i32* %68, i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32* null, i32 %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i8*, i8** %19, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = call %struct.TYPE_5__* @svn_string_create(i8* %75, i32* %76)
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %78, align 8
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %9, align 8
  br label %80

80:                                               ; preds = %67, %22
  %81 = load i32*, i32** %9, align 8
  ret i32* %81
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_utf_cstring_to_utf8_ex2(i8**, i8*, i8*, i32*) #1

declare dso_local i32 @svn_utf_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @translate_cstring(i8**, i32*, i8*, i8*, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_string_create(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
