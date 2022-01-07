; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_add_encr_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_add_encr_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_msg = type { i64, i32, i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"EAP-SIM: eap_sim_msg_add_encr_end - invalid pad_len %d\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"   *AT_PADDING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"   (AT_ENCR_DATA data len %lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sim_msg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.eap_sim_msg* %0, %struct.eap_sim_msg** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %12 = icmp eq %struct.eap_sim_msg* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %18 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %23 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16, %13, %3
  store i32 -1, i32* %4, align 4
  br label %111

27:                                               ; preds = %21
  %28 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %29 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wpabuf_len(i32 %30)
  %32 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %33 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = sub nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = urem i64 %38, 16
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %27
  %42 = load i64, i64* %8, align 8
  %43 = urem i64 %42, 16
  %44 = sub i64 16, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @MSG_WARNING, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %4, align 4
  br label %111

52:                                               ; preds = %41
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 4
  %59 = call i32* @eap_sim_msg_add(%struct.eap_sim_msg* %55, i32 %56, i32 0, i32* null, i32 %58)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %111

63:                                               ; preds = %52
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 4
  %68 = call i32 @os_memset(i32* %65, i32 0, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %63, %27
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i64, i64* %8, align 8
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %8, align 8
  %78 = udiv i64 %77, 4
  %79 = add i64 %78, 1
  %80 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %81 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64* @wpabuf_mhead_u8(i32 %82)
  %84 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %85 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %83, i64 %88
  store i64 %79, i64* %89, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %92 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @wpabuf_head_u8(i32 %93)
  %95 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %96 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %100 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64* @wpabuf_mhead_u8(i32 %101)
  %103 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %104 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = getelementptr inbounds i64, i64* %107, i64 4
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @aes_128_cbc_encrypt(i32* %90, i64 %98, i64* %108, i64 %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %73, %62, %48, %26
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i64* @wpabuf_mhead_u8(i32) #1

declare dso_local i32 @aes_128_cbc_encrypt(i32*, i64, i64*, i64) #1

declare dso_local i64 @wpabuf_head_u8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
