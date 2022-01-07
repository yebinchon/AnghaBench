; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_empty_unit_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_empty_unit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@MAX_CHASSIS = common dso_local global i32 0, align 4
@MAX_GEOSLOT = common dso_local global i32 0, align 4
@units = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @empty_unit_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @empty_unit_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %53, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_CHASSIS, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %56

7:                                                ; preds = %3
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %49, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MAX_GEOSLOT, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @units, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %12
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @units, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @free(i32* %34)
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @units, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %24, %12
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @empty_unit(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %8

52:                                               ; preds = %8
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %3

56:                                               ; preds = %3
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @empty_unit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
