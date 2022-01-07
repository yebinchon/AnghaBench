; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_close_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_close_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_shared = type { i64, %struct._citrus_iconv_shared*, i32 (%struct._citrus_iconv_shared*)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_iconv_shared*)* @close_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_shared(%struct._citrus_iconv_shared* %0) #0 {
  %2 = alloca %struct._citrus_iconv_shared*, align 8
  store %struct._citrus_iconv_shared* %0, %struct._citrus_iconv_shared** %2, align 8
  %3 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %4 = icmp ne %struct._citrus_iconv_shared* %3, null
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %7 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %5
  %11 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %12 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %11, i32 0, i32 1
  %13 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %12, align 8
  %14 = icmp ne %struct._citrus_iconv_shared* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %17 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %22 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %21, i32 0, i32 1
  %23 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %22, align 8
  %24 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %23, i32 0, i32 2
  %25 = load i32 (%struct._citrus_iconv_shared*)*, i32 (%struct._citrus_iconv_shared*)** %24, align 8
  %26 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %27 = call i32 %25(%struct._citrus_iconv_shared* %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %30 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %29, i32 0, i32 1
  %31 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %30, align 8
  %32 = call i32 @free(%struct._citrus_iconv_shared* %31)
  br label %33

33:                                               ; preds = %28, %10
  %34 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %35 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @_citrus_unload_module(i64 %36)
  br label %38

38:                                               ; preds = %33, %5
  %39 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %40 = call i32 @free(%struct._citrus_iconv_shared* %39)
  br label %41

41:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @free(%struct._citrus_iconv_shared*) #1

declare dso_local i32 @_citrus_unload_module(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
