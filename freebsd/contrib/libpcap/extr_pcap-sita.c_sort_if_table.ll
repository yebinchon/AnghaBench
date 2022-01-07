; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_sort_if_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_sort_if_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32 }

@acn_if_list = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sort_if_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_if_table() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @acn_if_list, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %66

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %65
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @acn_if_list, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %1, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %56, %10
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %2, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %61

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @if_sort(i32 %20, i32 %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %41, align 8
  br label %53

42:                                               ; preds = %26
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %4, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** @acn_if_list, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %52, align 8
  br label %53

53:                                               ; preds = %42, %29
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %1, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %3, align 8
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %17
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %3, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %1, align 8
  br label %12

61:                                               ; preds = %12
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %66

65:                                               ; preds = %61
  br label %10

66:                                               ; preds = %64, %8
  ret void
}

declare dso_local i64 @if_sort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
