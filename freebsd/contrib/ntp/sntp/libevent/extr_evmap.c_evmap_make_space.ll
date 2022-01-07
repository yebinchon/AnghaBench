; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_make_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_make_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_signal_map = type { i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_signal_map*, i32, i32)* @evmap_make_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evmap_make_space(%struct.event_signal_map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_signal_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.event_signal_map* %0, %struct.event_signal_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %11 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %3
  %16 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %17 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %22 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 32, %24 ]
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %31, %25
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %27

34:                                               ; preds = %27
  %35 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %36 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i64 @mm_realloc(i8** %37, i32 %40)
  %42 = inttoptr i64 %41 to i8**
  store i8** %42, i8*** %9, align 8
  %43 = load i8**, i8*** %9, align 8
  %44 = icmp eq i8** %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %68

46:                                               ; preds = %34
  %47 = load i8**, i8*** %9, align 8
  %48 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %49 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %47, i64 %51
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %55 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @memset(i8** %52, i32 0, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %63 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %66 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %65, i32 0, i32 1
  store i8** %64, i8*** %66, align 8
  br label %67

67:                                               ; preds = %46, %3
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @mm_realloc(i8**, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
