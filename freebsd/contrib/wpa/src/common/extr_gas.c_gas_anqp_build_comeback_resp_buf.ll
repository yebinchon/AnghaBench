; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_anqp_build_comeback_resp_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_anqp_build_comeback_resp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @gas_anqp_build_comeback_resp_buf(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.wpabuf* %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.wpabuf* %5, %struct.wpabuf** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %21 = icmp ne %struct.wpabuf* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %24 = call i32 @wpabuf_len(%struct.wpabuf* %23)
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  %28 = call %struct.wpabuf* @gas_anqp_build_comeback_resp(i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %27)
  store %struct.wpabuf* %28, %struct.wpabuf** %14, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %30 = icmp eq %struct.wpabuf* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %43

32:                                               ; preds = %26
  %33 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %34 = icmp ne %struct.wpabuf* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %38 = call i32 @wpabuf_put_buf(%struct.wpabuf* %36, %struct.wpabuf* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %41 = call i32 @gas_anqp_set_len(%struct.wpabuf* %40)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %42, %struct.wpabuf** %7, align 8
  br label %43

43:                                               ; preds = %39, %31
  %44 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %44
}

declare dso_local %struct.wpabuf* @gas_anqp_build_comeback_resp(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @gas_anqp_set_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
