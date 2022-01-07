; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_create_soa_probe_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_create_soa_probe_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i32, i32 }
%struct.query_info = type { i32, i32, i32, i32 }

@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, i32*, i32)* @xfr_create_soa_probe_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_create_soa_probe_packet(%struct.auth_xfer* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.auth_xfer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.query_info, align 4
  store %struct.auth_xfer* %0, %struct.auth_xfer** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.query_info* %7, i32 0, i32 16)
  %9 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %10 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %14 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %18 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @qinfo_query_encode(i32* %23, %struct.query_info* %7)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @sldns_buffer_write_u16_at(i32* %25, i32 0, i32 %26)
  ret void
}

declare dso_local i32 @memset(%struct.query_info*, i32, i32) #1

declare dso_local i32 @qinfo_query_encode(i32*, %struct.query_info*) #1

declare dso_local i32 @sldns_buffer_write_u16_at(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
