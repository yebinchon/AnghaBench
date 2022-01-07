; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32, i32, %struct.netif* }
%struct.netif = type { i64, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*, i32, i32)*, i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32*)*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid network interface %d\0A\00", align 1
@sn_guid = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"net%d: cannot fetch interface data (status=%lu)\0A\00", align 1
@EfiSimpleNetworkStopped = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"net%d: cannot start interface (status=%lu)\0A\00", align 1
@EfiSimpleNetworkInitialized = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"net%d: cannot init. interface (status=%lu)\0A\00", align 1
@EFI_SIMPLE_NETWORK_RECEIVE_UNICAST = common dso_local global i32 0, align 4
@EFI_SIMPLE_NETWORK_RECEIVE_BROADCAST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"net%d: cannot set rx. filters (status=%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iodesc*, i8*)* @efinet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efinet_init(%struct.iodesc* %0, i8* %1) #0 {
  %3 = alloca %struct.iodesc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netif*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iodesc* %0, %struct.iodesc** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %11 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %10, i32 0, i32 2
  %12 = load %struct.netif*, %struct.netif** %11, align 8
  store %struct.netif* %12, %struct.netif** %5, align 8
  %13 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %14 = call i32 @efi_env_net_params(%struct.iodesc* %13)
  %15 = load %struct.netif*, %struct.netif** %5, align 8
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load %struct.netif*, %struct.netif** %5, align 8
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.netif*, %struct.netif** %5, align 8
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %146

32:                                               ; preds = %2
  %33 = load %struct.netif*, %struct.netif** %5, align 8
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load %struct.netif*, %struct.netif** %5, align 8
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.netif*, %struct.netif** %5, align 8
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %45, i32 0, i32 1
  %47 = bitcast %struct.TYPE_12__** %46 to i8**
  %48 = call i64 @OpenProtocolByHandle(i32 %44, i32* @sn_guid, i8** %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @EFI_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %32
  %53 = load %struct.netif*, %struct.netif** %5, align 8
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @EFI_ERROR_CODE(i64 %56)
  %58 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32 %57)
  br label %146

59:                                               ; preds = %32
  %60 = load %struct.netif*, %struct.netif** %5, align 8
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %6, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EfiSimpleNetworkStopped, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %59
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = call i64 %73(%struct.TYPE_12__* %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @EFI_SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.netif*, %struct.netif** %5, align 8
  %81 = getelementptr inbounds %struct.netif, %struct.netif* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @EFI_ERROR_CODE(i64 %83)
  %85 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %82, i32 %84)
  br label %146

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %59
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @EfiSimpleNetworkInitialized, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %87
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i64 (%struct.TYPE_12__*, i32, i32)*, i64 (%struct.TYPE_12__*, i32, i32)** %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = call i64 %98(%struct.TYPE_12__* %99, i32 0, i32 0)
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @EFI_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.netif*, %struct.netif** %5, align 8
  %106 = getelementptr inbounds %struct.netif, %struct.netif* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @EFI_ERROR_CODE(i64 %108)
  %110 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %107, i32 %109)
  br label %146

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %87
  %113 = load i32, i32* @EFI_SIMPLE_NETWORK_RECEIVE_UNICAST, align 4
  %114 = load i32, i32* @EFI_SIMPLE_NETWORK_RECEIVE_BROADCAST, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %9, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32*)*, i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32*)** %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @FALSE, align 4
  %122 = call i64 %118(%struct.TYPE_12__* %119, i32 %120, i32 0, i32 %121, i32 0, i32* null)
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @EFI_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %112
  %127 = load %struct.netif*, %struct.netif** %5, align 8
  %128 = getelementptr inbounds %struct.netif, %struct.netif* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @EFI_ERROR_CODE(i64 %130)
  %132 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %129, i32 %131)
  br label %133

133:                                              ; preds = %126, %112
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %141 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @bcopy(i32 %139, i32 %142, i32 6)
  %144 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %145 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %133, %104, %79, %52, %27
  ret void
}

declare dso_local i32 @efi_env_net_params(%struct.iodesc*) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i64 @OpenProtocolByHandle(i32, i32*, i8**) #1

declare dso_local i32 @EFI_ERROR_CODE(i64) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
