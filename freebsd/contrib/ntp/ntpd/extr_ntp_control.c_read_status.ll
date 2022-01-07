; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_read_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.peer = type { i32, %struct.peer*, i64 }
%struct.recvbuf = type { i32 }

@CTL_MAX_DATA_LEN = common dso_local global i32 0, align 4
@res_associd = common dso_local global i32 0, align 4
@CERR_BADASSOC = common dso_local global i32 0, align 4
@rpkt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@res_authokay = common dso_local global i64 0, align 8
@def_peer_var = common dso_local global i64* null, align 8
@peer_list = common dso_local global %struct.peer* null, align 8
@debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recvbuf*, i32)* @read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_status(%struct.recvbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.recvbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.peer*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.recvbuf* %0, %struct.recvbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @CTL_MAX_DATA_LEN, align 4
  %12 = sext i32 %11 to i64
  %13 = udiv i64 %12, 8
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @res_associd, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load i32, i32* @res_associd, align 4
  %20 = call %struct.peer* @findpeerbyassoc(i32 %19)
  store %struct.peer* %20, %struct.peer** %5, align 8
  %21 = load %struct.peer*, %struct.peer** %5, align 8
  %22 = icmp eq %struct.peer* null, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @CERR_BADASSOC, align 4
  %25 = call i32 @ctl_error(i32 %24)
  store i32 1, i32* %10, align 4
  br label %97

26:                                               ; preds = %18
  %27 = load %struct.peer*, %struct.peer** %5, align 8
  %28 = call i32 @ctlpeerstatus(%struct.peer* %27)
  %29 = call i8* @htons(i32 %28)
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 8
  %30 = load i64, i64* @res_authokay, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.peer*, %struct.peer** %5, align 8
  %34 = getelementptr inbounds %struct.peer, %struct.peer* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i64*, i64** @def_peer_var, align 8
  store i64* %36, i64** %6, align 8
  br label %37

37:                                               ; preds = %47, %35
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.peer*, %struct.peer** %5, align 8
  %46 = call i32 @ctl_putpeer(i32 %44, %struct.peer* %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %6, align 8
  br label %37

50:                                               ; preds = %37
  %51 = call i32 @ctl_flushpkt(i32 0)
  store i32 1, i32* %10, align 4
  br label %97

52:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  %53 = call i32 (...) @ctlsysstatus()
  %54 = call i8* @htons(i32 %53)
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 8
  %55 = load %struct.peer*, %struct.peer** @peer_list, align 8
  store %struct.peer* %55, %struct.peer** %5, align 8
  br label %56

56:                                               ; preds = %83, %52
  %57 = load %struct.peer*, %struct.peer** %5, align 8
  %58 = icmp ne %struct.peer* %57, null
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = load %struct.peer*, %struct.peer** %5, align 8
  %61 = getelementptr inbounds %struct.peer, %struct.peer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @htons(i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %7, align 8
  %66 = getelementptr inbounds i8*, i8** %15, i64 %64
  store i8* %63, i8** %66, align 8
  %67 = load %struct.peer*, %struct.peer** %5, align 8
  %68 = call i32 @ctlpeerstatus(%struct.peer* %67)
  %69 = call i8* @htons(i32 %68)
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  %72 = getelementptr inbounds i8*, i8** %15, i64 %70
  store i8* %69, i8** %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  %75 = call i64 @COUNTOF(i8** %15)
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %59
  %78 = bitcast i8** %15 to i8*
  %79 = load i64, i64* %7, align 8
  %80 = mul i64 %79, 8
  %81 = call i32 @ctl_putdata(i8* %78, i64 %80, i32 1)
  store i64 0, i64* %7, align 8
  br label %82

82:                                               ; preds = %77, %59
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.peer*, %struct.peer** %5, align 8
  %85 = getelementptr inbounds %struct.peer, %struct.peer* %84, i32 0, i32 1
  %86 = load %struct.peer*, %struct.peer** %85, align 8
  store %struct.peer* %86, %struct.peer** %5, align 8
  br label %56

87:                                               ; preds = %56
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = bitcast i8** %15 to i8*
  %92 = load i64, i64* %7, align 8
  %93 = mul i64 %92, 8
  %94 = call i32 @ctl_putdata(i8* %91, i64 %93, i32 1)
  br label %95

95:                                               ; preds = %90, %87
  %96 = call i32 @ctl_flushpkt(i32 0)
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %50, %23
  %98 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %10, align 4
  switch i32 %99, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %97, %97
  ret void

101:                                              ; preds = %97
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.peer* @findpeerbyassoc(i32) #2

declare dso_local i32 @ctl_error(i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @ctlpeerstatus(%struct.peer*) #2

declare dso_local i32 @ctl_putpeer(i32, %struct.peer*) #2

declare dso_local i32 @ctl_flushpkt(i32) #2

declare dso_local i32 @ctlsysstatus(...) #2

declare dso_local i64 @COUNTOF(i8**) #2

declare dso_local i32 @ctl_putdata(i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
