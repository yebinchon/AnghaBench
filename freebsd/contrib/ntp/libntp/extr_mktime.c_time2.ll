; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_time2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_time2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@SECSPERMIN = common dso_local global i32 0, align 4
@MINSPERHOUR = common dso_local global i32 0, align 4
@HOURSPERDAY = common dso_local global i32 0, align 4
@MONSPERYEAR = common dso_local global i32 0, align 4
@year_lengths = common dso_local global i64* null, align 8
@TM_YEAR_BASE = common dso_local global i32 0, align 4
@mon_lengths = common dso_local global i32** null, align 8
@WRONG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i32*, i32)* @time2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time2(%struct.tm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tm, align 8
  %14 = alloca %struct.tm, align 8
  store %struct.tm* %0, %struct.tm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.tm*, %struct.tm** %5, align 8
  %18 = bitcast %struct.tm* %13 to i8*
  %19 = bitcast %struct.tm* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SECSPERMIN, align 4
  %23 = add nsw i32 %22, 2
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %3
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %32 = load i32, i32* @SECSPERMIN, align 4
  %33 = call i32 @normalize(i32* %30, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %37 = load i32, i32* @MINSPERHOUR, align 4
  %38 = call i32 @normalize(i32* %35, i32* %36, i32 %37)
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %41 = load i32, i32* @HOURSPERDAY, align 4
  %42 = call i32 @normalize(i32* %39, i32* %40, i32 %41)
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %45 = load i32, i32* @MONSPERYEAR, align 4
  %46 = call i32 @normalize(i32* %43, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %51, %34
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  %55 = load i64*, i64** @year_lengths, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TM_YEAR_BASE, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i64 @isleap(i32 %59)
  %61 = getelementptr inbounds i64, i64* %55, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %62
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %47

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %103, %68
  %70 = load i32**, i32*** @mon_lengths, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TM_YEAR_BASE, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i64 @isleap(i32 %74)
  %76 = getelementptr inbounds i32*, i32** %70, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %69
  br label %104

88:                                               ; preds = %69
  %89 = load i32, i32* %10, align 4
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, %89
  store i32 %92, i32* %90, align 4
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @MONSPERYEAR, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %98, %88
  br label %69

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %11, align 4
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  store i32 0, i32* %107, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %108

108:                                              ; preds = %112, %104
  %109 = load i32, i32* %12, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %12, align 4
  %116 = shl i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %108

117:                                              ; preds = %108
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %124

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = shl i32 1, %122
  br label %124

124:                                              ; preds = %121, %120
  %125 = phi i32 [ 0, %120 ], [ %123, %121 ]
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %167, %124
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = call %struct.tm* @localtime(i32* %12)
  %131 = bitcast %struct.tm* %14 to i8*
  %132 = bitcast %struct.tm* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 32, i1 false)
  br label %137

133:                                              ; preds = %126
  %134 = call %struct.tm* @gmtime(i32* %12)
  %135 = bitcast %struct.tm* %14 to i8*
  %136 = bitcast %struct.tm* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 32, i1 false)
  br label %137

137:                                              ; preds = %133, %129
  %138 = call i32 @tmcomp(%struct.tm* %14, %struct.tm* %13)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %9, align 4
  %144 = icmp slt i32 %142, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @WRONG, align 4
  store i32 %146, i32* %4, align 4
  br label %201

147:                                              ; preds = %141
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %12, align 4
  br label %167

153:                                              ; preds = %147
  %154 = load i32, i32* %8, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = shl i32 1, %157
  %159 = load i32, i32* %12, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %12, align 4
  br label %166

161:                                              ; preds = %153
  %162 = load i32, i32* %9, align 4
  %163 = shl i32 1, %162
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %161, %156
  br label %167

167:                                              ; preds = %166, %150
  br label %126

168:                                              ; preds = %137
  %169 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172, %168
  br label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @WRONG, align 4
  store i32 %180, i32* %4, align 4
  br label %201

181:                                              ; preds = %178
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load %struct.tm*, %struct.tm** %5, align 8
  %189 = call %struct.tm* @localtime(i32* %12)
  %190 = bitcast %struct.tm* %188 to i8*
  %191 = bitcast %struct.tm* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 32, i1 false)
  br label %197

192:                                              ; preds = %181
  %193 = load %struct.tm*, %struct.tm** %5, align 8
  %194 = call %struct.tm* @gmtime(i32* %12)
  %195 = bitcast %struct.tm* %193 to i8*
  %196 = bitcast %struct.tm* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 32, i1 false)
  br label %197

197:                                              ; preds = %192, %187
  %198 = load i32, i32* @TRUE, align 4
  %199 = load i32*, i32** %6, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %197, %179, %145
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @normalize(i32*, i32*, i32) #2

declare dso_local i64 @isleap(i32) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local %struct.tm* @gmtime(i32*) #2

declare dso_local i32 @tmcomp(%struct.tm*, %struct.tm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
