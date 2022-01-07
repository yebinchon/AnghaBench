; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i32, i32*, i8**, i32, i32*, i32)* }
%struct.netif = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BS = common dso_local global %struct.TYPE_6__* null, align 8
@sn_guid = common dso_local global i32 0, align 4
@IH = common dso_local global i32 0, align 4
@EFI_OPEN_PROTOCOL_EXCLUSIVE = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Unable to open network interface %d for exclusive access: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netif*, i8*)* @efinet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efinet_probe(%struct.netif* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netif*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.netif* %0, %struct.netif** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.netif*, %struct.netif** %4, align 8
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.netif*, %struct.netif** %4, align 8
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @BS, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64 (i32, i32*, i8**, i32, i32*, i32)*, i64 (i32, i32*, i8**, i32, i32*, i32)** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = bitcast i32** %6 to i8**
  %25 = load i32, i32* @IH, align 4
  %26 = load i32, i32* @EFI_OPEN_PROTOCOL_EXCLUSIVE, align 4
  %27 = call i64 %22(i32 %23, i32* @sn_guid, i8** %24, i32 %25, i32* null, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @EFI_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.netif*, %struct.netif** %4, align 8
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @EFI_ERROR_CODE(i64 %35)
  %37 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @efi_status_to_errno(i64 %38)
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @printf(i8*, i64, i32) #1

declare dso_local i32 @EFI_ERROR_CODE(i64) #1

declare dso_local i32 @efi_status_to_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
