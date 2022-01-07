; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_l2_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_l2_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32**, i32*, i32* }
%struct.sockaddr_un = type { i32 }

@WPA_PRIV_MAX_L2 = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"No registered l2_packet socket found for send request\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Too short L2 send packet (len=%lu)\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Refused l2_packet send for ethertype 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"L2 send[idx=%d]: res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %struct.sockaddr_un*, i32, i8*, i64)* @wpa_priv_cmd_l2_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_l2_send(%struct.wpa_priv_interface* %0, %struct.sockaddr_un* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.wpa_priv_interface*, align 8
  %7 = alloca %struct.sockaddr_un*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %6, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %42, %5
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* @WPA_PRIV_MAX_L2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %21 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @os_memcmp(i32* %35, %struct.sockaddr_un* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %45

41:                                               ; preds = %29, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %15

45:                                               ; preds = %40, %15
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @WPA_PRIV_MAX_L2, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %112

52:                                               ; preds = %45
  %53 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %54 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %112

62:                                               ; preds = %52
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load i64, i64* %10, align 8
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  br label %112

72:                                               ; preds = %62
  %73 = load i8*, i8** %9, align 8
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %11, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr i8, i8* %75, i64 %77
  %79 = call i32 @os_memcpy(i32* %12, i8* %78, i32 2)
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @wpa_priv_allowed_l2_proto(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %72
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %112

87:                                               ; preds = %72
  %88 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %6, align 8
  %89 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr i8, i8* %97, i64 %99
  %101 = getelementptr i8, i8* %100, i64 2
  %102 = load i64, i64* %10, align 8
  %103 = load i32, i32* @ETH_ALEN, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %102, %104
  %106 = sub i64 %105, 2
  %107 = call i32 @l2_packet_send(i32* %94, i32* %95, i32 %96, i8* %101, i64 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %87, %83, %68, %61, %49
  ret void
}

declare dso_local i64 @os_memcmp(i32*, %struct.sockaddr_un*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i32*, i8*, i32) #1

declare dso_local i32 @wpa_priv_allowed_l2_proto(i32) #1

declare dso_local i32 @l2_packet_send(i32*, i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
