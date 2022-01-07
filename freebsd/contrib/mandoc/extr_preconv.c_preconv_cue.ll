; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_preconv.c_preconv_cue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_preconv.c_preconv_cue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c".\\\22 -*-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-*-\00", align 1
@MPARSE_UTF8 = common dso_local global i32 0, align 4
@MPARSE_LATIN1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"coding:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"iso-latin-1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preconv_cue(%struct.buf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.buf*, %struct.buf** %4, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load %struct.buf*, %struct.buf** %4, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i8* @memchr(i8* %21, i8 signext 10, i64 %22)
  store i8* %23, i8** %7, align 8
  %24 = icmp eq i8* null, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %9, align 8
  %35 = icmp ult i64 %34, 10
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @memcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -3
  %43 = call i64 @memcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %36, %29
  %46 = load i32, i32* @MPARSE_UTF8, align 4
  %47 = load i32, i32* @MPARSE_LATIN1, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %3, align 4
  br label %153

49:                                               ; preds = %40
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 7
  store i8* %51, i8** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, 10
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %99, %49
  %55 = load i64, i64* %9, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %149

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %68, %57
  %59 = load i64, i64* %9, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 32, %64
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ %65, %61 ]
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %9, align 8
  br label %58

73:                                               ; preds = %66
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 0, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %149

77:                                               ; preds = %73
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i8* @memchr(i8* %78, i8 signext 59, i64 %79)
  store i8* %80, i8** %8, align 8
  %81 = icmp eq i8* null, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -3
  store i8* %84, i8** %8, align 8
  br label %88

85:                                               ; preds = %77
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  store i64 %93, i64* %10, align 8
  %94 = icmp ult i64 %93, 7
  br i1 %94, label %99, label %95

95:                                               ; preds = %88
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @strncasecmp(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95, %88
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %9, align 8
  %102 = sub i64 %101, %100
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %105, i8** %6, align 8
  br label %54

106:                                              ; preds = %95
  %107 = load i64, i64* %9, align 8
  %108 = sub i64 %107, 7
  store i64 %108, i64* %9, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 7
  store i8* %110, i8** %6, align 8
  br label %111

111:                                              ; preds = %121, %106
  %112 = load i64, i64* %9, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i8*, i8** %6, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 32, %117
  br label %119

119:                                              ; preds = %114, %111
  %120 = phi i1 [ false, %111 ], [ %118, %114 ]
  br i1 %120, label %121, label %126

121:                                              ; preds = %119
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %9, align 8
  br label %111

126:                                              ; preds = %119
  %127 = load i64, i64* %9, align 8
  %128 = icmp eq i64 0, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %153

130:                                              ; preds = %126
  %131 = load i64, i64* %10, align 8
  %132 = icmp ugt i64 %131, 4
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i8*, i8** %6, align 8
  %135 = call i64 @strncasecmp(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @MPARSE_UTF8, align 4
  store i32 %138, i32* %3, align 4
  br label %153

139:                                              ; preds = %133, %130
  %140 = load i64, i64* %10, align 8
  %141 = icmp ugt i64 %140, 10
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i8*, i8** %6, align 8
  %144 = call i64 @strncasecmp(i8* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @MPARSE_LATIN1, align 4
  store i32 %147, i32* %3, align 4
  br label %153

148:                                              ; preds = %142, %139
  store i32 0, i32* %3, align 4
  br label %153

149:                                              ; preds = %76, %54
  %150 = load i32, i32* @MPARSE_UTF8, align 4
  %151 = load i32, i32* @MPARSE_LATIN1, align 4
  %152 = or i32 %150, %151
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %148, %146, %137, %129, %45
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
