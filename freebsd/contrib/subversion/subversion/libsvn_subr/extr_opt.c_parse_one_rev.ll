; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_parse_one_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_parse_one_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@svn_opt_revision_date = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i8*, i32*)* @parse_one_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_one_rev(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %13

13:                                               ; preds = %18, %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 114
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 123
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 125)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i8* null, i8** %4, align 8
  br label %120

34:                                               ; preds = %26
  %35 = load i8*, i8** %8, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (...) @apr_time_now()
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @svn_parse_date(i32* %10, i32* %11, i8* %36, i32 %37, i32* %38)
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @svn_error_clear(i32* %43)
  store i8* null, i8** %4, align 8
  br label %120

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i8* null, i8** %4, align 8
  br label %120

49:                                               ; preds = %45
  %50 = load i32, i32* @svn_opt_revision_date, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %4, align 8
  br label %120

59:                                               ; preds = %21
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @svn_ctype_isdigit(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %72, %64
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @svn_ctype_isdigit(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  br label %67

75:                                               ; preds = %67
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %9, align 1
  %78 = load i8*, i8** %8, align 8
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* @svn_opt_revision_number, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @SVN_STR_TO_REV(i8* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i8, i8* %9, align 1
  %88 = load i8*, i8** %8, align 8
  store i8 %87, i8* %88, align 1
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %4, align 8
  br label %120

90:                                               ; preds = %59
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @svn_ctype_isalpha(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %90
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  store i8* %97, i8** %8, align 8
  br label %98

98:                                               ; preds = %103, %95
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @svn_ctype_isalpha(i8 signext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %8, align 8
  br label %98

106:                                              ; preds = %98
  %107 = load i8*, i8** %8, align 8
  %108 = load i8, i8* %107, align 1
  store i8 %108, i8* %9, align 1
  %109 = load i8*, i8** %8, align 8
  store i8 0, i8* %109, align 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @revision_from_word(%struct.TYPE_6__* %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i8* null, i8** %4, align 8
  br label %120

115:                                              ; preds = %106
  %116 = load i8, i8* %9, align 1
  %117 = load i8*, i8** %8, align 8
  store i8 %116, i8* %117, align 1
  %118 = load i8*, i8** %8, align 8
  store i8* %118, i8** %4, align 8
  br label %120

119:                                              ; preds = %90
  store i8* null, i8** %4, align 8
  br label %120

120:                                              ; preds = %119, %115, %114, %75, %49, %48, %42, %33
  %121 = load i8*, i8** %4, align 8
  ret i8* %121
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @svn_parse_date(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i64 @svn_ctype_isdigit(i8 signext) #1

declare dso_local i32 @SVN_STR_TO_REV(i8*) #1

declare dso_local i64 @svn_ctype_isalpha(i8 signext) #1

declare dso_local i64 @revision_from_word(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
