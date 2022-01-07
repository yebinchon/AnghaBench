; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_plast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_plast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.termp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8, i64, i64, i64, i64 }

@TERMFONT_NONE = common dso_local global i64 0, align 8
@fonts = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*)* @ps_plast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_plast(%struct.termp* %0) #0 {
  %2 = alloca %struct.termp*, align 8
  %3 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %2, align 8
  %4 = load %struct.termp*, %struct.termp** %2, align 8
  %5 = getelementptr inbounds %struct.termp, %struct.termp* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %135

12:                                               ; preds = %1
  %13 = load %struct.termp*, %struct.termp** %2, align 8
  %14 = getelementptr inbounds %struct.termp, %struct.termp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.termp*, %struct.termp** %2, align 8
  %19 = getelementptr inbounds %struct.termp, %struct.termp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %12
  %25 = load %struct.termp*, %struct.termp** %2, align 8
  %26 = call i32 @ps_pclose(%struct.termp* %25)
  %27 = load %struct.termp*, %struct.termp** %2, align 8
  %28 = load %struct.termp*, %struct.termp** %2, align 8
  %29 = getelementptr inbounds %struct.termp, %struct.termp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ps_setfont(%struct.termp* %27, i64 %32)
  br label %34

34:                                               ; preds = %24, %12
  %35 = load i64, i64* @TERMFONT_NONE, align 8
  %36 = load %struct.termp*, %struct.termp** %2, align 8
  %37 = getelementptr inbounds %struct.termp, %struct.termp* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i64 %35, i64* %39, align 8
  %40 = load %struct.termp*, %struct.termp** %2, align 8
  %41 = getelementptr inbounds %struct.termp, %struct.termp* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fonts, align 8
  %48 = load %struct.termp*, %struct.termp** %2, align 8
  %49 = getelementptr inbounds %struct.termp, %struct.termp* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.termp*, %struct.termp** %2, align 8
  %57 = getelementptr inbounds %struct.termp, %struct.termp* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 8
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %3, align 8
  %67 = load %struct.termp*, %struct.termp** %2, align 8
  %68 = getelementptr inbounds %struct.termp, %struct.termp* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %71, %72
  %74 = load %struct.termp*, %struct.termp** %2, align 8
  %75 = getelementptr inbounds %struct.termp, %struct.termp* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %46
  %81 = load %struct.termp*, %struct.termp** %2, align 8
  %82 = getelementptr inbounds %struct.termp, %struct.termp* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.termp*, %struct.termp** %2, align 8
  %87 = getelementptr inbounds %struct.termp, %struct.termp* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %85, %90
  %92 = load i64, i64* %3, align 8
  %93 = sub i64 %91, %92
  %94 = udiv i64 %93, 2
  %95 = load %struct.termp*, %struct.termp** %2, align 8
  %96 = getelementptr inbounds %struct.termp, %struct.termp* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  store i64 %94, i64* %98, align 8
  br label %99

99:                                               ; preds = %80, %46
  br label %100

100:                                              ; preds = %99, %34
  %101 = load %struct.termp*, %struct.termp** %2, align 8
  %102 = load %struct.termp*, %struct.termp** %2, align 8
  %103 = getelementptr inbounds %struct.termp, %struct.termp* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 8
  %107 = call i32 @ps_pletter(%struct.termp* %101, i8 signext %106)
  %108 = load %struct.termp*, %struct.termp** %2, align 8
  %109 = getelementptr inbounds %struct.termp, %struct.termp* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i8 0, i8* %111, align 8
  %112 = load %struct.termp*, %struct.termp** %2, align 8
  %113 = getelementptr inbounds %struct.termp, %struct.termp* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.termp*, %struct.termp** %2, align 8
  %118 = getelementptr inbounds %struct.termp, %struct.termp* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %116, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %100
  %124 = load %struct.termp*, %struct.termp** %2, align 8
  %125 = call i32 @ps_pclose(%struct.termp* %124)
  %126 = load %struct.termp*, %struct.termp** %2, align 8
  %127 = getelementptr inbounds %struct.termp, %struct.termp* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.termp*, %struct.termp** %2, align 8
  %132 = getelementptr inbounds %struct.termp, %struct.termp* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  store i64 %130, i64* %134, align 8
  br label %135

135:                                              ; preds = %11, %123, %100
  ret void
}

declare dso_local i32 @ps_pclose(%struct.termp*) #1

declare dso_local i32 @ps_setfont(%struct.termp*, i64) #1

declare dso_local i32 @ps_pletter(%struct.termp*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
