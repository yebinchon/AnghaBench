; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_sim_msg_add(%struct.eap_sim_msg* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.eap_sim_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.eap_sim_msg* %0, %struct.eap_sim_msg** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = add i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %19 = icmp eq %struct.eap_sim_msg* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %85

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = srem i32 %22, 4
  %24 = sub nsw i32 4, %23
  %25 = srem i32 %24, 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %12, align 4
  %29 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %30 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @wpabuf_resize(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32* null, i32** %6, align 8
  br label %85

35:                                               ; preds = %21
  %36 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %37 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @wpabuf_put(i32 %38, i32 0)
  store i32* %39, i32** %14, align 8
  %40 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %41 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @wpabuf_put_u8(i32 %42, i32 %43)
  %45 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %46 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sdiv i32 %48, 4
  %50 = call i32 @wpabuf_put_u8(i32 %47, i32 %49)
  %51 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %52 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @wpabuf_put_be16(i32 %53, i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %35
  %59 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %60 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @wpabuf_put_data(i32 %61, i32* %62, i64 %63)
  br label %72

65:                                               ; preds = %35
  %66 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %67 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %11, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32* @wpabuf_put(i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %77 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32* @wpabuf_put(i32 %78, i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @os_memset(i32* %80, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %75, %72
  %84 = load i32*, i32** %14, align 8
  store i32* %84, i32** %6, align 8
  br label %85

85:                                               ; preds = %83, %34, %20
  %86 = load i32*, i32** %6, align 8
  ret i32* %86
}

declare dso_local i64 @wpabuf_resize(i32*, i32) #1

declare dso_local i32* @wpabuf_put(i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(i32, i32) #1

declare dso_local i32 @wpabuf_put_be16(i32, i32) #1

declare dso_local i32 @wpabuf_put_data(i32, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
