; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_tmcomp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_tmcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, %struct.tm*)* @tmcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmcomp(%struct.tm* %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %7 = load %struct.tm*, %struct.tm** %4, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tm*, %struct.tm** %5, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tm*, %struct.tm** %5, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.tm*, %struct.tm** %4, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tm*, %struct.tm** %5, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %24, %15, %2
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %92

37:                                               ; preds = %32
  %38 = load %struct.tm*, %struct.tm** %4, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.tm*, %struct.tm** %5, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.tm*, %struct.tm** %5, align 8
  %49 = call %struct.tm* @mkdst(%struct.tm* %48)
  store %struct.tm* %49, %struct.tm** %5, align 8
  br label %64

50:                                               ; preds = %42, %37
  %51 = load %struct.tm*, %struct.tm** %5, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.tm*, %struct.tm** %4, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.tm*, %struct.tm** %4, align 8
  %62 = call %struct.tm* @mkdst(%struct.tm* %61)
  store %struct.tm* %62, %struct.tm** %4, align 8
  br label %63

63:                                               ; preds = %60, %55, %50
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.tm*, %struct.tm** %4, align 8
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tm*, %struct.tm** %5, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %64
  %74 = load %struct.tm*, %struct.tm** %4, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tm*, %struct.tm** %5, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  store i32 %80, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.tm*, %struct.tm** %4, align 8
  %84 = getelementptr inbounds %struct.tm, %struct.tm* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tm*, %struct.tm** %5, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %82, %73, %64
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %35
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.tm* @mkdst(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
