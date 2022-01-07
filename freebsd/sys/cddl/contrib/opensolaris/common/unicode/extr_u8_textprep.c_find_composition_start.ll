; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_find_composition_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_find_composition_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@u8_composition_b1_tbl = common dso_local global i64** null, align 8
@U8_TBL_ELEMENT_NOT_DEF = common dso_local global i64 0, align 8
@u8_composition_b2_tbl = common dso_local global i64*** null, align 8
@u8_composition_b3_tbl = common dso_local global %struct.TYPE_2__*** null, align 8
@U8_16BIT_TABLE_INDICATOR = common dso_local global i64 0, align 8
@u8_composition_b4_16bit_tbl = common dso_local global i64*** null, align 8
@u8_composition_b4_tbl = common dso_local global i64*** null, align 8
@u8_composition_final_tbl = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64, i64*, i64)* @find_composition_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @find_composition_start(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  br label %65

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  br label %64

32:                                               ; preds = %22
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  br label %63

45:                                               ; preds = %32
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %13, align 8
  br label %62

61:                                               ; preds = %45
  store i64* null, i64** %4, align 8
  br label %185

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %25
  br label %65

65:                                               ; preds = %64, %18
  %66 = load i64**, i64*** @u8_composition_b1_tbl, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i64*, i64** %66, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i64* null, i64** %4, align 8
  br label %185

77:                                               ; preds = %65
  %78 = load i64***, i64**** @u8_composition_b2_tbl, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds i64**, i64*** %78, i64 %79
  %81 = load i64**, i64*** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i64*, i64** %81, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  store i64* null, i64** %4, align 8
  br label %185

92:                                               ; preds = %77
  %93 = load %struct.TYPE_2__***, %struct.TYPE_2__**** @u8_composition_b3_tbl, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %93, i64 %94
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 %97
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  store i64* null, i64** %4, align 8
  br label %185

108:                                              ; preds = %92
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @U8_16BIT_TABLE_INDICATOR, align 8
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %108
  %113 = load i64, i64* @U8_16BIT_TABLE_INDICATOR, align 8
  %114 = load i64, i64* %11, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %11, align 8
  %116 = load i64***, i64**** @u8_composition_b4_16bit_tbl, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds i64**, i64*** %116, i64 %117
  %119 = load i64**, i64*** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds i64*, i64** %119, i64 %120
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %13, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %14, align 8
  %126 = load i64***, i64**** @u8_composition_b4_16bit_tbl, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds i64**, i64*** %126, i64 %127
  %129 = load i64**, i64*** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i64*, i64** %129, i64 %130
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %133, 1
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %15, align 8
  br label %159

137:                                              ; preds = %108
  %138 = load i64***, i64**** @u8_composition_b4_tbl, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds i64**, i64*** %138, i64 %139
  %141 = load i64**, i64*** %140, align 8
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds i64*, i64** %141, i64 %142
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %14, align 8
  %148 = load i64***, i64**** @u8_composition_b4_tbl, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds i64**, i64*** %148, i64 %149
  %151 = load i64**, i64*** %150, align 8
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds i64*, i64** %151, i64 %152
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* %13, align 8
  %156 = add i64 %155, 1
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %15, align 8
  br label %159

159:                                              ; preds = %137, %112
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %15, align 8
  %162 = icmp uge i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i64* null, i64** %4, align 8
  br label %185

164:                                              ; preds = %159
  %165 = load %struct.TYPE_2__***, %struct.TYPE_2__**** @u8_composition_b3_tbl, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %165, i64 %166
  %168 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %167, align 8
  %169 = load i64, i64* %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %168, i64 %169
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %12, align 8
  %176 = load i32**, i32*** @u8_composition_final_tbl, align 8
  %177 = load i64, i64* %5, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* %14, align 8
  %182 = add i64 %180, %181
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = bitcast i32* %183 to i64*
  store i64* %184, i64** %4, align 8
  br label %185

185:                                              ; preds = %164, %163, %107, %91, %76, %61
  %186 = load i64*, i64** %4, align 8
  ret i64* %186
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
