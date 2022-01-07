; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_flush_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_flush_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.req_pkt = type { i32 }
%struct.pkt = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"request: flushing packet, %d items\0A\00", align 1
@nitems = common dso_local global i64 0, align 8
@seqno = common dso_local global i64 0, align 8
@toaddr = common dso_local global i32 0, align 4
@frominter = common dso_local global i32 0, align 4
@rpkt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@INFO_ERR_NODATA = common dso_local global i32 0, align 4
@RESP_BIT = common dso_local global i32 0, align 4
@reqver = common dso_local global i32 0, align 4
@RESP_HEADER_SIZE = common dso_local global i64 0, align 8
@databytes = common dso_local global i64 0, align 8
@numresppkts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_pkt() #0 {
  %1 = load i64, i64* @nitems, align 8
  %2 = inttoptr i64 %1 to i8*
  %3 = call i32 @DPRINTF(i32 3, i8* %2)
  %4 = load i64, i64* @seqno, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i64, i64* @nitems, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* @toaddr, align 4
  %11 = load i32, i32* @frominter, align 4
  %12 = load i32, i32* @INFO_ERR_NODATA, align 4
  %13 = call i32 @req_ack(i32 %10, i32 %11, %struct.req_pkt* bitcast (%struct.TYPE_2__* @rpkt to %struct.req_pkt*), i32 %12)
  br label %31

14:                                               ; preds = %6, %0
  %15 = load i32, i32* @RESP_BIT, align 4
  %16 = load i32, i32* @reqver, align 4
  %17 = call i32 @RM_VN_MODE(i32 %15, i32 0, i32 %16)
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 2), align 4
  %18 = load i64, i64* @seqno, align 8
  %19 = call i32 @AUTH_SEQ(i32 0, i64 %18)
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 1), align 4
  %20 = load i64, i64* @nitems, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @htons(i32 %21)
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 4
  %23 = load i32, i32* @toaddr, align 4
  %24 = load i32, i32* @frominter, align 4
  %25 = load i64, i64* @RESP_HEADER_SIZE, align 8
  %26 = load i64, i64* @databytes, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @sendpkt(i32 %23, i32 %24, i32 -1, %struct.pkt* bitcast (%struct.TYPE_2__* @rpkt to %struct.pkt*), i64 %27)
  %29 = load i32, i32* @numresppkts, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @numresppkts, align 4
  br label %31

31:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @req_ack(i32, i32, %struct.req_pkt*, i32) #1

declare dso_local i32 @RM_VN_MODE(i32, i32, i32) #1

declare dso_local i32 @AUTH_SEQ(i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sendpkt(i32, i32, i32, %struct.pkt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
