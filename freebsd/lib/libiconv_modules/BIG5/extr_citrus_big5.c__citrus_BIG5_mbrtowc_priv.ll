; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/BIG5/extr_citrus_big5.c__citrus_BIG5_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/BIG5/extr_citrus_big5.c__citrus_BIG5_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64, %struct.TYPE_4__*, i64*)* @_citrus_BIG5_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_BIG5_mbrtowc_priv(i32* noalias %0, i32* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_4__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = call i32 @_citrus_BIG5_init_state(i32* %23, %struct.TYPE_4__* %24)
  %26 = load i64*, i64** %13, align 8
  store i64 0, i64* %26, align 8
  store i32 0, i32* %7, align 4
  br label %168

27:                                               ; preds = %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %52 [
    i32 0, label %34
    i32 1, label %51
  ]

34:                                               ; preds = %27
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %164

38:                                               ; preds = %34
  %39 = load i8*, i8** %15, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %15, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %11, align 8
  br label %53

51:                                               ; preds = %27
  br label %53

52:                                               ; preds = %27
  br label %159

53:                                               ; preds = %51, %38
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = call i32 @_citrus_BIG5_check(i32* %54, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %159

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %76, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %66
  %73 = load i64, i64* %11, align 8
  %74 = icmp ult i64 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %164

76:                                               ; preds = %72
  %77 = load i8*, i8** %15, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %15, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32 %80, i32* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %11, align 8
  br label %66

95:                                               ; preds = %66
  %96 = load i32, i32* %16, align 4
  switch i32 %96, label %130 [
    i32 1, label %97
    i32 2, label %104
  ]

97:                                               ; preds = %95
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 255
  store i32 %103, i32* %14, align 4
  br label %131

104:                                              ; preds = %95
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 255
  %112 = call i32 @_citrus_BIG5_check2(i32* %105, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %104
  br label %159

115:                                              ; preds = %104
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 255
  %122 = shl i32 %121, 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 255
  %129 = or i32 %122, %128
  store i32 %129, i32* %14, align 4
  br label %131

130:                                              ; preds = %95
  br label %159

131:                                              ; preds = %115, %97
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i64 @_citrus_BIG5_check_excludes(i32* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %159

137:                                              ; preds = %131
  %138 = load i8*, i8** %15, align 8
  %139 = load i8**, i8*** %10, align 8
  store i8* %138, i8** %139, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* %14, align 4
  %146 = load i32*, i32** %9, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %137
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %17, align 4
  %153 = sub nsw i32 %151, %152
  br label %155

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %150
  %156 = phi i32 [ %153, %150 ], [ 0, %154 ]
  %157 = sext i32 %156 to i64
  %158 = load i64*, i64** %13, align 8
  store i64 %157, i64* %158, align 8
  store i32 0, i32* %7, align 4
  br label %168

159:                                              ; preds = %136, %130, %114, %64, %52
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load i64*, i64** %13, align 8
  store i64 -1, i64* %162, align 8
  %163 = load i32, i32* @EILSEQ, align 4
  store i32 %163, i32* %7, align 4
  br label %168

164:                                              ; preds = %75, %37
  %165 = load i8*, i8** %15, align 8
  %166 = load i8**, i8*** %10, align 8
  store i8* %165, i8** %166, align 8
  %167 = load i64*, i64** %13, align 8
  store i64 -2, i64* %167, align 8
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %164, %159, %155, %22
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i32 @_citrus_BIG5_init_state(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @_citrus_BIG5_check(i32*, i32) #1

declare dso_local i32 @_citrus_BIG5_check2(i32*, i32) #1

declare dso_local i64 @_citrus_BIG5_check_excludes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
