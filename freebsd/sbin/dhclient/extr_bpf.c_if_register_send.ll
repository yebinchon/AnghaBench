; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_bpf.c_if_register_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_bpf.c_if_register_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.interface_info = type { i32, i32 }
%struct.bpf_version = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.bpf_program = type { i64, i64, %struct.TYPE_2__*, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@BIOCVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't get BPF version: %m\00", align 1
@BPF_MAJOR_VERSION = common dso_local global i64 0, align 8
@BPF_MINOR_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Kernel BPF version out of range - recompile dhcpd!\00", align 1
@dhcp_bpf_wfilter_len = common dso_local global i32 0, align 4
@dhcp_bpf_wfilter = common dso_local global %struct.TYPE_2__* null, align 8
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFMASK = common dso_local global i32 0, align 4
@BIOCSETWF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't install write filter program: %m\00", align 1
@BIOCLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Cannot lock bpf\00", align 1
@CAP_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Can't limit bpf descriptor: %m\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"socket(SOCK_RAW): %m\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"setsockopt(IP_HDRINCL): %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_register_send(%struct.interface_info* %0) #0 {
  %2 = alloca %struct.interface_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_version, align 8
  %5 = alloca %struct.bpf_program, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.interface_info* %0, %struct.interface_info** %2, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %9 = load i32, i32* @O_WRONLY, align 4
  %10 = call i32 @if_register_bpf(%struct.interface_info* %8, i32 %9)
  %11 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %12 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %14 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BIOCVERSION, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16, %struct.bpf_version* %4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = getelementptr inbounds %struct.bpf_version, %struct.bpf_version* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BPF_MAJOR_VERSION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bpf_version, %struct.bpf_version* %4, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BPF_MINOR_VERSION, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %21
  %32 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* @dhcp_bpf_wfilter_len, align 4
  %35 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %5, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_bpf_wfilter, align 8
  %37 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %5, i32 0, i32 2
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_bpf_wfilter, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 7
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 8191
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* @IP_MF, align 4
  %45 = load i32, i32* @IP_OFFMASK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @htons(i32 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_bpf_wfilter, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 7
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %33
  %52 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %53 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BIOCSETWF, align 4
  %56 = bitcast %struct.bpf_program* %5 to %struct.bpf_version*
  %57 = call i64 @ioctl(i32 %54, i32 %55, %struct.bpf_version* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %51
  %62 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %63 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BIOCLOCK, align 4
  %66 = call i64 @ioctl(i32 %64, i32 %65, %struct.bpf_version* null)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i32, i32* @CAP_WRITE, align 4
  %72 = call i32 @cap_rights_init(i32* %3, i32 %71)
  %73 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %74 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @caph_rights_limit(i32 %75, i32* %3)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %70
  %81 = load i32, i32* @AF_INET, align 4
  %82 = load i32, i32* @SOCK_RAW, align 4
  %83 = load i32, i32* @IPPROTO_UDP, align 4
  %84 = call i32 @socket(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %80
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @IPPROTO_IP, align 4
  %91 = load i32, i32* @IP_HDRINCL, align 4
  %92 = call i32 @setsockopt(i32 %89, i32 %90, i32 %91, i32* %7, i32 4)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %88
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %99 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  ret void
}

declare dso_local i32 @if_register_bpf(%struct.interface_info*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.bpf_version*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
