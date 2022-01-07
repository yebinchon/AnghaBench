; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_euc.c__EUC_mbrtowc_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_euc.c__EUC_mbrtowc_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i32*, i8, i8, i8, i8)* @_EUC_mbrtowc_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_EUC_mbrtowc_impl(i32* noalias %0, i8* noalias %1, i64 %2, i32* noalias %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca %struct.TYPE_2__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i8 %4, i8* %14, align 1
  store i8 %5, i8* %15, align 1
  store i8 %6, i8* %16, align 1
  store i8 %7, i8* %17, align 1
  store i32 0, i32* %21, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %18, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MB_CUR_MAX, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %8
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* @errno, align 4
  store i64 -1, i64* %9, align 8
  br label %163

38:                                               ; preds = %30
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i64 1, i64* %12, align 8
  store i32* null, i32** %10, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i64, i64* %12, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i64 -2, i64* %9, align 8
  br label %163

46:                                               ; preds = %42
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %22, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i8, i8* %22, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i8, i8* %22, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %9, align 8
  br label %163

71:                                               ; preds = %51
  %72 = load i8, i8* %22, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sge i32 %73, 161
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 2, i32* %20, align 4
  br label %98

76:                                               ; preds = %71
  %77 = load i8, i8* %22, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %14, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i8, i8* %15, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* %20, align 4
  br label %97

85:                                               ; preds = %76
  %86 = load i8, i8* %22, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %16, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i8, i8* %17, align 1
  %93 = zext i8 %92 to i32
  store i32 %93, i32* %20, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @EILSEQ, align 4
  store i32 %95, i32* @errno, align 4
  store i64 -1, i64* %9, align 8
  br label %163

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %97, %75
  %99 = load i32, i32* %20, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %111

104:                                              ; preds = %46
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %20, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %21, align 4
  br label %111

111:                                              ; preds = %104, %98
  store i32 0, i32* %19, align 4
  br label %112

112:                                              ; preds = %129, %111
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @MIN(i32 %114, i64 %115)
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load i32, i32* %21, align 4
  %120 = shl i32 %119, 8
  store i32 %120, i32* %21, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %23, align 1
  %123 = load i8, i8* %23, align 1
  %124 = zext i8 %123 to i32
  %125 = load i32, i32* %21, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %21, align 4
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %11, align 8
  br label %129

129:                                              ; preds = %118
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %112

132:                                              ; preds = %112
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %20, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %19, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %21, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @EILSEQ, align 4
  store i32 %145, i32* @errno, align 4
  store i64 -2, i64* %9, align 8
  br label %163

146:                                              ; preds = %132
  %147 = load i32*, i32** %10, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %21, align 4
  %151 = load i32*, i32** %10, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i32 0, i32* %154, align 4
  %155 = load i32, i32* %21, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %20, align 4
  br label %160

160:                                              ; preds = %158, %157
  %161 = phi i32 [ 0, %157 ], [ %159, %158 ]
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %9, align 8
  br label %163

163:                                              ; preds = %160, %136, %94, %64, %45, %36
  %164 = load i64, i64* %9, align 8
  ret i64 %164
}

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
