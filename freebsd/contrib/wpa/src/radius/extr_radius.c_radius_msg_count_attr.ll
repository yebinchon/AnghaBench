; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_count_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_count_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64 }
%struct.radius_attr_hdr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_count_attr(%struct.radius_msg* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.radius_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radius_attr_hdr*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %13 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load %struct.radius_msg*, %struct.radius_msg** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %17, i64 %18)
  store %struct.radius_attr_hdr* %19, %struct.radius_attr_hdr** %9, align 8
  %20 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %9, align 8
  %21 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %9, align 8
  %27 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 16, %31
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %25, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %10

41:                                               ; preds = %10
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
