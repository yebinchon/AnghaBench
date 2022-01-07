; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_gettok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_gettok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"gettok\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"out of space for name %.10s...\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"out of space for number %.10s...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettok(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %10, align 8
  %17 = call i32 (...) @input()
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %180

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %23, i8* %25, align 1
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @isalnum(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 46
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 95
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %180

39:                                               ; preds = %34, %31, %21
  %40 = load i32, i32* %6, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @isalpha(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 95
  br i1 %49, label %50, label %96

50:                                               ; preds = %47, %39
  br label %51

51:                                               ; preds = %93, %50
  %52 = call i32 (...) @input()
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %51
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp sge i64 %59, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %54
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = add nsw i64 %68, 2
  %70 = trunc i64 %69 to i32
  %71 = call i32 @adjbuf(i8** %8, i32* %9, i32 %70, i32 100, i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %63
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @isalnum(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 95
  br i1 %83, label %84, label %89

84:                                               ; preds = %81, %77
  %85 = load i32, i32* %6, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %10, align 8
  store i8 %86, i8* %87, align 1
  br label %93

89:                                               ; preds = %81
  %90 = load i8*, i8** %10, align 8
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @unput(i32 %91)
  br label %94

93:                                               ; preds = %84
  br label %51

94:                                               ; preds = %89, %51
  %95 = load i8*, i8** %10, align 8
  store i8 0, i8* %95, align 1
  store i32 97, i32* %7, align 4
  br label %174

96:                                               ; preds = %47
  br label %97

97:                                               ; preds = %150, %96
  %98 = call i32 (...) @input()
  store i32 %98, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %151

100:                                              ; preds = %97
  %101 = load i8*, i8** %10, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp sge i64 %105, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %100
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = add nsw i64 %114, 2
  %116 = trunc i64 %115 to i32
  %117 = call i32 @adjbuf(i8** %8, i32* %9, i32 %116, i32 100, i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %109
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @FATAL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %119, %109
  br label %123

123:                                              ; preds = %122, %100
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @isdigit(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 101
  br i1 %129, label %142, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp eq i32 %131, 69
  br i1 %132, label %142, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %134, 46
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 43
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 45
  br i1 %141, label %142, label %147

142:                                              ; preds = %139, %136, %133, %130, %127, %123
  %143 = load i32, i32* %6, align 4
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %10, align 8
  store i8 %144, i8* %145, align 1
  br label %150

147:                                              ; preds = %139
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @unput(i32 %148)
  br label %151

150:                                              ; preds = %142
  br label %97

151:                                              ; preds = %147, %97
  %152 = load i8*, i8** %10, align 8
  store i8 0, i8* %152, align 1
  %153 = load i8*, i8** %8, align 8
  %154 = call i32 @strtod(i8* %153, i8** %11)
  %155 = load i8*, i8** %11, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = icmp eq i8* %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = load i8*, i8** %8, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  store i8 0, i8* %160, align 1
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  store i32 %164, i32* %7, align 4
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = call i32 @unputstr(i8* %166)
  br label %173

168:                                              ; preds = %151
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @unputstr(i8* %169)
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  store i8 0, i8* %172, align 1
  store i32 48, i32* %7, align 4
  br label %173

173:                                              ; preds = %168, %158
  br label %174

174:                                              ; preds = %173, %94
  %175 = load i8*, i8** %8, align 8
  %176 = load i8**, i8*** %4, align 8
  store i8* %175, i8** %176, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32*, i32** %5, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %174, %37, %20
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @input(...) #1

declare dso_local i64 @isalnum(i32) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @adjbuf(i8**, i32*, i32, i32, i8**, i8*) #1

declare dso_local i32 @FATAL(i8*, i8*) #1

declare dso_local i32 @unput(i32) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i32 @unputstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
