; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_svn_xml_fuzzy_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_svn_xml_fuzzy_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"?\\%03u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_xml_fuzzy_escape(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca [6 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %44, %2
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @svn_ctype_iscntrl(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 13
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37, %32, %27, %22
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  br label %18

47:                                               ; preds = %42, %18
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  store i8* %52, i8** %3, align 8
  br label %117

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = call %struct.TYPE_5__* @svn_stringbuf_create_empty(i32* %54)
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %9, align 8
  br label %56

56:                                               ; preds = %53, %103
  %57 = load i8*, i8** %7, align 8
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %86, %56
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ult i8* %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @svn_ctype_iscntrl(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 13
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 9
  br label %82

82:                                               ; preds = %77, %72, %67, %62
  %83 = phi i1 [ true, %72 ], [ true, %67 ], [ true, %62 ], [ %81, %77 ]
  br label %84

84:                                               ; preds = %82, %58
  %85 = phi i1 [ false, %58 ], [ %83, %82 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  br label %58

89:                                               ; preds = %84
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_5__* %90, i8* %91, i32 %97)
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %113

103:                                              ; preds = %89
  %104 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %105 = load i8*, i8** %8, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @apr_snprintf(i8* %104, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %110 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %108, i8* %109)
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %7, align 8
  br label %56

113:                                              ; preds = %102
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %3, align 8
  br label %117

117:                                              ; preds = %113, %51
  %118 = load i8*, i8** %3, align 8
  ret i8* %118
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @svn_ctype_iscntrl(i8 signext) #1

declare dso_local %struct.TYPE_5__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @apr_snprintf(i8*, i32, i8*, i8 zeroext) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
