; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_l2_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_l2_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32**, i32*, i32* }
%struct.sockaddr_un = type { i32 }

@WPA_PRIV_MAX_L2 = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"No registered l2_packet socket found for unregister request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %struct.sockaddr_un*, i32)* @wpa_priv_cmd_l2_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_l2_unregister(%struct.wpa_priv_interface* %0, %struct.sockaddr_un* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %35, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @WPA_PRIV_MAX_L2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %12
  %23 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @os_memcmp(i32* %28, %struct.sockaddr_un* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22, %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %8

38:                                               ; preds = %33, %8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @WPA_PRIV_MAX_L2, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %69

45:                                               ; preds = %38
  %46 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %45
  %55 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %56 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @l2_packet_deinit(i32* %61)
  %63 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %64 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %42, %54, %45
  ret void
}

declare dso_local i64 @os_memcmp(i32*, %struct.sockaddr_un*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @l2_packet_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
