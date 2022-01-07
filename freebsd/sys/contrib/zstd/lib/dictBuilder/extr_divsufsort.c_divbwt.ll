; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_divsufsort.c_divbwt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_divsufsort.c_divbwt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUCKET_A_SIZE = common dso_local global i32 0, align 4
@BUCKET_B_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @divbwt(i8* %0, i8* %1, i32* %2, i32 %3, i8* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %7
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %7
  store i32 -1, i32* %8, align 4
  br label %174

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %40, i8* %42, align 1
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %8, align 4
  br label %174

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %11, align 8
  store i32* %47, i32** %16, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i64 @malloc(i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %16, align 8
  br label %57

57:                                               ; preds = %49, %46
  %58 = load i32, i32* @BUCKET_A_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i64 @malloc(i32 %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %17, align 8
  %64 = load i32, i32* @BUCKET_B_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i64 @malloc(i32 %67)
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %18, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %161

72:                                               ; preds = %57
  %73 = load i32*, i32** %17, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %161

75:                                               ; preds = %72
  %76 = load i32*, i32** %18, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %161

78:                                               ; preds = %75
  %79 = load i8*, i8** %9, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = load i32*, i32** %18, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @sort_typeBstar(i8* %79, i32* %80, i32* %81, i32* %82, i32 %83, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = load i32*, i32** %14, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88, %78
  %92 = load i8*, i8** %9, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @construct_BWT(i8* %92, i32* %93, i32* %94, i32* %95, i32 %96, i32 %97)
  store i32 %98, i32* %20, align 4
  br label %109

99:                                               ; preds = %88
  %100 = load i8*, i8** %9, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @construct_BWT_indexes(i8* %100, i32* %101, i32* %102, i32* %103, i32 %104, i32 %105, i8* %106, i32* %107)
  store i32 %108, i32* %20, align 4
  br label %109

109:                                              ; preds = %99, %91
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 %115, i8* %117, align 1
  store i32 0, i32* %21, align 4
  br label %118

118:                                              ; preds = %134, %109
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %20, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load i32*, i32** %16, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 %128, i8* %133, align 1
  br label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %21, align 4
  br label %118

137:                                              ; preds = %118
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %21, align 4
  br label %140

140:                                              ; preds = %155, %137
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load i32*, i32** %16, align 8
  %146 = load i32, i32* %21, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %10, align 8
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 %150, i8* %154, align 1
  br label %155

155:                                              ; preds = %144
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %21, align 4
  br label %140

158:                                              ; preds = %140
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  br label %162

161:                                              ; preds = %75, %72, %57
  store i32 -2, i32* %20, align 4
  br label %162

162:                                              ; preds = %161, %158
  %163 = load i32*, i32** %18, align 8
  %164 = call i32 @free(i32* %163)
  %165 = load i32*, i32** %17, align 8
  %166 = call i32 @free(i32* %165)
  %167 = load i32*, i32** %11, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load i32*, i32** %16, align 8
  %171 = call i32 @free(i32* %170)
  br label %172

172:                                              ; preds = %169, %162
  %173 = load i32, i32* %20, align 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %172, %43, %30
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @sort_typeBstar(i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @construct_BWT(i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @construct_BWT_indexes(i8*, i32*, i32*, i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
