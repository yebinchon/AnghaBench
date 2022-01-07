; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i64, i64, i32, i32, %struct.peer* }
%struct.recvbuf = type { i64, %struct.pkt, i32 }
%struct.pkt = type { i32 }

@findpeer_calls = common dso_local global i32 0, align 4
@peer_hash = common dso_local global %struct.peer** null, align 8
@MODE_BCLIENT = common dso_local global i64 0, align 8
@MODE_SERVER = common dso_local global i32 0, align 4
@AM_PROCPKT = common dso_local global i32 0, align 4
@AM_ERR = common dso_local global i32 0, align 4
@AM_NOMATCH = common dso_local global i32 0, align 4
@NO_PEER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.peer* @findpeer(%struct.recvbuf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.peer*, align 8
  %5 = alloca %struct.recvbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.peer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pkt*, align 8
  %12 = alloca i32, align 4
  store %struct.recvbuf* %0, %struct.recvbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @findpeer_calls, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @findpeer_calls, align 4
  %15 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %16 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %15, i32 0, i32 2
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i64 @NTP_HASH_ADDR(i32* %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.peer**, %struct.peer*** @peer_hash, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.peer*, %struct.peer** %19, i64 %20
  %22 = load %struct.peer*, %struct.peer** %21, align 8
  store %struct.peer* %22, %struct.peer** %8, align 8
  br label %23

23:                                               ; preds = %94, %3
  %24 = load %struct.peer*, %struct.peer** %8, align 8
  %25 = icmp ne %struct.peer* %24, null
  br i1 %25, label %26, label %98

26:                                               ; preds = %23
  %27 = load %struct.peer*, %struct.peer** %8, align 8
  %28 = getelementptr inbounds %struct.peer, %struct.peer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MODE_BCLIENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.peer*, %struct.peer** %8, align 8
  %34 = getelementptr inbounds %struct.peer, %struct.peer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %37 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %94

41:                                               ; preds = %32, %26
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.peer*, %struct.peer** %8, align 8
  %44 = getelementptr inbounds %struct.peer, %struct.peer* %43, i32 0, i32 3
  %45 = call i32 @ADDR_PORT_EQ(i32* %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %94

48:                                               ; preds = %41
  %49 = load %struct.peer*, %struct.peer** %8, align 8
  %50 = getelementptr inbounds %struct.peer, %struct.peer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @MATCH_ASSOC(i64 %51, i32 %52)
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @MODE_SERVER, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %48
  %59 = load i32, i32* @AM_PROCPKT, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %65 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %64, i32 0, i32 1
  store %struct.pkt* %65, %struct.pkt** %11, align 8
  %66 = load %struct.pkt*, %struct.pkt** %11, align 8
  %67 = getelementptr inbounds %struct.pkt, %struct.pkt* %66, i32 0, i32 0
  %68 = call i32 @NTOHL_FP(i32* %67, i32* %12)
  %69 = load %struct.peer*, %struct.peer** %8, align 8
  %70 = getelementptr inbounds %struct.peer, %struct.peer* %69, i32 0, i32 2
  %71 = call i32 @L_ISEQU(i32* %70, i32* %12)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %75 = call i64 @findmanycastpeer(%struct.recvbuf* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @AM_ERR, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %73, %63
  br label %81

81:                                               ; preds = %80, %58, %48
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AM_ERR, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store %struct.peer* null, %struct.peer** %4, align 8
  br label %108

87:                                               ; preds = %81
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AM_NOMATCH, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %98

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %47, %40
  %95 = load %struct.peer*, %struct.peer** %8, align 8
  %96 = getelementptr inbounds %struct.peer, %struct.peer* %95, i32 0, i32 4
  %97 = load %struct.peer*, %struct.peer** %96, align 8
  store %struct.peer* %97, %struct.peer** %8, align 8
  br label %23

98:                                               ; preds = %92, %23
  %99 = load %struct.peer*, %struct.peer** %8, align 8
  %100 = icmp eq %struct.peer* null, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i64, i64* @NO_PEER, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @MATCH_ASSOC(i64 %102, i32 %103)
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %98
  %107 = load %struct.peer*, %struct.peer** %8, align 8
  store %struct.peer* %107, %struct.peer** %4, align 8
  br label %108

108:                                              ; preds = %106, %86
  %109 = load %struct.peer*, %struct.peer** %4, align 8
  ret %struct.peer* %109
}

declare dso_local i64 @NTP_HASH_ADDR(i32*) #1

declare dso_local i32 @ADDR_PORT_EQ(i32*, i32*) #1

declare dso_local i32 @MATCH_ASSOC(i64, i32) #1

declare dso_local i32 @NTOHL_FP(i32*, i32*) #1

declare dso_local i32 @L_ISEQU(i32*, i32*) #1

declare dso_local i64 @findmanycastpeer(%struct.recvbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
