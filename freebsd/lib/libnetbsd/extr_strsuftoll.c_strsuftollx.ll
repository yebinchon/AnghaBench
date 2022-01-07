; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetbsd/extr_strsuftoll.c_strsuftollx.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetbsd/extr_strsuftoll.c_strsuftollx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s `%s': illegal number\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s %lld is less than %lld.\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s %lld is greater than %lld.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strsuftollx(i8* %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* @errno, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %24, %6
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @isspace(i8 zeroext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  br label %19

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strtoll(i8* %28, i8** %16, i32 10)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ERANGE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %136

34:                                               ; preds = %27
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %145

39:                                               ; preds = %34
  %40 = load i8*, i8** %16, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %109 [
    i32 98, label %43
    i32 107, label %54
    i32 109, label %65
    i32 103, label %76
    i32 116, label %87
    i32 119, label %98
  ]

43:                                               ; preds = %39
  %44 = load i64, i64* %14, align 8
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %14, align 8
  %46 = mul nsw i64 %45, 512
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %136

51:                                               ; preds = %43
  %52 = load i8*, i8** %16, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %16, align 8
  br label %109

54:                                               ; preds = %39
  %55 = load i64, i64* %14, align 8
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %14, align 8
  %57 = mul nsw i64 %56, 1024
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %136

62:                                               ; preds = %54
  %63 = load i8*, i8** %16, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %16, align 8
  br label %109

65:                                               ; preds = %39
  %66 = load i64, i64* %14, align 8
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %14, align 8
  %68 = mul nsw i64 %67, 1048576
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %136

73:                                               ; preds = %65
  %74 = load i8*, i8** %16, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %16, align 8
  br label %109

76:                                               ; preds = %39
  %77 = load i64, i64* %14, align 8
  store i64 %77, i64* %15, align 8
  %78 = load i64, i64* %14, align 8
  %79 = mul nsw i64 %78, 1073741824
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %136

84:                                               ; preds = %76
  %85 = load i8*, i8** %16, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %16, align 8
  br label %109

87:                                               ; preds = %39
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %14, align 8
  %90 = mul nsw i64 %89, 1099511627776
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %136

95:                                               ; preds = %87
  %96 = load i8*, i8** %16, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %16, align 8
  br label %109

98:                                               ; preds = %39
  %99 = load i64, i64* %14, align 8
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %14, align 8
  %101 = mul i64 %100, 4
  store i64 %101, i64* %14, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %14, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %136

106:                                              ; preds = %98
  %107 = load i8*, i8** %16, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %16, align 8
  br label %109

109:                                              ; preds = %39, %106, %95, %84, %73, %62, %51
  %110 = load i8*, i8** %16, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  switch i32 %112, label %144 [
    i32 0, label %113
    i32 42, label %114
    i32 120, label %114
  ]

113:                                              ; preds = %109
  br label %151

114:                                              ; preds = %109, %109
  %115 = load i64, i64* %14, align 8
  store i64 %115, i64* %15, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @strsuftollx(i8* %116, i8* %118, i64 %119, i64 %120, i8* %121, i64 %122)
  %124 = load i64, i64* %14, align 8
  %125 = mul nsw i64 %124, %123
  store i64 %125, i64* %14, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %114
  store i64 0, i64* %7, align 8
  br label %176

131:                                              ; preds = %114
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %14, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135, %105, %94, %83, %72, %61, %50, %33
  %137 = load i8*, i8** %12, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i64, i64* @ERANGE, align 8
  %141 = call i8* @strerror(i64 %140)
  %142 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %137, i64 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %139, i8* %141)
  store i64 0, i64* %7, align 8
  br label %176

143:                                              ; preds = %131
  br label %151

144:                                              ; preds = %109
  br label %145

145:                                              ; preds = %144, %38
  %146 = load i8*, i8** %12, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %146, i64 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %148, i8* %149)
  store i64 0, i64* %7, align 8
  br label %176

151:                                              ; preds = %143, %113
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i8*, i8** %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* %10, align 8
  %161 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %156, i64 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %158, i64 %159, i64 %160)
  store i64 0, i64* %7, align 8
  br label %176

162:                                              ; preds = %151
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* %11, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i8*, i8** %12, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load i64, i64* %14, align 8
  %171 = load i64, i64* %11, align 8
  %172 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %167, i64 %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %169, i64 %170, i64 %171)
  store i64 0, i64* %7, align 8
  br label %176

173:                                              ; preds = %162
  %174 = load i8*, i8** %12, align 8
  store i8 0, i8* %174, align 1
  %175 = load i64, i64* %14, align 8
  store i64 %175, i64* %7, align 8
  br label %176

176:                                              ; preds = %173, %166, %155, %145, %136, %130
  %177 = load i64, i64* %7, align 8
  ret i64 %177
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
