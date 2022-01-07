; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_httpread.c_httpread_hdr_option_analyze.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_httpread.c_httpread_hdr_option_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpread = type { i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"CONTENT-LENGTH:\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"httpread: Unacceptable Content-Length %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"TRANSFER_ENCODING:\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"TRANSFER-ENCODING:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CHUNKED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.httpread*, i8*)* @httpread_hdr_option_analyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @httpread_hdr_option_analyze(%struct.httpread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.httpread*, align 8
  %5 = alloca i8*, align 8
  store %struct.httpread* %0, %struct.httpread** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @word_eq(i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %66

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %15, %9
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @isgraph(i8 signext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  br label %10

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 9
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  br label %19

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @isdigit(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %110

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @atol(i8* %41)
  %43 = load %struct.httpread*, %struct.httpread** %4, align 8
  %44 = getelementptr inbounds %struct.httpread, %struct.httpread* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.httpread*, %struct.httpread** %4, align 8
  %46 = getelementptr inbounds %struct.httpread, %struct.httpread* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load %struct.httpread*, %struct.httpread** %4, align 8
  %51 = getelementptr inbounds %struct.httpread, %struct.httpread* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.httpread*, %struct.httpread** %4, align 8
  %54 = getelementptr inbounds %struct.httpread, %struct.httpread* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49, %40
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.httpread*, %struct.httpread** %4, align 8
  %60 = getelementptr inbounds %struct.httpread, %struct.httpread* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  store i32 -1, i32* %3, align 4
  br label %110

63:                                               ; preds = %49
  %64 = load %struct.httpread*, %struct.httpread** %4, align 8
  %65 = getelementptr inbounds %struct.httpread, %struct.httpread* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %110

66:                                               ; preds = %2
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @word_eq(i8* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @word_eq(i8* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %80, %74
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isgraph(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  br label %75

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 9
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ true, %84 ], [ %93, %89 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  br label %84

99:                                               ; preds = %94
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @word_eq(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.httpread*, %struct.httpread** %4, align 8
  %105 = getelementptr inbounds %struct.httpread, %struct.httpread* %104, i32 0, i32 3
  store i32 1, i32* %105, align 4
  %106 = load %struct.httpread*, %struct.httpread** %4, align 8
  %107 = getelementptr inbounds %struct.httpread, %struct.httpread* %106, i32 0, i32 4
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %103, %99
  store i32 0, i32* %3, align 4
  br label %110

109:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %108, %63, %57, %39
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @word_eq(i8*, i8*) #1

declare dso_local i64 @isgraph(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
