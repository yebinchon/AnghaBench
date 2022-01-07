; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_find_unlisted_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_find_unlisted_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64 }
%struct.radius_attr_hdr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @radius_msg_find_unlisted_attr(%struct.radius_msg* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.radius_msg*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.radius_attr_hdr*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %12 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %9
  %16 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %16, i64 %17)
  store %struct.radius_attr_hdr* %18, %struct.radius_attr_hdr** %8, align 8
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %36, %15
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %27 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %39

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %19

39:                                               ; preds = %34, %19
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %47 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %3, align 8
  br label %54

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %9

53:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
