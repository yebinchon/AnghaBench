; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translate_cstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translate_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i8*, i32, i32*, i32, i32*)* @translate_cstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translate_cstring(i8** %0, i32* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i8** %0, i8*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %20, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32*, i32** %15, align 8
  %30 = call i64 @apr_hash_count(i32* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28, %25
  %33 = load i32*, i32** %17, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %20, align 4
  %36 = call i8* @apr_pstrmemdup(i32* %33, i8* %34, i32 %35)
  %37 = load i8**, i8*** %10, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %9, align 8
  br label %71

39:                                               ; preds = %28, %8
  %40 = load i32*, i32** %17, align 8
  %41 = call %struct.TYPE_4__* @svn_stringbuf_create_empty(i32* %40)
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %18, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_4__* %42, i32* %43)
  store i32* %44, i32** %19, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = load i32*, i32** %19, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %17, align 8
  %58 = call i32* @stream_translated(i32* %51, i8* %52, i32* %53, i32 %54, i32* %55, i32 %56, i32* %57)
  store i32* %58, i32** %19, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @svn_stream_write(i32* %59, i8* %60, i32* %20)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 @svn_stream_close(i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %10, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %9, align 8
  br label %71

71:                                               ; preds = %50, %32
  %72 = load i32*, i32** %9, align 8
  ret i32* %72
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @stream_translated(i32*, i8*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_write(i32*, i8*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
