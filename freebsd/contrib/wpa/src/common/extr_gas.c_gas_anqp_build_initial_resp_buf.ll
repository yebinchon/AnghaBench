; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_anqp_build_initial_resp_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_anqp_build_initial_resp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @gas_anqp_build_initial_resp_buf(i32 %0, i32 %1, i32 %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %15 = icmp ne %struct.wpabuf* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %18 = call i32 @wpabuf_len(%struct.wpabuf* %17)
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  %22 = call %struct.wpabuf* @gas_anqp_build_initial_resp(i32 %11, i32 %12, i32 %13, i32 %21)
  store %struct.wpabuf* %22, %struct.wpabuf** %10, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %24 = icmp eq %struct.wpabuf* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %37

26:                                               ; preds = %20
  %27 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %28 = icmp ne %struct.wpabuf* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %32 = call i32 @wpabuf_put_buf(%struct.wpabuf* %30, %struct.wpabuf* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %35 = call i32 @gas_anqp_set_len(%struct.wpabuf* %34)
  %36 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %36, %struct.wpabuf** %5, align 8
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %38
}

declare dso_local %struct.wpabuf* @gas_anqp_build_initial_resp(i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @gas_anqp_set_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
