; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_set_country.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_set_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, i8*)* @wpa_priv_cmd_set_country to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_set_country(%struct.wpa_priv_interface* %0, i8* %1) #0 {
  %3 = alloca %struct.wpa_priv_interface*, align 8
  %4 = alloca i8*, align 8
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %13, align 8
  %15 = icmp eq i32 (i32*, i8*)* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %9, %2
  br label %33

22:                                               ; preds = %16
  %23 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %26, align 8
  %28 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 %27(i32* %30, i8* %31)
  br label %33

33:                                               ; preds = %22, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
