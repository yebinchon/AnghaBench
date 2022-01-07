; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_ifmedia.c_get_mode_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_ifmedia.c_get_mode_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmedia_description = type { i64, i32* }
%struct.ifmedia_type_to_subtype = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ifmedia_description*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifmedia_description* (i32, %struct.ifmedia_type_to_subtype*)* @get_mode_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifmedia_description* @get_mode_desc(i32 %0, %struct.ifmedia_type_to_subtype* %1) #0 {
  %3 = alloca %struct.ifmedia_description*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifmedia_type_to_subtype*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifmedia_description*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ifmedia_type_to_subtype* %1, %struct.ifmedia_type_to_subtype** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %57, %2
  %9 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %5, align 8
  %10 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ifmedia_description*, %struct.ifmedia_description** %15, align 8
  %17 = icmp ne %struct.ifmedia_description* %16, null
  br i1 %17, label %18, label %60

18:                                               ; preds = %8
  %19 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %5, align 8
  %20 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %57

29:                                               ; preds = %18
  %30 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %5, align 8
  %31 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.ifmedia_description*, %struct.ifmedia_description** %36, align 8
  store %struct.ifmedia_description* %37, %struct.ifmedia_description** %7, align 8
  br label %38

38:                                               ; preds = %53, %29
  %39 = load %struct.ifmedia_description*, %struct.ifmedia_description** %7, align 8
  %40 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @IFM_MODE(i32 %44)
  %46 = load %struct.ifmedia_description*, %struct.ifmedia_description** %7, align 8
  %47 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load %struct.ifmedia_description*, %struct.ifmedia_description** %7, align 8
  store %struct.ifmedia_description* %51, %struct.ifmedia_description** %3, align 8
  br label %61

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.ifmedia_description*, %struct.ifmedia_description** %7, align 8
  %55 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %54, i32 1
  store %struct.ifmedia_description* %55, %struct.ifmedia_description** %7, align 8
  br label %38

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %8

60:                                               ; preds = %8
  store %struct.ifmedia_description* null, %struct.ifmedia_description** %3, align 8
  br label %61

61:                                               ; preds = %60, %50
  %62 = load %struct.ifmedia_description*, %struct.ifmedia_description** %3, align 8
  ret %struct.ifmedia_description* %62
}

declare dso_local i64 @IFM_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
