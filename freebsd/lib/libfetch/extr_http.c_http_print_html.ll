; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_print_html.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_print_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @http_print_html to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_print_html(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %137, %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @fgetln(i32* %12, i64* %5)
  store i8* %13, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %140

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %19, %16
  %28 = phi i1 [ false, %16 ], [ %26, %19 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %5, align 8
  br label %16

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %8, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %117, %32
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = icmp ult i8* %35, %38
  br i1 %39, label %40, label %120

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = icmp ult i8* %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %59, %55, %48
  br label %116

63:                                               ; preds = %43, %40
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 62
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %115

77:                                               ; preds = %69, %66, %63
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %114, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 60
  br i1 %84, label %85, label %114

85:                                               ; preds = %80
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ugt i8* %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @fwrite(i8* %90, i32 %96, i32 1, i32* %97)
  br label %99

99:                                               ; preds = %89, %85
  store i32 1, i32* %10, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = icmp ult i8* %101, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  store i32 1, i32* %9, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  store i8* %112, i8** %8, align 8
  br label %113

113:                                              ; preds = %110, %106, %99
  br label %114

114:                                              ; preds = %113, %80, %77
  br label %115

115:                                              ; preds = %114, %74
  br label %116

116:                                              ; preds = %115, %62
  br label %117

117:                                              ; preds = %116
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  br label %34

120:                                              ; preds = %34
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %8, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = icmp ugt i8* %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %123
  %128 = load i8*, i8** %7, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @fwrite(i8* %128, i32 %134, i32 1, i32* %135)
  br label %137

137:                                              ; preds = %127, %123, %120
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @fputc(i8 signext 10, i32* %138)
  br label %11

140:                                              ; preds = %11
  ret void
}

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
