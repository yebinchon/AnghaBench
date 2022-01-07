; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_get_if_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_get_if_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCAP_IF_LOOPBACK = common dso_local global i32 0, align 4
@PCAP_IF_UP = common dso_local global i32 0, align 4
@PCAP_IF_RUNNING = common dso_local global i32 0, align 4
@PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE = common dso_local global i32 0, align 4
@OID_GEN_HARDWARE_STATUS = common dso_local global i32 0, align 4
@OID_GEN_MEDIA_CONNECT_STATUS = common dso_local global i32 0, align 4
@PCAP_IF_CONNECTION_STATUS_CONNECTED = common dso_local global i32 0, align 4
@PCAP_IF_CONNECTION_STATUS_DISCONNECTED = common dso_local global i32 0, align 4
@N_GEN_PHYSICAL_MEDIUM_OIDS = common dso_local global i64 0, align 8
@OID_GEN_LINK_STATE = common dso_local global i32 0, align 4
@OID_GEN_PHYSICAL_MEDIUM = common dso_local global i32 0, align 4
@OID_GEN_PHYSICAL_MEDIUM_EX = common dso_local global i32 0, align 4
@PCAP_IF_WIRELESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*)* @get_if_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_if_flags(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCAP_IF_LOOPBACK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* @PCAP_IF_UP, align 4
  %21 = load i32, i32* @PCAP_IF_RUNNING, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %95

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @strdup(i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32* @PacketOpenAdapter(i8* %31)
  store i32* %32, i32** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %95

38:                                               ; preds = %28
  store i64 4, i64* %11, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @OID_GEN_HARDWARE_STATUS, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @oid_get_request(i32* %39, i32 %40, i32* %12, i64* %11, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %60 [
    i32 137, label %47
    i32 139, label %54
    i32 136, label %54
    i32 140, label %59
    i32 138, label %59
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @PCAP_IF_UP, align 4
  %49 = load i32, i32* @PCAP_IF_RUNNING, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %60

54:                                               ; preds = %45, %45
  %55 = load i32, i32* @PCAP_IF_UP, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %60

59:                                               ; preds = %45, %45
  br label %60

60:                                               ; preds = %45, %59, %54, %47
  br label %68

61:                                               ; preds = %38
  %62 = load i32, i32* @PCAP_IF_UP, align 4
  %63 = load i32, i32* @PCAP_IF_RUNNING, align 4
  %64 = or i32 %62, %63
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %60
  store i32 -1, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @OID_GEN_MEDIA_CONNECT_STATUS, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @oid_get_request(i32* %72, i32 %73, i32* %13, i64* %11, i8* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load i32, i32* %13, align 4
  switch i32 %79, label %90 [
    i32 135, label %80
    i32 134, label %85
  ]

80:                                               ; preds = %78
  %81 = load i32, i32* @PCAP_IF_CONNECTION_STATUS_CONNECTED, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @PCAP_IF_CONNECTION_STATUS_DISCONNECTED, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %78, %85, %80
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @PacketCloseAdapter(i32* %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %37, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @PacketOpenAdapter(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @oid_get_request(i32*, i32, i32*, i64*, i8*) #1

declare dso_local i32 @PacketCloseAdapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
