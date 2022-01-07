; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_anqp_build_comeback_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_anqp_build_comeback_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @gas_anqp_build_comeback_resp(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i64, i64* %13, align 8
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.wpabuf* @gas_build_comeback_resp(i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %22)
  store %struct.wpabuf* %23, %struct.wpabuf** %14, align 8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %25 = icmp eq %struct.wpabuf* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %33

27:                                               ; preds = %6
  %28 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %29 = call i32 @gas_add_adv_proto_anqp(%struct.wpabuf* %28, i32 127, i32 0)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %31 = call i32 @wpabuf_put(%struct.wpabuf* %30, i32 2)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %32, %struct.wpabuf** %7, align 8
  br label %33

33:                                               ; preds = %27, %26
  %34 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %34
}

declare dso_local %struct.wpabuf* @gas_build_comeback_resp(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gas_add_adv_proto_anqp(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
