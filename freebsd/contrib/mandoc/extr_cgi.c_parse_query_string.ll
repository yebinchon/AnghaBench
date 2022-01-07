; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_parse_query_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_parse_query_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"=;&\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c";&\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"apropos\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"manpath\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.req*, i8*)* @parse_query_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_query_string(%struct.req* %0, i8* %1) #0 {
  %3 = alloca %struct.req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.req* %0, %struct.req** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.req*, %struct.req** %3, align 8
  %10 = getelementptr inbounds %struct.req, %struct.req* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.req*, %struct.req** %3, align 8
  %12 = getelementptr inbounds %struct.req, %struct.req* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load %struct.req*, %struct.req** %3, align 8
  %15 = getelementptr inbounds %struct.req, %struct.req* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.req*, %struct.req** %3, align 8
  %18 = getelementptr inbounds %struct.req, %struct.req* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.req*, %struct.req** %3, align 8
  %21 = getelementptr inbounds %struct.req, %struct.req* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.req*, %struct.req** %3, align 8
  %24 = getelementptr inbounds %struct.req, %struct.req* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %5, align 8
  br label %26

26:                                               ; preds = %141, %2
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %142

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strcspn(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %33, i64* %7, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i8* @mandoc_strndup(i8* %34, i64 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 61
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %129

45:                                               ; preds = %31
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  %48 = call i64 @strcspn(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %48, i64* %8, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i8* @mandoc_strndup(i8* %49, i64 %50)
  store i8* %51, i8** %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @http_decode(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @http_decode(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58, %45
  br label %129

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load %struct.req*, %struct.req** %3, align 8
  %69 = getelementptr inbounds %struct.req, %struct.req* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = call i32 @set_query_attr(i32** %70, i8** %6)
  br label %128

72:                                               ; preds = %63
  %73 = load i8*, i8** %5, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %struct.req*, %struct.req** %3, align 8
  %83 = getelementptr inbounds %struct.req, %struct.req* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  br label %127

85:                                               ; preds = %72
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load %struct.req*, %struct.req** %3, align 8
  %91 = getelementptr inbounds %struct.req, %struct.req* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = call i32 @set_query_attr(i32** %92, i8** %6)
  br label %126

94:                                               ; preds = %85
  %95 = load i8*, i8** %5, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %6, align 8
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %102, %98
  %105 = load %struct.req*, %struct.req** %3, align 8
  %106 = getelementptr inbounds %struct.req, %struct.req* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = call i32 @set_query_attr(i32** %107, i8** %6)
  br label %125

109:                                              ; preds = %94
  %110 = load i8*, i8** %5, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %6, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %6, align 8
  store i8 0, i8* %118, align 1
  br label %119

119:                                              ; preds = %117, %113
  %120 = load %struct.req*, %struct.req** %3, align 8
  %121 = getelementptr inbounds %struct.req, %struct.req* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = call i32 @set_query_attr(i32** %122, i8** %6)
  br label %124

124:                                              ; preds = %119, %109
  br label %125

125:                                              ; preds = %124, %104
  br label %126

126:                                              ; preds = %125, %89
  br label %127

127:                                              ; preds = %126, %76
  br label %128

128:                                              ; preds = %127, %67
  br label %129

129:                                              ; preds = %128, %62, %44
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @free(i8* %130)
  store i8* null, i8** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @free(i8* %132)
  store i8* null, i8** %6, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %4, align 8
  br label %141

141:                                              ; preds = %138, %129
  br label %26

142:                                              ; preds = %26
  ret void
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @mandoc_strndup(i8*, i64) #1

declare dso_local i64 @http_decode(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_query_attr(i32**, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
