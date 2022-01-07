; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_freq_range_list_includes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_freq_range_list_includes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_freq_range_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freq_range_list_includes(%struct.wpa_freq_range_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_freq_range_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_freq_range_list* %0, %struct.wpa_freq_range_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %8 = icmp eq %struct.wpa_freq_range_list* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %18, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ule i32 %29, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %45

40:                                               ; preds = %28, %17
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %11

44:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
