; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_add_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_add_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_attr_hdr = type { i32, i32 }
%struct.radius_msg = type { i32, i32 }

@RADIUS_MAX_ATTR_LEN = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"radius_msg_add_attr: too long attribute (%lu bytes)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.radius_attr_hdr*, align 8
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.radius_attr_hdr*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i64 (...) @TEST_FAIL()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %5, align 8
  br label %72

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @RADIUS_MAX_ATTR_LEN, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %21)
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %5, align 8
  br label %72

23:                                               ; preds = %15
  %24 = load i64, i64* %9, align 8
  %25 = add i64 8, %24
  store i64 %25, i64* %10, align 8
  %26 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %27 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @wpabuf_tailroom(i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %34 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %33, i32 0, i32 0
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @wpabuf_resize(i32* %34, i64 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %5, align 8
  br label %72

39:                                               ; preds = %32
  %40 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %41 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wpabuf_mhead(i32 %42)
  %44 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %45 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %23
  %47 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %48 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.radius_attr_hdr* @wpabuf_put(i32 %49, i32 8)
  store %struct.radius_attr_hdr* %50, %struct.radius_attr_hdr** %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %11, align 8
  %53 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %9, align 8
  %55 = add i64 8, %54
  %56 = trunc i64 %55 to i32
  %57 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %11, align 8
  %58 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %60 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @wpabuf_put_data(i32 %61, i32* %62, i64 %63)
  %65 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %66 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %11, align 8
  %67 = call i64 @radius_msg_add_attr_to_array(%struct.radius_msg* %65, %struct.radius_attr_hdr* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %46
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %5, align 8
  br label %72

70:                                               ; preds = %46
  %71 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %11, align 8
  store %struct.radius_attr_hdr* %71, %struct.radius_attr_hdr** %5, align 8
  br label %72

72:                                               ; preds = %70, %69, %38, %19, %14
  %73 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %5, align 8
  ret %struct.radius_attr_hdr* %73
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i64 @wpabuf_tailroom(i32) #1

declare dso_local i64 @wpabuf_resize(i32*, i64) #1

declare dso_local i32 @wpabuf_mhead(i32) #1

declare dso_local %struct.radius_attr_hdr* @wpabuf_put(i32, i32) #1

declare dso_local i32 @wpabuf_put_data(i32, i32*, i64) #1

declare dso_local i64 @radius_msg_add_attr_to_array(%struct.radius_msg*, %struct.radius_attr_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
