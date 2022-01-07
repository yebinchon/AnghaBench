; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_xml_escape_cdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_xml_escape_cdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"&#13;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*, i32, i32*)* @xml_escape_cdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_escape_cdata(i32** %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @svn_stringbuf_create_empty(i32* %21)
  %23 = load i32**, i32*** %5, align 8
  store i32* %22, i32** %23, align 8
  br label %24

24:                                               ; preds = %20, %4
  br label %25

25:                                               ; preds = %24, %110
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %11, align 8
  br label %27

27:                                               ; preds = %53, %25
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 38
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 60
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 62
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 13
  br label %51

51:                                               ; preds = %46, %41, %36, %31, %27
  %52 = phi i1 [ false, %41 ], [ false, %36 ], [ false, %31 ], [ false, %27 ], [ %50, %46 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %11, align 8
  br label %27

56:                                               ; preds = %51
  %57 = load i32**, i32*** %5, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @svn_stringbuf_appendbytes(i32* %58, i8* %59, i32 %65)
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %113

71:                                               ; preds = %56
  %72 = load i8*, i8** %11, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 38
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32**, i32*** %5, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @svn_stringbuf_appendcstr(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %110

80:                                               ; preds = %71
  %81 = load i8*, i8** %11, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 60
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32**, i32*** %5, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @svn_stringbuf_appendcstr(i32* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %109

89:                                               ; preds = %80
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 62
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32**, i32*** %5, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @svn_stringbuf_appendcstr(i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %108

98:                                               ; preds = %89
  %99 = load i8*, i8** %11, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 13
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32**, i32*** %5, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @svn_stringbuf_appendcstr(i32* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %94
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %76
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %10, align 8
  br label %25

113:                                              ; preds = %70
  ret void
}

declare dso_local i32* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(i32*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_appendcstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
