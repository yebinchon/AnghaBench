; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_kinfo_getproc.c_kinfo_getproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_kinfo_getproc.c_kinfo_getproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32, i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kinfo_proc* @kinfo_getproc(i32 %0) #0 {
  %2 = alloca %struct.kinfo_proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @CTL_KERN, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %7, i32* %8, align 16
  %9 = load i32, i32* @KERN_PROC, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @KERN_PROC_PID, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %17 = call i32 @nitems(i32* %16)
  %18 = call i64 @sysctl(i32* %15, i32 %17, %struct.kinfo_proc* null, i64* %6, i32* null, i32 0)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %2, align 8
  br label %58

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.kinfo_proc* @malloc(i64 %22)
  store %struct.kinfo_proc* %23, %struct.kinfo_proc** %4, align 8
  %24 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %25 = icmp eq %struct.kinfo_proc* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %2, align 8
  br label %58

27:                                               ; preds = %21
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %30 = call i32 @nitems(i32* %29)
  %31 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %32 = call i64 @sysctl(i32* %28, i32 %30, %struct.kinfo_proc* %31, i64* %6, i32* null, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %55

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 8
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %55

39:                                               ; preds = %35
  %40 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %41 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 8
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %55

46:                                               ; preds = %39
  %47 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %48 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %55

53:                                               ; preds = %46
  %54 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %54, %struct.kinfo_proc** %2, align 8
  br label %58

55:                                               ; preds = %52, %45, %38, %34
  %56 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %57 = call i32 @free(%struct.kinfo_proc* %56)
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %2, align 8
  br label %58

58:                                               ; preds = %55, %53, %26, %20
  %59 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  ret %struct.kinfo_proc* %59
}

declare dso_local i64 @sysctl(i32*, i32, %struct.kinfo_proc*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local %struct.kinfo_proc* @malloc(i64) #1

declare dso_local i32 @free(%struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
