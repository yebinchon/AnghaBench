; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_read_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_read_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unexpected end of entry\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*)* @read_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_str(i8** %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %19 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = call i32* @svn_error_create(i32 %18, i32* null, i32 %19)
  store i32* %20, i32** %5, align 8
  br label %142

21:                                               ; preds = %4
  %22 = load i8**, i8*** %7, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8**, i8*** %6, align 8
  store i8* null, i8** %28, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %5, align 8
  br label %142

33:                                               ; preds = %21
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  br label %36

36:                                               ; preds = %97, %33
  %37 = load i8**, i8*** %7, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i1 [ false, %36 ], [ %46, %41 ]
  br i1 %48, label %49, label %98

49:                                               ; preds = %47
  %50 = load i8**, i8*** %7, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 92
  br i1 %54, label %55, label %93

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %11, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %9, align 8
  %68 = call %struct.TYPE_5__* @svn_stringbuf_ncreate(i8* %59, i32 %66, i32* %67)
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %10, align 8
  br label %80

69:                                               ; preds = %55
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8**, i8*** %7, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_5__* %70, i8* %71, i32 %78)
  br label %80

80:                                               ; preds = %69, %58
  %81 = load i8**, i8*** %7, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %81, align 8
  %84 = load i8**, i8*** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @read_escaped(i8* %12, i8** %84, i8* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %89 = load i8, i8* %12, align 1
  %90 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_5__* %88, i8 signext %89)
  %91 = load i8**, i8*** %7, align 8
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %11, align 8
  br label %97

93:                                               ; preds = %49
  %94 = load i8**, i8*** %7, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %94, align 8
  br label %97

97:                                               ; preds = %93, %80
  br label %36

98:                                               ; preds = %47
  %99 = load i8**, i8*** %7, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp eq i8* %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %105 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %106 = call i32* @svn_error_create(i32 %104, i32* null, i32 %105)
  store i32* %106, i32** %5, align 8
  br label %142

107:                                              ; preds = %98
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %109 = icmp ne %struct.TYPE_5__* %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i8**, i8*** %7, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_5__* %111, i8* %112, i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** %6, align 8
  store i8* %123, i8** %124, align 8
  br label %137

125:                                              ; preds = %107
  %126 = load i32*, i32** %9, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = load i8**, i8*** %7, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i8* @apr_pstrndup(i32* %126, i8* %127, i32 %134)
  %136 = load i8**, i8*** %6, align 8
  store i8* %135, i8** %136, align 8
  br label %137

137:                                              ; preds = %125, %110
  %138 = load i8**, i8*** %7, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %138, align 8
  %141 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %141, i32** %5, align 8
  br label %142

142:                                              ; preds = %137, %103, %27, %17
  %143 = load i32*, i32** %5, align 8
  ret i32* %143
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_5__* @svn_stringbuf_ncreate(i8*, i32, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_escaped(i8*, i8**, i8*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i8* @apr_pstrndup(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
