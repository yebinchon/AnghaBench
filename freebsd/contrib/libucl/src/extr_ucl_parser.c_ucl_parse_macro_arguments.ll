; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_macro_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_macro_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, i32 }
%struct.ucl_chunk = type { i8*, i32, i8*, i32, i32 }
%struct.ucl_parser_saved_state = type { i8*, i32, i32, i32 }

@UCL_ESYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"macro arguments parsing error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ucl_parser*, %struct.ucl_chunk*)* @ucl_parse_macro_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ucl_parse_macro_arguments(%struct.ucl_parser* %0, %struct.ucl_chunk* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ucl_parser*, align 8
  %5 = alloca %struct.ucl_chunk*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ucl_parser*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ucl_parser_saved_state, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %4, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %13, align 8
  %15 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %16 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ucl_parser_saved_state, %struct.ucl_parser_saved_state* %14, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %20 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.ucl_parser_saved_state, %struct.ucl_parser_saved_state* %14, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %24 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.ucl_parser_saved_state, %struct.ucl_parser_saved_state* %14, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %28 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ucl_parser_saved_state, %struct.ucl_parser_saved_state* %14, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %32 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 40
  br i1 %37, label %43, label %38

38:                                               ; preds = %2
  %39 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %40 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %2
  store i32* null, i32** %3, align 8
  br label %166

44:                                               ; preds = %38
  %45 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %45, i8* %46)
  %48 = load i8*, i8** %11, align 8
  store i8* %48, i8** %12, align 8
  br label %49

49:                                               ; preds = %146, %44
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %52 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ult i8* %50, %53
  br i1 %54, label %55, label %147

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %146 [
    i32 0, label %57
    i32 1, label %99
    i32 99, label %123
  ]

57:                                               ; preds = %55
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 40
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %81

65:                                               ; preds = %57
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 41
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %80

73:                                               ; preds = %65
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 34
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %73
  br label %80

80:                                               ; preds = %79, %70
  br label %81

81:                                               ; preds = %80, %62
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 99, i32* %10, align 4
  br label %89

86:                                               ; preds = %81
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %89

89:                                               ; preds = %86, %85
  %90 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %91 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %149

95:                                               ; preds = %89
  %96 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %96, i8* %97)
  br label %146

99:                                               ; preds = %55
  %100 = load i8*, i8** %11, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 34
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 -1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ne i32 %108, 92
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %110, %104, %99
  %112 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %113 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %149

117:                                              ; preds = %111
  %118 = load i64, i64* %13, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %13, align 8
  %120 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %120, i8* %121)
  br label %146

123:                                              ; preds = %55
  %124 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %125 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call %struct.ucl_parser* @ucl_parser_new(i32 %126)
  store %struct.ucl_parser* %127, %struct.ucl_parser** %7, align 8
  %128 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @ucl_parser_add_chunk(%struct.ucl_parser* %128, i8* %129, i64 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %123
  %134 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %135 = load i32, i32* @UCL_ESYNTAX, align 4
  %136 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %137 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %136, i32 0, i32 0
  %138 = call i32 @ucl_set_err(%struct.ucl_parser* %134, i32 %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %137)
  br label %142

139:                                              ; preds = %123
  %140 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %141 = call i32* @ucl_parser_get_object(%struct.ucl_parser* %140)
  store i32* %141, i32** %6, align 8
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %144 = call i32 @ucl_parser_free(%struct.ucl_parser* %143)
  %145 = load i32*, i32** %6, align 8
  store i32* %145, i32** %3, align 8
  br label %166

146:                                              ; preds = %55, %117, %95
  br label %49

147:                                              ; preds = %49
  %148 = load i32*, i32** %6, align 8
  store i32* %148, i32** %3, align 8
  br label %166

149:                                              ; preds = %116, %94
  %150 = getelementptr inbounds %struct.ucl_parser_saved_state, %struct.ucl_parser_saved_state* %14, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %153 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  %154 = getelementptr inbounds %struct.ucl_parser_saved_state, %struct.ucl_parser_saved_state* %14, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %157 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = getelementptr inbounds %struct.ucl_parser_saved_state, %struct.ucl_parser_saved_state* %14, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %161 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = getelementptr inbounds %struct.ucl_parser_saved_state, %struct.ucl_parser_saved_state* %14, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %165 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  store i32* null, i32** %3, align 8
  br label %166

166:                                              ; preds = %149, %147, %142, %43
  %167 = load i32*, i32** %3, align 8
  ret i32* %167
}

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i32 @ucl_parser_add_chunk(%struct.ucl_parser*, i8*, i64) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

declare dso_local i32* @ucl_parser_get_object(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_parser_free(%struct.ucl_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
