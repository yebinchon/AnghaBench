; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_physmem.c_regions_to_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_physmem.c_regions_to_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region = type { i64, i64, i32 }

@hwregions = common dso_local global %struct.region* null, align 8
@hwcnt = common dso_local global i64 0, align 8
@exregions = common dso_local global %struct.region* null, align 8
@excnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Not enough space in the dump/phys_avail arrays\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64, i64*, i64*)* @regions_to_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @regions_to_avail(i64* %0, i32 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.region*, align 8
  %21 = alloca %struct.region*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %22 = load %struct.region*, %struct.region** @hwregions, align 8
  store %struct.region* %22, %struct.region** %21, align 8
  br label %23

23:                                               ; preds = %191, %5
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @hwcnt, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %196

27:                                               ; preds = %23
  %28 = load %struct.region*, %struct.region** %21, align 8
  %29 = getelementptr inbounds %struct.region, %struct.region* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load %struct.region*, %struct.region** %21, align 8
  %32 = getelementptr inbounds %struct.region, %struct.region* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %15, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = sub nsw i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @pm_btop(i32 %39)
  %41 = load i64, i64* %19, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %19, align 8
  store i64 0, i64* %12, align 8
  %43 = load %struct.region*, %struct.region** @exregions, align 8
  store %struct.region* %43, %struct.region** %20, align 8
  br label %44

44:                                               ; preds = %139, %27
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @excnt, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %144

48:                                               ; preds = %44
  %49 = load %struct.region*, %struct.region** %20, align 8
  %50 = getelementptr inbounds %struct.region, %struct.region* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %139

56:                                               ; preds = %48
  %57 = load %struct.region*, %struct.region** %20, align 8
  %58 = getelementptr inbounds %struct.region, %struct.region* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %17, align 8
  %60 = load %struct.region*, %struct.region** %20, align 8
  %61 = getelementptr inbounds %struct.region, %struct.region* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %15, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %139

69:                                               ; preds = %56
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %144

74:                                               ; preds = %69
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %16, align 8
  %81 = icmp sle i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i64, i64* %16, align 8
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %16, align 8
  store i64 %84, i64* %14, align 8
  br label %144

85:                                               ; preds = %78, %74
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %15, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %85
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = load i64, i64* %11, align 8
  %95 = icmp ugt i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i64*, i64** %6, align 8
  %98 = load i64, i64* %11, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %15, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i64, i64* %17, align 8
  %106 = load i64*, i64** %6, align 8
  %107 = load i64, i64* %11, align 8
  %108 = sub i64 %107, 1
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 %105, i64* %109, align 8
  br label %121

110:                                              ; preds = %96, %93
  %111 = load i64, i64* %15, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %11, align 8
  %115 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %111, i64* %115, align 8
  %116 = load i64, i64* %17, align 8
  %117 = load i64*, i64** %6, align 8
  %118 = load i64, i64* %11, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %11, align 8
  %120 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %116, i64* %120, align 8
  br label %121

121:                                              ; preds = %110, %104
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %15, align 8
  %124 = sub nsw i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i64 @pm_btop(i32 %125)
  %127 = load i64, i64* %18, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %18, align 8
  %129 = load i64, i64* %16, align 8
  store i64 %129, i64* %15, align 8
  br label %139

130:                                              ; preds = %89, %85
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %15, align 8
  %133 = icmp sle i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* %16, align 8
  store i64 %135, i64* %15, align 8
  br label %138

136:                                              ; preds = %130
  %137 = load i64, i64* %17, align 8
  store i64 %137, i64* %14, align 8
  br label %138

138:                                              ; preds = %136, %134
  br label %139

139:                                              ; preds = %138, %121, %68, %55
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %12, align 8
  %142 = load %struct.region*, %struct.region** %20, align 8
  %143 = getelementptr inbounds %struct.region, %struct.region* %142, i32 1
  store %struct.region* %143, %struct.region** %20, align 8
  br label %44

144:                                              ; preds = %82, %73, %44
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* %15, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %184

148:                                              ; preds = %144
  %149 = load i64, i64* %11, align 8
  %150 = icmp ugt i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load i64*, i64** %6, align 8
  %153 = load i64, i64* %11, align 8
  %154 = sub i64 %153, 1
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %15, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load i64, i64* %14, align 8
  %161 = load i64*, i64** %6, align 8
  %162 = load i64, i64* %11, align 8
  %163 = sub i64 %162, 1
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 %160, i64* %164, align 8
  br label %176

165:                                              ; preds = %151, %148
  %166 = load i64, i64* %15, align 8
  %167 = load i64*, i64** %6, align 8
  %168 = load i64, i64* %11, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %11, align 8
  %170 = getelementptr inbounds i64, i64* %167, i64 %168
  store i64 %166, i64* %170, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i64*, i64** %6, align 8
  %173 = load i64, i64* %11, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %11, align 8
  %175 = getelementptr inbounds i64, i64* %172, i64 %173
  store i64 %171, i64* %175, align 8
  br label %176

176:                                              ; preds = %165, %159
  %177 = load i64, i64* %14, align 8
  %178 = load i64, i64* %15, align 8
  %179 = sub nsw i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = call i64 @pm_btop(i32 %180)
  %182 = load i64, i64* %18, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* %18, align 8
  br label %184

184:                                              ; preds = %176, %144
  %185 = load i64, i64* %11, align 8
  %186 = load i64, i64* %8, align 8
  %187 = icmp uge i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %184
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %13, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %13, align 8
  %194 = load %struct.region*, %struct.region** %21, align 8
  %195 = getelementptr inbounds %struct.region, %struct.region* %194, i32 1
  store %struct.region* %195, %struct.region** %21, align 8
  br label %23

196:                                              ; preds = %23
  %197 = load i64*, i64** %9, align 8
  %198 = icmp ne i64* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i64, i64* %18, align 8
  %201 = load i64*, i64** %9, align 8
  store i64 %200, i64* %201, align 8
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i64*, i64** %10, align 8
  %204 = icmp ne i64* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i64, i64* %19, align 8
  %207 = load i64*, i64** %10, align 8
  store i64 %206, i64* %207, align 8
  br label %208

208:                                              ; preds = %205, %202
  %209 = load i64, i64* %11, align 8
  ret i64 %209
}

declare dso_local i64 @pm_btop(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
