; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdevstat/extr_devstat.c_compare_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdevstat/extr_devstat.c_compare_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_selection = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_select(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.device_selection*
  %8 = getelementptr inbounds %struct.device_selection, %struct.device_selection* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.device_selection*
  %14 = getelementptr inbounds %struct.device_selection, %struct.device_selection* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %54

18:                                               ; preds = %11, %2
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.device_selection*
  %21 = getelementptr inbounds %struct.device_selection, %struct.device_selection* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.device_selection*
  %27 = getelementptr inbounds %struct.device_selection, %struct.device_selection* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %54

31:                                               ; preds = %24, %18
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to %struct.device_selection*
  %34 = getelementptr inbounds %struct.device_selection, %struct.device_selection* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to %struct.device_selection*
  %38 = getelementptr inbounds %struct.device_selection, %struct.device_selection* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %54

42:                                               ; preds = %31
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to %struct.device_selection*
  %45 = getelementptr inbounds %struct.device_selection, %struct.device_selection* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast i8* %47 to %struct.device_selection*
  %49 = getelementptr inbounds %struct.device_selection, %struct.device_selection* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %41, %30, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
