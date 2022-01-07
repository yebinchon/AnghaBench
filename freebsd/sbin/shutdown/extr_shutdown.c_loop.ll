; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/shutdown/extr_shutdown.c_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/shutdown/extr_shutdown.c_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interval = type { i64, i32 }

@offset = common dso_local global i64 0, align 8
@NOLOG_TIME = common dso_local global i64 0, align 8
@tlist = common dso_local global %struct.interval* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop() #0 {
  %1 = alloca %struct.interval*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @offset, align 8
  %5 = load i64, i64* @NOLOG_TIME, align 8
  %6 = icmp sle i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  store i32 1, i32* %3, align 4
  %8 = call i32 (...) @nolog()
  br label %10

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %9, %7
  %11 = load %struct.interval*, %struct.interval** @tlist, align 8
  store %struct.interval* %11, %struct.interval** %1, align 8
  %12 = load %struct.interval*, %struct.interval** %1, align 8
  %13 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @offset, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load i64, i64* @offset, align 8
  %19 = load %struct.interval*, %struct.interval** %1, align 8
  %20 = getelementptr inbounds %struct.interval, %struct.interval* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = call i32 @sleep(i64 %22)
  br label %63

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %38, %24
  %26 = load %struct.interval*, %struct.interval** %1, align 8
  %27 = getelementptr inbounds %struct.interval, %struct.interval* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i64, i64* @offset, align 8
  %32 = load %struct.interval*, %struct.interval** %1, align 8
  %33 = getelementptr inbounds %struct.interval, %struct.interval* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load %struct.interval*, %struct.interval** %1, align 8
  %40 = getelementptr inbounds %struct.interval, %struct.interval* %39, i32 1
  store %struct.interval* %40, %struct.interval** %1, align 8
  br label %25

41:                                               ; preds = %36
  %42 = load i64, i64* @offset, align 8
  %43 = load %struct.interval*, %struct.interval** %1, align 8
  %44 = getelementptr inbounds %struct.interval, %struct.interval* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %2, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load i64, i64* %2, align 8
  %50 = load %struct.interval*, %struct.interval** %1, align 8
  %51 = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 5
  %54 = sext i32 %53 to i64
  %55 = icmp sgt i64 %49, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i64, i64* @offset, align 8
  %58 = call i32 @timewarn(i64 %57)
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @sleep(i64 %60)
  br label %62

62:                                               ; preds = %59, %41
  br label %63

63:                                               ; preds = %62, %17
  br label %64

64:                                               ; preds = %91, %63
  %65 = load %struct.interval*, %struct.interval** %1, align 8
  %66 = getelementptr inbounds %struct.interval, %struct.interval* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @timewarn(i64 %67)
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  %72 = load %struct.interval*, %struct.interval** %1, align 8
  %73 = getelementptr inbounds %struct.interval, %struct.interval* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NOLOG_TIME, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  %78 = call i32 (...) @nolog()
  br label %79

79:                                               ; preds = %77, %71, %64
  %80 = load %struct.interval*, %struct.interval** %1, align 8
  %81 = getelementptr inbounds %struct.interval, %struct.interval* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = call i32 @sleep(i64 %83)
  %85 = load %struct.interval*, %struct.interval** %1, align 8
  %86 = getelementptr inbounds %struct.interval, %struct.interval* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %94

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.interval*, %struct.interval** %1, align 8
  %93 = getelementptr inbounds %struct.interval, %struct.interval* %92, i32 1
  store %struct.interval* %93, %struct.interval** %1, align 8
  br label %64

94:                                               ; preds = %89
  %95 = call i32 (...) @die_you_gravy_sucking_pig_dog()
  ret void
}

declare dso_local i32 @nolog(...) #1

declare dso_local i32 @sleep(i64) #1

declare dso_local i32 @timewarn(i64) #1

declare dso_local i32 @die_you_gravy_sucking_pig_dog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
