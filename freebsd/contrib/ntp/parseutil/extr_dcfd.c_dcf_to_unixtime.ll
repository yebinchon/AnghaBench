; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_dcf_to_unixtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_dcf_to_unixtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i64, i32, i64 }

@dcf_to_unixtime.days_of_month = internal global [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@YEAR_PIVOT = common dso_local global i64 0, align 8
@YEAR_BREAK = common dso_local global i64 0, align 8
@CVT_FAIL = common dso_local global i32 0, align 4
@CVT_BADDATE = common dso_local global i32 0, align 4
@CVT_BADTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @dcf_to_unixtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcf_to_unixtime(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @YEAR_PIVOT, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 100
  store i64 %17, i64* %15, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @YEAR_BREAK, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1900
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @YEAR_PIVOT, align 8
  %34 = add nsw i64 %33, 1900
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @CVT_FAIL, align 4
  %41 = load i32, i32* @CVT_BADDATE, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %36
  store i32 -1, i32* %3, align 4
  br label %224

45:                                               ; preds = %29
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @julian0(i32 %49)
  %51 = call i32 @julian0(i32 1970)
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %45
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 12
  br i1 %61, label %62, label %71

62:                                               ; preds = %57, %45
  %63 = load i32*, i32** %5, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* @CVT_FAIL, align 4
  %67 = load i32, i32* @CVT_BADDATE, align 4
  %68 = or i32 %66, %67
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %62
  store i32 -1, i32* %3, align 4
  br label %224

71:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %85, %71
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [13 x i32], [13 x i32]* @dcf_to_unixtime.days_of_month, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %72

88:                                               ; preds = %72
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %121, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @days_per_year(i32 %102)
  %104 = icmp eq i32 %103, 366
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 29
  br i1 %109, label %121, label %130

110:                                              ; preds = %98, %93
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [13 x i32], [13 x i32]* @dcf_to_unixtime.days_of_month, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %113, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %110, %105, %88
  %122 = load i32*, i32** %5, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* @CVT_FAIL, align 4
  %126 = load i32, i32* @CVT_BADDATE, align 4
  %127 = or i32 %125, %126
  %128 = load i32*, i32** %5, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %121
  store i32 -1, i32* %3, align 4
  br label %224

130:                                              ; preds = %110, %105
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %130
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp sge i64 %144, 24
  br i1 %145, label %146, label %155

146:                                              ; preds = %141, %130
  %147 = load i32*, i32** %5, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* @CVT_FAIL, align 4
  %151 = load i32, i32* @CVT_BADTIME, align 4
  %152 = or i32 %150, %151
  %153 = load i32*, i32** %5, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %146
  store i32 -1, i32* %3, align 4
  br label %224

155:                                              ; preds = %141
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @TIMES24(i32 %156)
  %158 = sext i32 %157 to i64
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %158, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %7, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %155
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %171, 59
  br i1 %172, label %173, label %182

173:                                              ; preds = %168, %155
  %174 = load i32*, i32** %5, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i32, i32* @CVT_FAIL, align 4
  %178 = load i32, i32* @CVT_BADTIME, align 4
  %179 = or i32 %177, %178
  %180 = load i32*, i32** %5, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %176, %173
  store i32 -1, i32* %3, align 4
  br label %224

182:                                              ; preds = %168
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @TIMES60(i32 %183)
  %185 = sext i32 %184 to i64
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %185, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %7, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %7, align 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %182
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = icmp sgt i64 %203, 60
  br i1 %204, label %205, label %214

205:                                              ; preds = %200, %182
  %206 = load i32*, i32** %5, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i32, i32* @CVT_FAIL, align 4
  %210 = load i32, i32* @CVT_BADTIME, align 4
  %211 = or i32 %209, %210
  %212 = load i32*, i32** %5, align 8
  store i32 %211, i32* %212, align 4
  br label %213

213:                                              ; preds = %208, %205
  store i32 -1, i32* %3, align 4
  br label %224

214:                                              ; preds = %200
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @TIMES60(i32 %215)
  %217 = sext i32 %216 to i64
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %217, %220
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %214, %213, %181, %154, %129, %70, %44
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @julian0(i32) #1

declare dso_local i32 @days_per_year(i32) #1

declare dso_local i32 @TIMES24(i32) #1

declare dso_local i32 @TIMES60(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
