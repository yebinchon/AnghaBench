; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_copy_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_copy_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64 }
%struct.radius_attr_hdr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_copy_attr(%struct.radius_msg* %0, %struct.radius_msg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.radius_attr_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %5, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %14 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %18, i64 %19)
  store %struct.radius_attr_hdr* %20, %struct.radius_attr_hdr** %8, align 8
  %21 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %22 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %17
  %27 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %30, 16
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %35, i64 1
  %37 = bitcast %struct.radius_attr_hdr* %36 to i64*
  %38 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %39 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 16
  %43 = trunc i64 %42 to i32
  %44 = call i32 @radius_msg_add_attr(%struct.radius_msg* %33, i64 %34, i64* %37, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %56

47:                                               ; preds = %32
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %26, %17
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %11

54:                                               ; preds = %11
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
