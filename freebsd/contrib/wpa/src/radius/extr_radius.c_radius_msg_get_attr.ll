; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64 }
%struct.radius_attr_hdr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_get_attr(%struct.radius_msg* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.radius_attr_hdr*, align 8
  %11 = alloca %struct.radius_attr_hdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %10, align 8
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %32, %4
  %15 = load i64, i64* %12, align 8
  %16 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %17 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %21, i64 %22)
  store %struct.radius_attr_hdr* %23, %struct.radius_attr_hdr** %11, align 8
  %24 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %11, align 8
  %25 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %11, align 8
  store %struct.radius_attr_hdr* %30, %struct.radius_attr_hdr** %10, align 8
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %12, align 8
  br label %14

35:                                               ; preds = %29, %14
  %36 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %10, align 8
  %37 = icmp ne %struct.radius_attr_hdr* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %10, align 8
  %40 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %35
  store i32 -1, i32* %5, align 4
  br label %70

45:                                               ; preds = %38
  %46 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %10, align 8
  %47 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 16
  store i64 %50, i64* %13, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %45
  %54 = load i64*, i64** %8, align 8
  %55 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %10, align 8
  %56 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %55, i64 1
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* %9, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load i64, i64* %13, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @os_memcpy(i64* %54, %struct.radius_attr_hdr* %56, i64 %65)
  br label %67

67:                                               ; preds = %64, %45
  %68 = load i64, i64* %13, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %44
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

declare dso_local i32 @os_memcpy(i64*, %struct.radius_attr_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
