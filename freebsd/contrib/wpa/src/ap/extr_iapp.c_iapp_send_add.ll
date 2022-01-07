; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_send_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_send_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iapp_data = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iapp_hdr = type { i8*, i8*, i32, i32 }
%struct.iapp_add_notify = type { i8*, i32, i64, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@IAPP_VERSION = common dso_local global i32 0, align 4
@IAPP_CMD_ADD_notify = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IAPP_UDP_PORT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sendto[IAPP-ADD]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iapp_data*, i32*, i32)* @iapp_send_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iapp_send_add(%struct.iapp_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.iapp_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca %struct.iapp_hdr*, align 8
  %9 = alloca %struct.iapp_add_notify*, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  store %struct.iapp_data* %0, %struct.iapp_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %12 = bitcast i8* %11 to %struct.iapp_hdr*
  store %struct.iapp_hdr* %12, %struct.iapp_hdr** %8, align 8
  %13 = load i32, i32* @IAPP_VERSION, align 4
  %14 = load %struct.iapp_hdr*, %struct.iapp_hdr** %8, align 8
  %15 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IAPP_CMD_ADD_notify, align 4
  %17 = load %struct.iapp_hdr*, %struct.iapp_hdr** %8, align 8
  %18 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.iapp_data*, %struct.iapp_data** %4, align 8
  %20 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = call i8* @host_to_be16(i32 %21)
  %24 = load %struct.iapp_hdr*, %struct.iapp_hdr** %8, align 8
  %25 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = call i8* @host_to_be16(i32 56)
  %27 = load %struct.iapp_hdr*, %struct.iapp_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.iapp_hdr*, %struct.iapp_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %29, i64 1
  %31 = bitcast %struct.iapp_hdr* %30 to %struct.iapp_add_notify*
  store %struct.iapp_add_notify* %31, %struct.iapp_add_notify** %9, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %34 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %36 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %38 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @os_memcpy(i32 %39, i32* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @host_to_be16(i32 %43)
  %45 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %46 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = call i32 @os_memset(%struct.sockaddr_in* %10, i32 0, i32 12)
  %48 = load i32, i32* @AF_INET, align 4
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.iapp_data*, %struct.iapp_data** %4, align 8
  %51 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @IAPP_UDP_PORT, align 4
  %57 = call i32 @htons(i32 %56)
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.iapp_data*, %struct.iapp_data** %4, align 8
  %60 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %63 = load %struct.iapp_add_notify*, %struct.iapp_add_notify** %9, align 8
  %64 = getelementptr inbounds %struct.iapp_add_notify, %struct.iapp_add_notify* %63, i64 1
  %65 = bitcast %struct.iapp_add_notify* %64 to i8*
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %72 = call i64 @sendto(i32 %61, i8* %62, i32 %70, i32 0, %struct.sockaddr* %71, i32 12)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %3
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %3
  ret void
}

declare dso_local i8* @host_to_be16(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
