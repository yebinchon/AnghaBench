; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_add_attr_user_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_add_attr_user_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_attr_hdr = type { i32 }
%struct.radius_msg = type { i32 }

@RADIUS_ATTR_USER_PASSWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_attr_hdr* @radius_msg_add_attr_user_password(%struct.radius_msg* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.radius_attr_hdr*, align 8
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [128 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 0
  %20 = call i32 @radius_user_password_hide(%struct.radius_msg* %14, i32* %15, i64 %16, i32* %17, i64 %18, i32* %19, i32 512)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %6, align 8
  br label %30

24:                                               ; preds = %5
  %25 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %26 = load i32, i32* @RADIUS_ATTR_USER_PASSWORD, align 4
  %27 = getelementptr inbounds [128 x i32], [128 x i32]* %12, i64 0, i64 0
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg* %25, i32 %26, i32* %27, i32 %28)
  store %struct.radius_attr_hdr* %29, %struct.radius_attr_hdr** %6, align 8
  br label %30

30:                                               ; preds = %24, %23
  %31 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %6, align 8
  ret %struct.radius_attr_hdr* %31
}

declare dso_local i32 @radius_user_password_hide(%struct.radius_msg*, i32*, i64, i32*, i64, i32*, i32) #1

declare dso_local %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
