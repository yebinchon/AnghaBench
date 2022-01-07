; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.radius_msg = type { i64 }
%struct.radius_attr_hdr = type { i64, i32 }

@RADIUS_ATTR_EAP_MESSAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @radius_msg_get_eap(%struct.radius_msg* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.radius_msg*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.radius_attr_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %3, align 8
  %9 = load %struct.radius_msg*, %struct.radius_msg** %3, align 8
  %10 = icmp eq %struct.radius_msg* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %96

12:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.radius_msg*, %struct.radius_msg** %3, align 8
  %16 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load %struct.radius_msg*, %struct.radius_msg** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %20, i64 %21)
  store %struct.radius_attr_hdr* %22, %struct.radius_attr_hdr** %7, align 8
  %23 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %24 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RADIUS_ATTR_EAP_MESSAGE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %19
  %29 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %32, 16
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %36 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 16
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %34, %28, %19
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %96

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = call %struct.wpabuf* @wpabuf_alloc(i64 %51)
  store %struct.wpabuf* %52, %struct.wpabuf** %4, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %54 = icmp eq %struct.wpabuf* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %96

56:                                               ; preds = %50
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %91, %56
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.radius_msg*, %struct.radius_msg** %3, align 8
  %60 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %57
  %64 = load %struct.radius_msg*, %struct.radius_msg** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %64, i64 %65)
  store %struct.radius_attr_hdr* %66, %struct.radius_attr_hdr** %7, align 8
  %67 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RADIUS_ATTR_EAP_MESSAGE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %63
  %73 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = icmp ugt i64 %76, 16
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %80 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = sub i64 %82, 16
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  %85 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %86 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %7, align 8
  %87 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %86, i64 1
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @wpabuf_put_data(%struct.wpabuf* %85, %struct.radius_attr_hdr* %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %72, %63
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %57

94:                                               ; preds = %57
  %95 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %95, %struct.wpabuf** %2, align 8
  br label %96

96:                                               ; preds = %94, %55, %49, %11
  %97 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %97
}

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, %struct.radius_attr_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
