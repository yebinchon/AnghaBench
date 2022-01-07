; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_anqp_build_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_anqp_build_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@ANQP_QUERY_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32*, i64, %struct.wpabuf*)* @anqp_build_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @anqp_build_req(i32* %0, i64 %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = mul i64 %11, 2
  %13 = add i64 4, %12
  %14 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %15 = icmp ne %struct.wpabuf* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %18 = call i32 @wpabuf_len(%struct.wpabuf* %17)
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  %22 = sext i32 %21 to i64
  %23 = add i64 %13, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.wpabuf* @gas_anqp_build_initial_req(i32 0, i32 %24)
  store %struct.wpabuf* %25, %struct.wpabuf** %8, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %27 = icmp eq %struct.wpabuf* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %65

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %34 = load i32, i32* @ANQP_QUERY_LIST, align 4
  %35 = call i32* @gas_anqp_add_element(%struct.wpabuf* %33, i32 %34)
  store i32* %35, i32** %10, align 8
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %47, %32
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wpabuf_put_le16(%struct.wpabuf* %41, i32 %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %51, i32* %52)
  br label %54

54:                                               ; preds = %50, %29
  %55 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %56 = icmp ne %struct.wpabuf* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %60 = call i32 @wpabuf_put_buf(%struct.wpabuf* %58, %struct.wpabuf* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %63 = call i32 @gas_anqp_set_len(%struct.wpabuf* %62)
  %64 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %64, %struct.wpabuf** %4, align 8
  br label %65

65:                                               ; preds = %61, %28
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %66
}

declare dso_local %struct.wpabuf* @gas_anqp_build_initial_req(i32, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @gas_anqp_set_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
