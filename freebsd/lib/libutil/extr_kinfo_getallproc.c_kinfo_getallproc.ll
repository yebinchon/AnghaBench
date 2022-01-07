; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_kinfo_getallproc.c_kinfo_getallproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_kinfo_getallproc.c_kinfo_getallproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PROC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kinfo_proc* @kinfo_getallproc(i32* %0) #0 {
  %2 = alloca %struct.kinfo_proc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @CTL_KERN, align 4
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @KERN_PROC, align 4
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @KERN_PROC_PROC, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %11, i32* %12, align 4
  store i64 0, i64* %5, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %15 = call i32 @nitems(i32* %14)
  %16 = call i64 @sysctl(i32* %13, i32 %15, %struct.kinfo_proc* null, i64* %5, i32* null, i32 0)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %2, align 8
  br label %59

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.kinfo_proc* @malloc(i64 %20)
  store %struct.kinfo_proc* %21, %struct.kinfo_proc** %4, align 8
  %22 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %23 = icmp eq %struct.kinfo_proc* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %2, align 8
  br label %59

25:                                               ; preds = %19
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %28 = call i32 @nitems(i32* %27)
  %29 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %30 = call i64 @sysctl(i32* %26, i32 %28, %struct.kinfo_proc* %29, i64* %5, i32* null, i32 0)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %55

33:                                               ; preds = %25
  %34 = load i64, i64* %5, align 8
  %35 = urem i64 %34, 4
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %55

38:                                               ; preds = %33
  %39 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %40 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %55

45:                                               ; preds = %38
  %46 = load i64, i64* %5, align 8
  %47 = udiv i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %3, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = udiv i64 %51, 4
  %53 = call i32 @kinfo_proc_sort(%struct.kinfo_proc* %50, i64 %52)
  %54 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %54, %struct.kinfo_proc** %2, align 8
  br label %59

55:                                               ; preds = %44, %37, %32
  %56 = load i32*, i32** %3, align 8
  store i32 0, i32* %56, align 4
  %57 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %58 = call i32 @free(%struct.kinfo_proc* %57)
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %2, align 8
  br label %59

59:                                               ; preds = %55, %45, %24, %18
  %60 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  ret %struct.kinfo_proc* %60
}

declare dso_local i64 @sysctl(i32*, i32, %struct.kinfo_proc*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local %struct.kinfo_proc* @malloc(i64) #1

declare dso_local i32 @kinfo_proc_sort(%struct.kinfo_proc*, i64) #1

declare dso_local i32 @free(%struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
