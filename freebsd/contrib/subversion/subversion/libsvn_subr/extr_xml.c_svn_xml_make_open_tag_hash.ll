; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_svn_xml_make_open_tag_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_svn_xml_make_open_tag_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"=\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@svn_xml_self_closing = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@svn_xml_protect_pcdata = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_xml_make_open_tag_hash(i32** %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = add nsw i64 %16, 4
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @apr_hash_count(i32* %18)
  %20 = mul nsw i32 %19, 30
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %12, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load i64, i64* %12, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @svn_stringbuf_create_ensure(i64 %27, i32* %28)
  %30 = load i32**, i32*** %6, align 8
  store i32* %29, i32** %30, align 8
  br label %31

31:                                               ; preds = %26, %5
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @svn_stringbuf_appendcstr(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @svn_stringbuf_appendcstr(i32* %36, i8* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @apr_hash_first(i32* %39, i32* %40)
  store i32* %41, i32** %11, align 8
  br label %42

42:                                               ; preds = %69, %31
  %43 = load i32*, i32** %11, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %72

45:                                               ; preds = %42
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @apr_hash_this(i32* %46, i8** %13, i32* null, i8** %14)
  %48 = load i8*, i8** %14, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @svn_stringbuf_appendcstr(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32**, i32*** %6, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @svn_stringbuf_appendcstr(i32* %56, i8* %57)
  %59 = load i32**, i32*** %6, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @svn_stringbuf_appendcstr(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32**, i32*** %6, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @svn_xml_escape_attr_cstring(i32** %62, i8* %63, i32* %64)
  %66 = load i32**, i32*** %6, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @svn_stringbuf_appendcstr(i32* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %45
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @apr_hash_next(i32* %70)
  store i32* %71, i32** %11, align 8
  br label %42

72:                                               ; preds = %42
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @svn_xml_self_closing, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32**, i32*** %6, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @svn_stringbuf_appendcstr(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32**, i32*** %6, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @svn_stringbuf_appendcstr(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @svn_xml_protect_pcdata, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32**, i32*** %6, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @svn_stringbuf_appendcstr(i32* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %80
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_stringbuf_create_ensure(i64, i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(i32*, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_xml_escape_attr_cstring(i32**, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
