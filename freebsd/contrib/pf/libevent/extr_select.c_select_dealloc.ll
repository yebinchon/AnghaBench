; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_select.c_select_dealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_select.c_select_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selectop = type { %struct.selectop*, %struct.selectop*, %struct.selectop*, %struct.selectop*, %struct.selectop*, %struct.selectop* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @select_dealloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.selectop*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.selectop*
  store %struct.selectop* %5, %struct.selectop** %3, align 8
  %6 = load %struct.selectop*, %struct.selectop** %3, align 8
  %7 = getelementptr inbounds %struct.selectop, %struct.selectop* %6, i32 0, i32 5
  %8 = load %struct.selectop*, %struct.selectop** %7, align 8
  %9 = icmp ne %struct.selectop* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.selectop*, %struct.selectop** %3, align 8
  %12 = getelementptr inbounds %struct.selectop, %struct.selectop* %11, i32 0, i32 5
  %13 = load %struct.selectop*, %struct.selectop** %12, align 8
  %14 = call i32 @free(%struct.selectop* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.selectop*, %struct.selectop** %3, align 8
  %17 = getelementptr inbounds %struct.selectop, %struct.selectop* %16, i32 0, i32 4
  %18 = load %struct.selectop*, %struct.selectop** %17, align 8
  %19 = icmp ne %struct.selectop* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.selectop*, %struct.selectop** %3, align 8
  %22 = getelementptr inbounds %struct.selectop, %struct.selectop* %21, i32 0, i32 4
  %23 = load %struct.selectop*, %struct.selectop** %22, align 8
  %24 = call i32 @free(%struct.selectop* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.selectop*, %struct.selectop** %3, align 8
  %27 = getelementptr inbounds %struct.selectop, %struct.selectop* %26, i32 0, i32 3
  %28 = load %struct.selectop*, %struct.selectop** %27, align 8
  %29 = icmp ne %struct.selectop* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.selectop*, %struct.selectop** %3, align 8
  %32 = getelementptr inbounds %struct.selectop, %struct.selectop* %31, i32 0, i32 3
  %33 = load %struct.selectop*, %struct.selectop** %32, align 8
  %34 = call i32 @free(%struct.selectop* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.selectop*, %struct.selectop** %3, align 8
  %37 = getelementptr inbounds %struct.selectop, %struct.selectop* %36, i32 0, i32 2
  %38 = load %struct.selectop*, %struct.selectop** %37, align 8
  %39 = icmp ne %struct.selectop* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.selectop*, %struct.selectop** %3, align 8
  %42 = getelementptr inbounds %struct.selectop, %struct.selectop* %41, i32 0, i32 2
  %43 = load %struct.selectop*, %struct.selectop** %42, align 8
  %44 = call i32 @free(%struct.selectop* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.selectop*, %struct.selectop** %3, align 8
  %47 = getelementptr inbounds %struct.selectop, %struct.selectop* %46, i32 0, i32 1
  %48 = load %struct.selectop*, %struct.selectop** %47, align 8
  %49 = icmp ne %struct.selectop* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.selectop*, %struct.selectop** %3, align 8
  %52 = getelementptr inbounds %struct.selectop, %struct.selectop* %51, i32 0, i32 1
  %53 = load %struct.selectop*, %struct.selectop** %52, align 8
  %54 = call i32 @free(%struct.selectop* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.selectop*, %struct.selectop** %3, align 8
  %57 = getelementptr inbounds %struct.selectop, %struct.selectop* %56, i32 0, i32 0
  %58 = load %struct.selectop*, %struct.selectop** %57, align 8
  %59 = icmp ne %struct.selectop* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.selectop*, %struct.selectop** %3, align 8
  %62 = getelementptr inbounds %struct.selectop, %struct.selectop* %61, i32 0, i32 0
  %63 = load %struct.selectop*, %struct.selectop** %62, align 8
  %64 = call i32 @free(%struct.selectop* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.selectop*, %struct.selectop** %3, align 8
  %67 = call i32 @memset(%struct.selectop* %66, i32 0, i32 48)
  %68 = load %struct.selectop*, %struct.selectop** %3, align 8
  %69 = call i32 @free(%struct.selectop* %68)
  ret void
}

declare dso_local i32 @free(%struct.selectop*) #1

declare dso_local i32 @memset(%struct.selectop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
