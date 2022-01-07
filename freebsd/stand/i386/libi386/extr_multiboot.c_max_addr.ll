; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_multiboot.c_max_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_multiboot.c_max_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i64, i64, %struct.preloaded_file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @max_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max_addr() #0 {
  %1 = alloca %struct.preloaded_file*, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = call %struct.preloaded_file* @file_findfile(i32* null, i32* null)
  store %struct.preloaded_file* %3, %struct.preloaded_file** %1, align 8
  br label %4

4:                                                ; preds = %26, %0
  %5 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %6 = icmp ne %struct.preloaded_file* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %10 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %13 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = icmp slt i64 %8, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %7
  %18 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %19 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %22 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %17, %7
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %28 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %27, i32 0, i32 2
  %29 = load %struct.preloaded_file*, %struct.preloaded_file** %28, align 8
  store %struct.preloaded_file* %29, %struct.preloaded_file** %1, align 8
  br label %4

30:                                               ; preds = %4
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
