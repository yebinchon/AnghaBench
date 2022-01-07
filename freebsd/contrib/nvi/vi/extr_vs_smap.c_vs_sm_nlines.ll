; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_nlines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_nlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@O_LEFTRIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vs_sm_nlines(i32* %0, %struct.TYPE_3__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @O_LEFTRIGHT, align 4
  %14 = call i64 @O_ISSET(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub nsw i64 %25, %26
  br label %34

28:                                               ; preds = %16
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i64 [ %27, %22 ], [ %33, %28 ]
  store i64 %35, i64* %5, align 8
  br label %114

36:                                               ; preds = %4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %114

47:                                               ; preds = %36
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  store i64 %57, i64* %11, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %72, %53
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ule i64 %67, %68
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi i1 [ false, %61 ], [ %69, %66 ]
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @vs_screens(i32* %73, i64 %74, i32* null)
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %11, align 8
  br label %61

79:                                               ; preds = %70
  br label %112

80:                                               ; preds = %47
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %10, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @vs_screens(i32* %84, i64 %85, i32* null)
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %104, %80
  %94 = load i64, i64* %10, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ule i64 %99, %100
  br label %102

102:                                              ; preds = %98, %93
  %103 = phi i1 [ false, %93 ], [ %101, %98 ]
  br i1 %103, label %104, label %111

104:                                              ; preds = %102
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @vs_screens(i32* %105, i64 %106, i32* null)
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %11, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %11, align 8
  br label %93

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %79
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %112, %42, %34
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i64 @O_ISSET(i32*, i32) #1

declare dso_local i32 @vs_screens(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
