; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdtoa/extr_printf.c0_fpiprec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdtoa/extr_printf.c0_fpiprec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@STRTOG_Zero = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @fpiprec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpiprec(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STRTOG_Zero, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  store i32 0, i32* %2, align 4
  br label %173

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %168, %18
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %171

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 7
  %42 = mul nsw i32 4, %41
  %43 = ashr i32 %39, %42
  %44 = and i32 %43, 15
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %167

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 3
  store i32 %48, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %97, %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 8, %64
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 32, %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %91, %63
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %75

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94, %60
  br label %100

96:                                               ; preds = %53
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %49

100:                                              ; preds = %95, %49
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %116, %100
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 28
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = ashr i32 %107, %108
  %110 = and i32 %109, 15
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %104, %101
  %114 = phi i1 [ false, %101 ], [ %112, %104 ]
  br i1 %114, label %115, label %119

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 4
  store i32 %118, i32* %6, align 4
  br label %101

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %166

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 3
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %6, align 4
  %131 = ashr i32 %130, 2
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %162, %122
  %135 = load i32, i32* %6, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, %135
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %165

146:                                              ; preds = %134
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = sub nsw i32 32, %153
  %155 = shl i32 %152, %154
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %155
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %146
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %134

165:                                              ; preds = %145
  br label %166

166:                                              ; preds = %165, %119
  br label %171

167:                                              ; preds = %33
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %8, align 4
  br label %30

171:                                              ; preds = %166, %30
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %171, %15
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
