; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_findalldevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_findalldevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i8*)* }
%struct.TYPE_5__ = type { i32* }

@capture_source_types = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_findalldevs(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @pcap_platform_finddevs(%struct.TYPE_5__* %7, i8* %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @pcap_freealldevs(i32* %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32**, i32*** %4, align 8
  store i32* null, i32** %21, align 8
  store i32 -1, i32* %3, align 4
  br label %57

22:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %50, %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @capture_source_types, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_5__*, i8*)* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @capture_source_types, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 %35(%struct.TYPE_5__* %7, i8* %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @pcap_freealldevs(i32* %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32**, i32*** %4, align 8
  store i32* null, i32** %48, align 8
  store i32 -1, i32* %3, align 4
  br label %57

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %23

53:                                               ; preds = %23
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32**, i32*** %4, align 8
  store i32* %55, i32** %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %47, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @pcap_platform_finddevs(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @pcap_freealldevs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
