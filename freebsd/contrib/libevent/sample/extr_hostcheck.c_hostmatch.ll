; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_hostcheck.c_hostmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_hostcheck.c_hostmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_HOST_MATCH = common dso_local global i32 0, align 4
@CURL_HOST_NOMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xn--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @hostmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostmatch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 42)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @Curl_raw_equal(i8* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @CURL_HOST_MATCH, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @CURL_HOST_NOMATCH, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 46)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i8* @strchr(i8* %34, i8 signext 46)
  %36 = icmp eq i8* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ugt i8* %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @Curl_raw_nequal(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37, %32, %27
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @Curl_raw_equal(i8* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @CURL_HOST_MATCH, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @CURL_HOST_NOMATCH, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %3, align 4
  br label %119

60:                                               ; preds = %46
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 46)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @Curl_raw_equal(i8* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @CURL_HOST_NOMATCH, align 4
  store i32 %71, i32* %3, align 4
  br label %119

72:                                               ; preds = %65
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = icmp slt i64 %77, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i32, i32* @CURL_HOST_NOMATCH, align 4
  store i32 %85, i32* %3, align 4
  br label %119

86:                                               ; preds = %72
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  store i64 %91, i64* %10, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = ptrtoint i8* %92 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  store i64 %97, i64* %11, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @Curl_raw_nequal(i8* %98, i8* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %86
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* %11, align 8
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i64, i64* %11, align 8
  %111 = call i64 @Curl_raw_nequal(i8* %105, i8* %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @CURL_HOST_MATCH, align 4
  br label %117

115:                                              ; preds = %103, %86
  %116 = load i32, i32* @CURL_HOST_NOMATCH, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %84, %70, %58, %25
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @Curl_raw_equal(i8*, i8*) #1

declare dso_local i64 @Curl_raw_nequal(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
