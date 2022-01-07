; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_ctrl_iface_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_ctrl_iface_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_iface_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"CTRL_IFACE - %s - wait for monitor to attach\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"recvfrom(ctrl_iface): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ATTACH\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ctrl_iface sendto failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_ctrl_iface_wait(%struct.ctrl_iface_priv* %0) #0 {
  %2 = alloca %struct.ctrl_iface_priv*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  store %struct.ctrl_iface_priv* %0, %struct.ctrl_iface_priv** %2, align 8
  store i32 4, i32* %6, align 4
  %7 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %95

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %94, %33, %12
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @eloop_wait_for_read_sock(i32 %23)
  %25 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %29 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %30 = call i32 @recvfrom(i32 %27, i8* %28, i32 255, i32 0, %struct.sockaddr* %29, i32* %6)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %13
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %43 = call i64 @os_strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %38
  %46 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @wpa_supplicant_ctrl_iface_attach(i32* %47, %struct.sockaddr_storage* %5, i32 %48, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %45
  %52 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %53 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @sendto(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 0, %struct.sockaddr* %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @strerror(i32 %61)
  %63 = call i32 @wpa_printf(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %51
  br label %95

65:                                               ; preds = %45
  %66 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %67 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @sendto(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5, i32 0, %struct.sockaddr* %69, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %65
  br label %79

79:                                               ; preds = %78
  br label %94

80:                                               ; preds = %38
  %81 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  %82 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @sendto(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5, i32 0, %struct.sockaddr* %84, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @strerror(i32 %90)
  %92 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %80
  br label %94

94:                                               ; preds = %93, %79
  br label %13

95:                                               ; preds = %64, %11
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @eloop_wait_for_read_sock(i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_supplicant_ctrl_iface_attach(i32*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
