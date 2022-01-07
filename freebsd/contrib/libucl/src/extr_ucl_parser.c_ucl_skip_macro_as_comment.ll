; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_skip_macro_as_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_skip_macro_as_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.ucl_chunk = type { i8*, i8* }

@UCL_CHARACTER_WHITESPACE = common dso_local global i32 0, align 4
@UCL_CHARACTER_WHITESPACE_UNSAFE = common dso_local global i32 0, align 4
@UCL_PARSER_SAVE_COMMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*)* @ucl_skip_macro_as_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_skip_macro_as_comment(%struct.ucl_parser* %0, %struct.ucl_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucl_parser*, align 8
  %5 = alloca %struct.ucl_chunk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %4, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %11 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %14 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %151, %66, %37, %2
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %19 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ult i8* %17, %20
  br i1 %21, label %22, label %152

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %151 [
    i32 0, label %24
    i32 1, label %43
    i32 2, label %74
    i32 5, label %92
    i32 3, label %110
    i32 4, label %128
    i32 6, label %133
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = load i32, i32* @UCL_CHARACTER_WHITESPACE, align 4
  %28 = call i32 @ucl_test_character(i8 zeroext %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  br label %39

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %35 = call i32 @ucl_test_character(i8 zeroext %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 6, i32* %8, align 4
  br label %16

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %30
  %40 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %40, i8* %41)
  br label %151

43:                                               ; preds = %22
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 123
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 5, i32* %8, align 4
  br label %70

49:                                               ; preds = %43
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 40
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 2, i32* %8, align 4
  br label %69

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 34
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 3, i32* %8, align 4
  br label %68

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 6, i32* %8, align 4
  br label %16

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %48
  %71 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %71, i8* %72)
  br label %151

74:                                               ; preds = %22
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 92
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %88

81:                                               ; preds = %74
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 41
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %81
  br label %88

88:                                               ; preds = %87, %79
  %89 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %89, i8* %90)
  br label %151

92:                                               ; preds = %22
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 92
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %106

99:                                               ; preds = %92
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 125
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 6, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %99
  br label %106

106:                                              ; preds = %105, %97
  %107 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %107, i8* %108)
  br label %151

110:                                              ; preds = %22
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 92
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %124

117:                                              ; preds = %110
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 34
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 6, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %117
  br label %124

124:                                              ; preds = %123, %115
  %125 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %125, i8* %126)
  br label %151

128:                                              ; preds = %22
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %8, align 4
  %130 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %130, i8* %131)
  br label %151

133:                                              ; preds = %22
  %134 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %135 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @UCL_PARSER_SAVE_COMMENTS, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %133
  %141 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = call i32 @ucl_save_comment(%struct.ucl_parser* %141, i8* %142, i32 %148)
  br label %150

150:                                              ; preds = %140, %133
  store i32 1, i32* %3, align 4
  br label %153

151:                                              ; preds = %22, %128, %124, %106, %88, %70, %39
  br label %16

152:                                              ; preds = %16
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %150
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @ucl_test_character(i8 zeroext, i32) #1

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local i32 @ucl_save_comment(%struct.ucl_parser*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
