; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_l2_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_l2_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_l2 = type { i64, %struct.wpa_priv_interface* }
%struct.wpa_priv_interface = type { i32, i32*, i32* }
%struct.msghdr = type { i32, i32, i32*, %struct.iovec* }
%struct.iovec = type { i64, i32* }

@ETH_ALEN = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sendmsg(l2 rx): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i64)* @wpa_priv_l2_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_l2_rx(i8* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_priv_l2*, align 8
  %10 = alloca %struct.wpa_priv_interface*, align 8
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca [2 x %struct.iovec], align 16
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.wpa_priv_l2*
  store %struct.wpa_priv_l2* %14, %struct.wpa_priv_l2** %9, align 8
  %15 = load %struct.wpa_priv_l2*, %struct.wpa_priv_l2** %9, align 8
  %16 = getelementptr inbounds %struct.wpa_priv_l2, %struct.wpa_priv_l2* %15, i32 0, i32 1
  %17 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %16, align 8
  store %struct.wpa_priv_interface* %17, %struct.wpa_priv_interface** %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load i64, i64* @ETH_ALEN, align 8
  %22 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 16
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 1
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 1
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 16
  %30 = call i32 @os_memset(%struct.msghdr* %11, i32 0, i32 24)
  %31 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 3
  store %struct.iovec* %31, %struct.iovec** %32, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %10, align 8
  %35 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.wpa_priv_l2*, %struct.wpa_priv_l2** %9, align 8
  %38 = getelementptr inbounds %struct.wpa_priv_l2, %struct.wpa_priv_l2* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %10, align 8
  %43 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.wpa_priv_l2*, %struct.wpa_priv_l2** %9, align 8
  %46 = getelementptr inbounds %struct.wpa_priv_l2, %struct.wpa_priv_l2* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %10, align 8
  %52 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @sendmsg(i32 %53, %struct.msghdr* %11, i32 0)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %4
  %57 = load i32, i32* @MSG_ERROR, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %4
  ret void
}

declare dso_local i32 @os_memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
