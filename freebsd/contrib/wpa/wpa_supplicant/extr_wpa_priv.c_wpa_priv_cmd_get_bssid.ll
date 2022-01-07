; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_get_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_get_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32*, i8*)* }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %struct.sockaddr_un*, i32)* @wpa_priv_cmd_get_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_get_bssid(%struct.wpa_priv_interface* %0, %struct.sockaddr_un* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %23, align 8
  %25 = icmp eq i64 (i32*, i8*)* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %30, align 8
  %32 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 %31(i32* %34, i8* %13)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26, %19
  br label %47

38:                                               ; preds = %26
  %39 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %40 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %44 = bitcast %struct.sockaddr_un* %43 to %struct.sockaddr*
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @sendto(i32 %41, i8* %13, i32 %42, i32 0, %struct.sockaddr* %44, i32 %45)
  store i32 1, i32* %9, align 4
  br label %55

47:                                               ; preds = %37, %18
  %48 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %52 = bitcast %struct.sockaddr_un* %51 to %struct.sockaddr*
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sendto(i32 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, %struct.sockaddr* %52, i32 %53)
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %47, %38
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %9, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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
