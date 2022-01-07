; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*, i32, i32)* }

@HMAP = common dso_local global %struct.TYPE_18__* null, align 8
@O_LEFTRIGHT = common dso_local global i32 0, align 4
@TMAP = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i64)* @vs_sm_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs_sm_delete(%struct.TYPE_19__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** @HMAP, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %6, align 8
  br label %10

10:                                               ; preds = %17, %2
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 1
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %6, align 8
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = load i32, i32* @O_LEFTRIGHT, align 4
  %23 = call i64 @O_ISSET(%struct.TYPE_19__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i64 1, i64* %8, align 8
  br label %48

26:                                               ; preds = %20
  store i64 1, i64* %8, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i64 1
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %7, align 8
  br label %29

29:                                               ; preds = %42, %26
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** @TMAP, align 8
  %32 = icmp ule %struct.TYPE_18__* %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i1 [ false, %29 ], [ %38, %33 ]
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 1
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %7, align 8
  br label %29

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @HANDLE_WEIRDNESS(i64 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** @HMAP, align 8
  %59 = ptrtoint %struct.TYPE_18__* %57 to i64
  %60 = ptrtoint %struct.TYPE_18__* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 %55(%struct.TYPE_19__* %56, i32 %63, i32 0)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @vs_deleteln(%struct.TYPE_19__* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %134

70:                                               ; preds = %48
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i64 %73
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** @TMAP, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = ptrtoint %struct.TYPE_18__* %75 to i64
  %78 = ptrtoint %struct.TYPE_18__* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 8
  %81 = load i64, i64* %8, align 8
  %82 = sub i64 %80, %81
  %83 = add i64 %82, 1
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memmove(%struct.TYPE_18__* %71, %struct.TYPE_18__* %74, i32 %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** @TMAP, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i64 %89
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %7, align 8
  br label %91

91:                                               ; preds = %100, %70
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = icmp ule %struct.TYPE_18__* %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 1
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %6, align 8
  br label %91

103:                                              ; preds = %91
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** @TMAP, align 8
  %105 = load i64, i64* %8, align 8
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %106
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %6, align 8
  br label %108

108:                                              ; preds = %132, %103
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** @TMAP, align 8
  %111 = icmp ult %struct.TYPE_18__* %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i64 1
  %117 = call i64 @vs_sm_next(%struct.TYPE_19__* %113, %struct.TYPE_18__* %114, %struct.TYPE_18__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %134

120:                                              ; preds = %112, %108
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 1
  store %struct.TYPE_18__* %123, %struct.TYPE_18__** %6, align 8
  %124 = call i64 @vs_line(%struct.TYPE_19__* %121, %struct.TYPE_18__* %123, i32* null, i32* null)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %134

127:                                              ; preds = %120
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** @TMAP, align 8
  %130 = icmp eq %struct.TYPE_18__* %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %133

132:                                              ; preds = %127
  br label %108

133:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %126, %119, %69
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @O_ISSET(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @HANDLE_WEIRDNESS(i64) #1

declare dso_local i64 @vs_deleteln(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @memmove(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @vs_sm_next(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @vs_line(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
