; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_get_scan_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_get_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %struct.sockaddr_un*, i32)* @wpa_priv_cmd_get_scan_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_get_scan_results(%struct.wpa_priv_interface* %0, %struct.sockaddr_un* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %32

12:                                               ; preds = %3
  %13 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %21 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @wpa_priv_get_scan_results2(%struct.wpa_priv_interface* %20, %struct.sockaddr_un* %21, i32 %22)
  br label %32

24:                                               ; preds = %12
  %25 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %29 = bitcast %struct.sockaddr_un* %28 to %struct.sockaddr*
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sendto(i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, %struct.sockaddr* %29, i32 %30)
  br label %32

32:                                               ; preds = %11, %24, %19
  ret void
}

declare dso_local i32 @wpa_priv_get_scan_results2(%struct.wpa_priv_interface*, %struct.sockaddr_un*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
