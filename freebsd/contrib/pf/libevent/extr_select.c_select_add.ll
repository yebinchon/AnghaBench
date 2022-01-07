; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_select.c_select_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_select.c_select_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32 }
%struct.selectop = type { i32, i32, %struct.event**, i32, %struct.event**, i32 }

@EV_SIGNAL = common dso_local global i32 0, align 4
@NFDBITS = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_add(i8* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event*, align 8
  %6 = alloca %struct.selectop*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.selectop*
  store %struct.selectop* %9, %struct.selectop** %6, align 8
  %10 = load %struct.event*, %struct.event** %5, align 8
  %11 = getelementptr inbounds %struct.event, %struct.event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EV_SIGNAL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.event*, %struct.event** %5, align 8
  %18 = call i32 @evsignal_add(%struct.event* %17)
  store i32 %18, i32* %3, align 4
  br label %125

19:                                               ; preds = %2
  %20 = load %struct.selectop*, %struct.selectop** %6, align 8
  %21 = call i32 @check_selectop(%struct.selectop* %20)
  %22 = load %struct.selectop*, %struct.selectop** %6, align 8
  %23 = getelementptr inbounds %struct.selectop, %struct.selectop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.event*, %struct.event** %5, align 8
  %26 = getelementptr inbounds %struct.event, %struct.event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %19
  %30 = load %struct.selectop*, %struct.selectop** %6, align 8
  %31 = getelementptr inbounds %struct.selectop, %struct.selectop* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 4, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %29
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.event*, %struct.event** %5, align 8
  %42 = getelementptr inbounds %struct.event, %struct.event* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @NFDBITS, align 4
  %46 = call i32 @howmany(i32 %44, i32 %45)
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = icmp ult i64 %40, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* %7, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.selectop*, %struct.selectop** %6, align 8
  %56 = getelementptr inbounds %struct.selectop, %struct.selectop* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.selectop*, %struct.selectop** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @select_resize(%struct.selectop* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.selectop*, %struct.selectop** %6, align 8
  %66 = call i32 @check_selectop(%struct.selectop* %65)
  store i32 -1, i32* %3, align 4
  br label %125

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.event*, %struct.event** %5, align 8
  %70 = getelementptr inbounds %struct.event, %struct.event* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.selectop*, %struct.selectop** %6, align 8
  %73 = getelementptr inbounds %struct.selectop, %struct.selectop* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %19
  %75 = load %struct.event*, %struct.event** %5, align 8
  %76 = getelementptr inbounds %struct.event, %struct.event* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EV_READ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %74
  %82 = load %struct.event*, %struct.event** %5, align 8
  %83 = getelementptr inbounds %struct.event, %struct.event* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.selectop*, %struct.selectop** %6, align 8
  %86 = getelementptr inbounds %struct.selectop, %struct.selectop* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @FD_SET(i32 %84, i32 %87)
  %89 = load %struct.event*, %struct.event** %5, align 8
  %90 = load %struct.selectop*, %struct.selectop** %6, align 8
  %91 = getelementptr inbounds %struct.selectop, %struct.selectop* %90, i32 0, i32 4
  %92 = load %struct.event**, %struct.event*** %91, align 8
  %93 = load %struct.event*, %struct.event** %5, align 8
  %94 = getelementptr inbounds %struct.event, %struct.event* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.event*, %struct.event** %92, i64 %96
  store %struct.event* %89, %struct.event** %97, align 8
  br label %98

98:                                               ; preds = %81, %74
  %99 = load %struct.event*, %struct.event** %5, align 8
  %100 = getelementptr inbounds %struct.event, %struct.event* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @EV_WRITE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %98
  %106 = load %struct.event*, %struct.event** %5, align 8
  %107 = getelementptr inbounds %struct.event, %struct.event* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.selectop*, %struct.selectop** %6, align 8
  %110 = getelementptr inbounds %struct.selectop, %struct.selectop* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @FD_SET(i32 %108, i32 %111)
  %113 = load %struct.event*, %struct.event** %5, align 8
  %114 = load %struct.selectop*, %struct.selectop** %6, align 8
  %115 = getelementptr inbounds %struct.selectop, %struct.selectop* %114, i32 0, i32 2
  %116 = load %struct.event**, %struct.event*** %115, align 8
  %117 = load %struct.event*, %struct.event** %5, align 8
  %118 = getelementptr inbounds %struct.event, %struct.event* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.event*, %struct.event** %116, i64 %120
  store %struct.event* %113, %struct.event** %121, align 8
  br label %122

122:                                              ; preds = %105, %98
  %123 = load %struct.selectop*, %struct.selectop** %6, align 8
  %124 = call i32 @check_selectop(%struct.selectop* %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %64, %16
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @evsignal_add(%struct.event*) #1

declare dso_local i32 @check_selectop(%struct.selectop*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @select_resize(%struct.selectop*, i32) #1

declare dso_local i32 @FD_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
