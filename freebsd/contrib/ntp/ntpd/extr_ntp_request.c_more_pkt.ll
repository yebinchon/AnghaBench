; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_more_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_more_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.pkt = type { i32 }

@usingexbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"request: sending pkt\0A\00", align 1
@RESP_BIT = common dso_local global i32 0, align 4
@MORE_BIT = common dso_local global i32 0, align 4
@reqver = common dso_local global i32 0, align 4
@rpkt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@seqno = common dso_local global i64 0, align 8
@nitems = common dso_local global i64 0, align 8
@toaddr = common dso_local global i32 0, align 4
@frominter = common dso_local global i32 0, align 4
@RESP_HEADER_SIZE = common dso_local global i64 0, align 8
@databytes = common dso_local global i64 0, align 8
@numresppkts = common dso_local global i32 0, align 4
@exbuf = common dso_local global i8* null, align 8
@itemsize = common dso_local global i64 0, align 8
@RESP_DATA_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"request: giving him more data\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"request: into extra buffer\0A\00", align 1
@MAXSEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @more_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @more_pkt() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @usingexbuf, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %0
  %5 = call i32 @DPRINTF(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @RESP_BIT, align 4
  %7 = load i32, i32* @MORE_BIT, align 4
  %8 = load i32, i32* @reqver, align 4
  %9 = call i32 @RM_VN_MODE(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpkt, i32 0, i32 3), align 8
  %10 = load i64, i64* @seqno, align 8
  %11 = call i32 @AUTH_SEQ(i32 0, i64 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpkt, i32 0, i32 2), align 4
  %12 = load i64, i64* @nitems, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @htons(i32 %13)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpkt, i32 0, i32 1), align 8
  %15 = load i32, i32* @toaddr, align 4
  %16 = load i32, i32* @frominter, align 4
  %17 = load i64, i64* @RESP_HEADER_SIZE, align 8
  %18 = load i64, i64* @databytes, align 8
  %19 = add i64 %17, %18
  %20 = call i32 @sendpkt(i32 %15, i32 %16, i32 -1, %struct.pkt* bitcast (%struct.TYPE_4__* @rpkt to %struct.pkt*), i64 %19)
  %21 = load i32, i32* @numresppkts, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @numresppkts, align 4
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpkt, i32 0, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8*, i8** @exbuf, align 8
  %26 = load i64, i64* @itemsize, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy(i8* %24, i8* %25, i32 %27)
  %29 = load i64, i64* @seqno, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @seqno, align 8
  store i64 0, i64* @databytes, align 8
  store i64 0, i64* @nitems, align 8
  store i32 0, i32* @usingexbuf, align 4
  br label %31

31:                                               ; preds = %4, %0
  %32 = load i64, i64* @itemsize, align 8
  %33 = load i64, i64* @databytes, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* @databytes, align 8
  %35 = load i64, i64* @nitems, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @nitems, align 8
  %37 = load i64, i64* @databytes, align 8
  %38 = load i64, i64* @itemsize, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* @RESP_DATA_SIZE, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = call i32 @DPRINTF(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rpkt, i32 0, i32 0, i32 0), align 8
  %45 = load i64, i64* @databytes, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %1, align 8
  br label %55

47:                                               ; preds = %31
  %48 = call i32 @DPRINTF(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i64, i64* @seqno, align 8
  %50 = load i64, i64* @MAXSEQ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* null, i8** %1, align 8
  br label %55

53:                                               ; preds = %47
  store i32 1, i32* @usingexbuf, align 4
  %54 = load i8*, i8** @exbuf, align 8
  store i8* %54, i8** %1, align 8
  br label %55

55:                                               ; preds = %53, %52, %42
  %56 = load i8*, i8** %1, align 8
  ret i8* %56
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @RM_VN_MODE(i32, i32, i32) #1

declare dso_local i32 @AUTH_SEQ(i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sendpkt(i32, i32, i32, %struct.pkt*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
