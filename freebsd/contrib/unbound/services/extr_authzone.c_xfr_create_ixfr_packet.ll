; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_create_ixfr_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_create_ixfr_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }
%struct.auth_master = type { i32 }
%struct.query_info = type { i64, i32, i32, i32 }

@LDNS_RR_TYPE_IXFR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AXFR = common dso_local global i64 0, align 8
@LDNS_NSCOUNT_OFF = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, i32*, i32, %struct.auth_master*)* @xfr_create_ixfr_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_create_ixfr_packet(%struct.auth_xfer* %0, i32* %1, i32 %2, %struct.auth_master* %3) #0 {
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auth_master*, align 8
  %9 = alloca %struct.query_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.auth_master* %3, %struct.auth_master** %8, align 8
  %13 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %14 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %17 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = call i32 @memset(%struct.query_info* %9, i32 0, i32 24)
  %20 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %21 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %25 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %29 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %33 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %37 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %41 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %45 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %49 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %4
  %53 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %54 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %61 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %59, %52, %4
  %65 = load i64, i64* @LDNS_RR_TYPE_AXFR, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %68 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %72 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %64, %59
  %76 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %77 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @qinfo_query_encode(i32* %80, %struct.query_info* %9)
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @sldns_buffer_write_u16_at(i32* %82, i32 0, i32 %83)
  %85 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %132

89:                                               ; preds = %75
  %90 = load i32*, i32** %6, align 8
  %91 = call i64 @sldns_buffer_limit(i32* %90)
  store i64 %91, i64* %12, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @sldns_buffer_clear(i32* %92)
  %94 = load i32*, i32** %6, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @sldns_buffer_set_position(i32* %94, i64 %95)
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @LDNS_NSCOUNT_OFF, align 4
  %99 = call i32 @sldns_buffer_write_u16_at(i32* %97, i32 %98, i32 1)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @sldns_buffer_write_u8(i32* %100, i32 192)
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @sldns_buffer_write_u8(i32* %102, i32 12)
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %106 = call i32 @sldns_buffer_write_u16(i32* %104, i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @sldns_buffer_write_u16(i32* %107, i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @sldns_buffer_write_u32(i32* %111, i32 0)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @sldns_buffer_write_u16(i32* %113, i32 22)
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @sldns_buffer_write_u8(i32* %115, i32 0)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @sldns_buffer_write_u8(i32* %117, i32 0)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @sldns_buffer_write_u32(i32* %119, i32 %120)
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @sldns_buffer_write_u32(i32* %122, i32 0)
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @sldns_buffer_write_u32(i32* %124, i32 0)
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @sldns_buffer_write_u32(i32* %126, i32 0)
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @sldns_buffer_write_u32(i32* %128, i32 0)
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @sldns_buffer_flip(i32* %130)
  br label %132

132:                                              ; preds = %89, %75
  ret void
}

declare dso_local i32 @memset(%struct.query_info*, i32, i32) #1

declare dso_local i32 @qinfo_query_encode(i32*, %struct.query_info*) #1

declare dso_local i32 @sldns_buffer_write_u16_at(i32*, i32, i32) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i32 @sldns_buffer_write_u8(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write_u32(i32*, i32) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
