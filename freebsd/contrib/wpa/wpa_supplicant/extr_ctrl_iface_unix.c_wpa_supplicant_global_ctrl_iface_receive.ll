; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_global_ctrl_iface_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_global_ctrl_iface_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32 }
%struct.ctrl_iface_global_priv = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recvfrom(ctrl_iface): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ATTACH\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DETACH\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"global_ctrl_sock-sendto\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"ctrl_iface sendto failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @wpa_supplicant_global_ctrl_iface_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_global_ctrl_iface_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_global*, align 8
  %8 = alloca %struct.ctrl_iface_global_priv*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.wpa_global*
  store %struct.wpa_global* %17, %struct.wpa_global** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.ctrl_iface_global_priv*
  store %struct.ctrl_iface_global_priv* %19, %struct.ctrl_iface_global_priv** %8, align 8
  store i32 4, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %22 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %23 = call i32 @recvfrom(i32 %20, i8* %21, i32 4095, i32 0, %struct.sockaddr* %22, i32* %12)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %108

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %33
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %36 = call i64 @os_strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %8, align 8
  %40 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @wpa_supplicant_ctrl_iface_attach(i32* %40, %struct.sockaddr_storage* %11, i32 %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i64 1, i64* %15, align 8
  br label %46

45:                                               ; preds = %38
  store i64 2, i64* %15, align 8
  br label %46

46:                                               ; preds = %45, %44
  br label %69

47:                                               ; preds = %31
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %49 = call i64 @os_strcmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %8, align 8
  %53 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @wpa_supplicant_ctrl_iface_detach(i32* %53, %struct.sockaddr_storage* %11, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i64 1, i64* %15, align 8
  br label %59

58:                                               ; preds = %51
  store i64 2, i64* %15, align 8
  br label %59

59:                                               ; preds = %58, %57
  br label %68

60:                                               ; preds = %47
  %61 = load %struct.wpa_global*, %struct.wpa_global** %7, align 8
  %62 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %63 = call i8* @wpa_supplicant_global_ctrl_iface_process(%struct.wpa_global* %61, i8* %62, i64* %15)
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  store i8* %64, i8** %13, align 8
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @os_memset(i8* %65, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %60, %59
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %15, align 8
  %74 = icmp eq i64 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  store i64 5, i64* %15, align 8
  br label %84

76:                                               ; preds = %72, %69
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %15, align 8
  %81 = icmp eq i64 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  store i64 3, i64* %15, align 8
  br label %83

83:                                               ; preds = %82, %79, %76
  br label %84

84:                                               ; preds = %83, %75
  %85 = load i8*, i8** %13, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = load i8*, i8** %13, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @wpas_ctrl_sock_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %88, i8* %89, i64 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = load i64, i64* %15, align 8
  %95 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @sendto(i32 %92, i8* %93, i64 %94, i32 0, %struct.sockaddr* %95, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %87
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load i32, i32* @errno, align 4
  %102 = call i32 @strerror(i32 %101)
  %103 = call i32 @wpa_printf(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %87
  br label %105

105:                                              ; preds = %104, %84
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @os_free(i8* %106)
  br label %108

108:                                              ; preds = %105, %26
  ret void
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i64 @wpa_supplicant_ctrl_iface_attach(i32*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @wpa_supplicant_ctrl_iface_detach(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i8* @wpa_supplicant_global_ctrl_iface_process(%struct.wpa_global*, i8*, i64*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @wpas_ctrl_sock_debug(i8*, i32, i8*, i64) #1

declare dso_local i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
