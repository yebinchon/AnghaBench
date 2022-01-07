; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_get_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_get_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i8*)* }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@SSID_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %struct.sockaddr_un*, i32)* @wpa_priv_cmd_get_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_get_ssid(%struct.wpa_priv_interface* %0, %struct.sockaddr_un* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @SSID_MAX_LEN, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 4, %12
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %25, align 8
  %27 = icmp eq i32 (i32*, i8*)* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %59

29:                                               ; preds = %21
  %30 = trunc i64 %13 to i32
  %31 = call i32 @os_memset(i8* %15, i32 0, i32 %30)
  %32 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %35, align 8
  %37 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i8, i8* %15, i64 4
  %41 = call i32 %36(i32* %39, i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SSID_MAX_LEN, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %29
  br label %59

49:                                               ; preds = %44
  %50 = call i32 @os_memcpy(i8* %15, i32* %9, i32 4)
  %51 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = trunc i64 %13 to i32
  %55 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %56 = bitcast %struct.sockaddr_un* %55 to %struct.sockaddr*
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @sendto(i32 %53, i8* %15, i32 %54, i32 0, %struct.sockaddr* %56, i32 %57)
  store i32 1, i32* %10, align 4
  br label %67

59:                                               ; preds = %48, %28, %20
  %60 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %64 = bitcast %struct.sockaddr_un* %63 to %struct.sockaddr*
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @sendto(i32 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, %struct.sockaddr* %64, i32 %65)
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %59, %49
  %68 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %71 [
    i32 0, label %70
    i32 1, label %70
  ]

70:                                               ; preds = %67, %67
  ret void

71:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i8*, i32, i32) #2

declare dso_local i32 @os_memcpy(i8*, i32*, i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
