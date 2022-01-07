; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_attr_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_attr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64 }
%struct.radius_attr_hdr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_get_attr_ptr(%struct.radius_msg* %0, i64 %1, i64** %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.radius_attr_hdr*, align 8
  %14 = alloca %struct.radius_attr_hdr*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64** %2, i64*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %13, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %41, %5
  %16 = load i64, i64* %12, align 8
  %17 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %18 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %22, i64 %23)
  store %struct.radius_attr_hdr* %24, %struct.radius_attr_hdr** %14, align 8
  %25 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %26 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load i64*, i64** %11, align 8
  %32 = icmp eq i64* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %35 = bitcast %struct.radius_attr_hdr* %34 to i64*
  %36 = load i64*, i64** %11, align 8
  %37 = icmp ugt i64* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %30
  %39 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  store %struct.radius_attr_hdr* %39, %struct.radius_attr_hdr** %13, align 8
  br label %44

40:                                               ; preds = %33, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %12, align 8
  br label %15

44:                                               ; preds = %38, %15
  %45 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %13, align 8
  %46 = icmp ne %struct.radius_attr_hdr* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %13, align 8
  %49 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 16
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %44
  store i32 -1, i32* %6, align 4
  br label %65

54:                                               ; preds = %47
  %55 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %13, align 8
  %56 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %55, i64 1
  %57 = bitcast %struct.radius_attr_hdr* %56 to i64*
  %58 = load i64**, i64*** %9, align 8
  store i64* %57, i64** %58, align 8
  %59 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %13, align 8
  %60 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 16
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %54, %53
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
