; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_stdenc.c__citrus_stdenc_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_stdenc.c__citrus_stdenc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_stdenc = type { i64, %struct._citrus_stdenc*, %struct._citrus_stdenc*, i32 (%struct._citrus_stdenc*)*, i64 }

@_citrus_stdenc_default = common dso_local global %struct._citrus_stdenc zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_citrus_stdenc_close(%struct._citrus_stdenc* %0) #0 {
  %2 = alloca %struct._citrus_stdenc*, align 8
  store %struct._citrus_stdenc* %0, %struct._citrus_stdenc** %2, align 8
  %3 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %4 = icmp eq %struct._citrus_stdenc* %3, @_citrus_stdenc_default
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %53

6:                                                ; preds = %1
  %7 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %8 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %13 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %12, i32 0, i32 2
  %14 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %13, align 8
  %15 = icmp ne %struct._citrus_stdenc* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  %17 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %18 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %23 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %22, i32 0, i32 2
  %24 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %23, align 8
  %25 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %24, i32 0, i32 3
  %26 = load i32 (%struct._citrus_stdenc*)*, i32 (%struct._citrus_stdenc*)** %25, align 8
  %27 = icmp ne i32 (%struct._citrus_stdenc*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %30 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %29, i32 0, i32 2
  %31 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %30, align 8
  %32 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %31, i32 0, i32 3
  %33 = load i32 (%struct._citrus_stdenc*)*, i32 (%struct._citrus_stdenc*)** %32, align 8
  %34 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %35 = call i32 %33(%struct._citrus_stdenc* %34)
  br label %36

36:                                               ; preds = %28, %21, %16
  %37 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %38 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %37, i32 0, i32 2
  %39 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %38, align 8
  %40 = call i32 @free(%struct._citrus_stdenc* %39)
  br label %41

41:                                               ; preds = %36, %11
  %42 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %43 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %42, i32 0, i32 1
  %44 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %43, align 8
  %45 = call i32 @free(%struct._citrus_stdenc* %44)
  %46 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %47 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @_citrus_unload_module(i64 %48)
  br label %50

50:                                               ; preds = %41, %6
  %51 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %2, align 8
  %52 = call i32 @free(%struct._citrus_stdenc* %51)
  br label %53

53:                                               ; preds = %50, %5
  ret void
}

declare dso_local i32 @free(%struct._citrus_stdenc*) #1

declare dso_local i32 @_citrus_unload_module(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
