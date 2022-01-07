; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_ccung.c_aw_ccung_init_clocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_ccung.c_aw_ccung_init_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ccung_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32* }
%struct.clknode = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Cannot find clock %s\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Setting %s as parent for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot set parent to %s for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Setting freq %ju for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Cannot set frequency for %s to %ju\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Cannot enable %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_ccung_softc*)* @aw_ccung_init_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_ccung_init_clocks(%struct.aw_ccung_softc* %0) #0 {
  %2 = alloca %struct.aw_ccung_softc*, align 8
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aw_ccung_softc* %0, %struct.aw_ccung_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %207, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %9 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %210

12:                                               ; preds = %6
  %13 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %14 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.clknode* @clknode_find_by_name(i32 %20)
  store %struct.clknode* %21, %struct.clknode** %3, align 8
  %22 = load %struct.clknode*, %struct.clknode** %3, align 8
  %23 = icmp eq %struct.clknode* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %12
  %25 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %26 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %29 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %207

37:                                               ; preds = %12
  %38 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %39 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %108

47:                                               ; preds = %37
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %52 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %55 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = ptrtoint i32* %61 to i32
  %63 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %64 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %70)
  br label %72

72:                                               ; preds = %50, %47
  %73 = load %struct.clknode*, %struct.clknode** %3, align 8
  %74 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %75 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @clknode_set_parent_by_name(%struct.clknode* %73, i32* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %72
  %86 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %87 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %90 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = ptrtoint i32* %96 to i32
  %98 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %99 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %105)
  br label %207

107:                                              ; preds = %72
  br label %108

108:                                              ; preds = %107, %37
  %109 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %110 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %177

118:                                              ; preds = %108
  %119 = load i64, i64* @bootverbose, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %118
  %122 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %123 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %126 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %134 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %140)
  br label %142

142:                                              ; preds = %121, %118
  %143 = load %struct.clknode*, %struct.clknode** %3, align 8
  %144 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %145 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @clknode_set_freq(%struct.clknode* %143, i32 %151, i32 0, i32 0)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %142
  %156 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %157 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %160 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %168 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %166, i32 %174)
  br label %207

176:                                              ; preds = %142
  br label %177

177:                                              ; preds = %176, %108
  %178 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %179 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %177
  %188 = load %struct.clknode*, %struct.clknode** %3, align 8
  %189 = call i32 @clknode_enable(%struct.clknode* %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %187
  %193 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %194 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %197 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %196, i32 0, i32 1
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  br label %207

205:                                              ; preds = %187
  br label %206

206:                                              ; preds = %205, %177
  br label %207

207:                                              ; preds = %206, %192, %155, %85, %24
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %4, align 4
  br label %6

210:                                              ; preds = %6
  ret void
}

declare dso_local %struct.clknode* @clknode_find_by_name(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @clknode_set_parent_by_name(%struct.clknode*, i32*) #1

declare dso_local i32 @clknode_set_freq(%struct.clknode*, i32, i32, i32) #1

declare dso_local i32 @clknode_enable(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
