; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_add_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_add_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_sim_msg_add_full(%struct.eap_sim_msg* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.eap_sim_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.eap_sim_msg* %0, %struct.eap_sim_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = add i64 2, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %6, align 8
  %17 = icmp eq %struct.eap_sim_msg* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %67

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = srem i32 %20, 4
  %22 = sub nsw i32 4, %21
  %23 = srem i32 %22, 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %6, align 8
  %28 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @wpabuf_resize(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32* null, i32** %5, align 8
  br label %67

33:                                               ; preds = %19
  %34 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %6, align 8
  %35 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @wpabuf_put(i32 %36, i32 0)
  store i32* %37, i32** %12, align 8
  %38 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %6, align 8
  %39 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @wpabuf_put_u8(i32 %40, i32 %41)
  %43 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %6, align 8
  %44 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sdiv i32 %46, 4
  %48 = call i32 @wpabuf_put_u8(i32 %45, i32 %47)
  %49 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %6, align 8
  %50 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @wpabuf_put_data(i32 %51, i32* %52, i64 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %33
  %58 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %6, align 8
  %59 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32* @wpabuf_put(i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @os_memset(i32* %62, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %57, %33
  %66 = load i32*, i32** %12, align 8
  store i32* %66, i32** %5, align 8
  br label %67

67:                                               ; preds = %65, %32, %18
  %68 = load i32*, i32** %5, align 8
  ret i32* %68
}

declare dso_local i64 @wpabuf_resize(i32*, i32) #1

declare dso_local i32* @wpabuf_put(i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(i32, i32) #1

declare dso_local i32 @wpabuf_put_data(i32, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
