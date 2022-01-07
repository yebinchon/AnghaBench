; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i64, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32*)* }
%struct.sockaddr_un = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %struct.sockaddr_un*)* @wpa_priv_cmd_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_unregister(%struct.wpa_priv_interface* %0, %struct.sockaddr_un* %1) #0 {
  %3 = alloca %struct.wpa_priv_interface*, align 8
  %4 = alloca %struct.sockaddr_un*, align 8
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %3, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %4, align 8
  %5 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = icmp ne i32 (i32*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (i32*)*, i32 (i32*)** %20, align 8
  %22 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 %21(i32* %24)
  br label %26

26:                                               ; preds = %16, %9
  %27 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %35 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32*)*, i32 (i32*)** %37, align 8
  %39 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 %38(i32* %41)
  %43 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %44 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %33, %26
  %46 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
