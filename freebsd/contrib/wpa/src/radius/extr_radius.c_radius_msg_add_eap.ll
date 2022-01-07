; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_add_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_add_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32 }

@RADIUS_MAX_ATTR_LEN = common dso_local global i64 0, align 8
@RADIUS_ATTR_EAP_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_add_eap(%struct.radius_msg* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %8, align 8
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %34, %3
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @RADIUS_MAX_ATTR_LEN, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i64, i64* @RADIUS_MAX_ATTR_LEN, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %28 = load i32, i32* @RADIUS_ATTR_EAP_MESSAGE, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @radius_msg_add_attr(%struct.radius_msg* %27, i32 %28, i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %9, align 8
  br label %13

43:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
