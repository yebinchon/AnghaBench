; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_globextend.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_globextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i8** }
%struct.glob_limit = type { i64, i64 }

@GLOB_LIMIT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@EOS = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i64 0, align 8
@GLOB_LIMIT_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, %struct.glob_limit*, i8*)* @globextend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @globextend(i32* %0, %struct.TYPE_3__* %1, %struct.glob_limit* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.glob_limit*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store %struct.glob_limit* %2, %struct.glob_limit** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GLOB_LIMIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %27 = getelementptr inbounds %struct.glob_limit, %struct.glob_limit* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @E2BIG, align 4
  store i32 %31, i32* @errno, align 4
  %32 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %32, i32* %5, align 4
  br label %185

33:                                               ; preds = %22, %4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 2, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %12, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i8** @reallocarray(i8** %45, i64 %46, i32 8)
  store i8** %47, i8*** %10, align 8
  %48 = load i8**, i8*** %10, align 8
  %49 = icmp eq i8** %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %51, i32* %5, align 4
  br label %185

52:                                               ; preds = %33
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i8**, i8*** %54, align 8
  %56 = icmp eq i8** %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i8**, i8*** %10, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8** %68, i8*** %10, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %78, %62
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %11, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8**, i8*** %10, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 -1
  store i8** %80, i8*** %10, align 8
  store i8* null, i8** %80, align 8
  br label %74

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %57, %52
  %83 = load i8**, i8*** %10, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i8** %83, i8*** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i8*, i8** %9, align 8
  %90 = call i8* @strdup(i8* %89)
  store i8* %90, i8** %14, align 8
  br label %126

91:                                               ; preds = %82
  %92 = load i32*, i32** %6, align 8
  store i32* %92, i32** %15, align 8
  br label %93

93:                                               ; preds = %100, %91
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %15, align 8
  %96 = load i32, i32* %94, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @EOS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %93

101:                                              ; preds = %93
  %102 = load i64, i64* @MB_CUR_MAX, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = mul i64 %102, %108
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i8* @malloc(i64 %110)
  store i8* %111, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %101
  %114 = load i32*, i32** %6, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @g_Ctoc(i32* %114, i8* %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i32, i32* @E2BIG, align 4
  store i32 %122, i32* @errno, align 4
  %123 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %123, i32* %5, align 4
  br label %185

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %101
  br label %126

126:                                              ; preds = %125, %88
  %127 = load i8*, i8** %14, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %167

129:                                              ; preds = %126
  %130 = load i8*, i8** %14, align 8
  %131 = call i64 @strlen(i8* %130)
  %132 = add nsw i64 %131, 1
  %133 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %134 = getelementptr inbounds %struct.glob_limit, %struct.glob_limit* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @GLOB_LIMIT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %129
  %144 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %145 = getelementptr inbounds %struct.glob_limit, %struct.glob_limit* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @GLOB_LIMIT_STRING, align 8
  %148 = icmp sge i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i8*, i8** %14, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i32, i32* @E2BIG, align 4
  store i32 %152, i32* @errno, align 4
  %153 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %153, i32* %5, align 4
  br label %185

154:                                              ; preds = %143, %129
  %155 = load i8*, i8** %14, align 8
  %156 = load i8**, i8*** %10, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = add nsw i32 %159, %162
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %156, i64 %165
  store i8* %155, i8** %166, align 8
  br label %167

167:                                              ; preds = %154, %126
  %168 = load i8**, i8*** %10, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %171, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %168, i64 %176
  store i8* null, i8** %177, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %167
  %181 = load i32, i32* @GLOB_NOSPACE, align 4
  br label %183

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %182 ]
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %183, %149, %119, %50, %30
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i8** @reallocarray(i8**, i64, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @g_Ctoc(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
