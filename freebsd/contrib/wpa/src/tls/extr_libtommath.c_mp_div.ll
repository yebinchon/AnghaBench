; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_mp_div.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_mp_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32 }

@MP_VAL = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8
@MP_OKAY = common dso_local global i32 0, align 4
@MP_GT = common dso_local global i64 0, align 8
@MP_ZPOS = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i32 0, align 4
@MP_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*)* @mp_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_div(%struct.TYPE_38__* %0, %struct.TYPE_38__* %1, %struct.TYPE_38__* %2, %struct.TYPE_38__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.TYPE_38__*, align 8
  %10 = alloca %struct.TYPE_38__, align 4
  %11 = alloca %struct.TYPE_38__, align 4
  %12 = alloca %struct.TYPE_38__, align 4
  %13 = alloca %struct.TYPE_38__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %7, align 8
  store %struct.TYPE_38__* %2, %struct.TYPE_38__** %8, align 8
  store %struct.TYPE_38__* %3, %struct.TYPE_38__** %9, align 8
  %17 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %18 = call i32 @mp_iszero(%struct.TYPE_38__* %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @MP_VAL, align 4
  store i32 %21, i32* %5, align 4
  br label %163

22:                                               ; preds = %4
  %23 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %24 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %25 = call i64 @mp_cmp_mag(%struct.TYPE_38__* %23, %struct.TYPE_38__* %24)
  %26 = load i64, i64* @MP_LT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %30 = icmp ne %struct.TYPE_38__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %34 = call i32 @mp_copy(%struct.TYPE_38__* %32, %struct.TYPE_38__* %33)
  store i32 %34, i32* %14, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @MP_OKAY, align 4
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %39 = icmp ne %struct.TYPE_38__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %42 = call i32 @mp_zero(%struct.TYPE_38__* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %163

45:                                               ; preds = %22
  %46 = call i32 @mp_init_multi(%struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13, i32* null)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* @MP_OKAY, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %5, align 4
  br label %163

51:                                               ; preds = %45
  %52 = call i32 @mp_set(%struct.TYPE_38__* %12, i32 1)
  %53 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %54 = call i32 @mp_count_bits(%struct.TYPE_38__* %53)
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %56 = call i32 @mp_count_bits(%struct.TYPE_38__* %55)
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %15, align 4
  %58 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %59 = call i32 @mp_abs(%struct.TYPE_38__* %58, %struct.TYPE_38__* %10)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* @MP_OKAY, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %51
  %63 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %64 = call i32 @mp_abs(%struct.TYPE_38__* %63, %struct.TYPE_38__* %11)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @MP_OKAY, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @mp_mul_2d(%struct.TYPE_38__* %11, i32 %68, %struct.TYPE_38__* %11)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* @MP_OKAY, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @mp_mul_2d(%struct.TYPE_38__* %12, i32 %73, %struct.TYPE_38__* %12)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* @MP_OKAY, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %67, %62, %51
  br label %160

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %106, %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %15, align 4
  %82 = icmp sge i32 %80, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = call i64 @mp_cmp(%struct.TYPE_38__* %11, %struct.TYPE_38__* %10)
  %85 = load i64, i64* @MP_GT, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = call i32 @mp_sub(%struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %10)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @MP_OKAY, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = call i32 @mp_add(%struct.TYPE_38__* %13, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* @MP_OKAY, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %87
  br label %160

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %83
  %98 = call i32 @mp_div_2d(%struct.TYPE_38__* %11, i32 1, %struct.TYPE_38__* %11, i32* null)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* @MP_OKAY, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = call i32 @mp_div_2d(%struct.TYPE_38__* %12, i32 1, %struct.TYPE_38__* %12, i32* null)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* @MP_OKAY, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %97
  br label %160

106:                                              ; preds = %101
  br label %79

107:                                              ; preds = %79
  %108 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %15, align 4
  %111 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @MP_ZPOS, align 4
  br label %122

120:                                              ; preds = %107
  %121 = load i32, i32* @MP_NEG, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  store i32 %123, i32* %16, align 4
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %125 = icmp ne %struct.TYPE_38__* %124, null
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %128 = call i32 @mp_exch(%struct.TYPE_38__* %127, %struct.TYPE_38__* %13)
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %130 = call i32 @mp_iszero(%struct.TYPE_38__* %129)
  %131 = load i32, i32* @MP_YES, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @MP_ZPOS, align 4
  br label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %16, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %122
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %143 = icmp ne %struct.TYPE_38__* %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %146 = call i32 @mp_exch(%struct.TYPE_38__* %145, %struct.TYPE_38__* %10)
  %147 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %148 = call i32 @mp_iszero(%struct.TYPE_38__* %147)
  %149 = load i32, i32* @MP_YES, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* @MP_ZPOS, align 4
  br label %155

153:                                              ; preds = %144
  %154 = load i32, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %155, %141
  br label %160

160:                                              ; preds = %159, %105, %95, %77
  %161 = call i32 @mp_clear_multi(%struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13, i32* null)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %160, %49, %43, %20
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @mp_iszero(%struct.TYPE_38__*) #1

declare dso_local i64 @mp_cmp_mag(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_copy(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_zero(%struct.TYPE_38__*) #1

declare dso_local i32 @mp_init_multi(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @mp_set(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @mp_count_bits(%struct.TYPE_38__*) #1

declare dso_local i32 @mp_abs(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_mul_2d(%struct.TYPE_38__*, i32, %struct.TYPE_38__*) #1

declare dso_local i64 @mp_cmp(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_sub(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_add(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_div_2d(%struct.TYPE_38__*, i32, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_clear_multi(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
