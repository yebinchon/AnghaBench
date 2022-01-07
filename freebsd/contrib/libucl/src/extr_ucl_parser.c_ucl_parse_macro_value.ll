; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_macro_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_macro_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.ucl_chunk = type { i8*, i8* }
%struct.ucl_macro = type { i32 }

@UCL_CHARACTER_WHITESPACE_UNSAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*, %struct.ucl_macro*, i8**, i64*)* @ucl_parse_macro_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_parse_macro_value(%struct.ucl_parser* %0, %struct.ucl_chunk* %1, %struct.ucl_macro* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucl_parser*, align 8
  %8 = alloca %struct.ucl_chunk*, align 8
  %9 = alloca %struct.ucl_macro*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %7, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %8, align 8
  store %struct.ucl_macro* %2, %struct.ucl_macro** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %18 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  switch i32 %22, label %101 [
    i32 34, label %23
    i32 123, label %49
  ]

23:                                               ; preds = %5
  %24 = load i8*, i8** %12, align 8
  store i8* %24, i8** %13, align 8
  %25 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %25, i8* %26)
  %28 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %29 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %30 = call i32 @ucl_lex_json_string(%struct.ucl_parser* %28, %struct.ucl_chunk* %29, i32* %14, i32* %15, i32* %16)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %152

33:                                               ; preds = %23
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8**, i8*** %10, align 8
  store i8* %35, i8** %36, align 8
  %37 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %38 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sub nsw i64 %43, 2
  %45 = load i64*, i64** %11, align 8
  store i64 %44, i64* %45, align 8
  %46 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %47 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  br label %128

49:                                               ; preds = %5
  %50 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %50, i8* %51)
  br label %53

53:                                               ; preds = %70, %49
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %56 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ult i8* %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i8*, i8** %12, align 8
  %61 = load i8, i8* %60, align 1
  %62 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %63 = call i64 @ucl_test_character(i8 zeroext %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %66, i8* %67)
  br label %70

69:                                               ; preds = %59
  br label %71

70:                                               ; preds = %65
  br label %53

71:                                               ; preds = %69, %53
  %72 = load i8*, i8** %12, align 8
  store i8* %72, i8** %13, align 8
  br label %73

73:                                               ; preds = %85, %71
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %76 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ult i8* %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i8*, i8** %12, align 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 125
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %89

85:                                               ; preds = %79
  %86 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %86, i8* %87)
  br label %73

89:                                               ; preds = %84, %73
  %90 = load i8*, i8** %13, align 8
  %91 = load i8**, i8*** %10, align 8
  store i8* %90, i8** %91, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = load i64*, i64** %11, align 8
  store i64 %96, i64* %97, align 8
  %98 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %98, i8* %99)
  br label %128

101:                                              ; preds = %5
  %102 = load i8*, i8** %12, align 8
  store i8* %102, i8** %13, align 8
  br label %103

103:                                              ; preds = %115, %101
  %104 = load i8*, i8** %12, align 8
  %105 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %106 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ult i8* %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @ucl_lex_is_atom_end(i8 zeroext %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %119

115:                                              ; preds = %109
  %116 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %116, i8* %117)
  br label %103

119:                                              ; preds = %114, %103
  %120 = load i8*, i8** %13, align 8
  %121 = load i8**, i8*** %10, align 8
  store i8* %120, i8** %121, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = load i64*, i64** %11, align 8
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %119, %89, %33
  br label %129

129:                                              ; preds = %147, %128
  %130 = load i8*, i8** %12, align 8
  %131 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %132 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ult i8* %130, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %129
  %136 = load i8*, i8** %12, align 8
  %137 = load i8, i8* %136, align 1
  %138 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %139 = call i64 @ucl_test_character(i8 zeroext %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load i8*, i8** %12, align 8
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 59
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %151

147:                                              ; preds = %141, %135
  %148 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %148, i8* %149)
  br label %129

151:                                              ; preds = %146, %129
  store i32 1, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %32
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local i32 @ucl_lex_json_string(%struct.ucl_parser*, %struct.ucl_chunk*, i32*, i32*, i32*) #1

declare dso_local i64 @ucl_test_character(i8 zeroext, i32) #1

declare dso_local i32 @ucl_lex_is_atom_end(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
