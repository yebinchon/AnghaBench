; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_probe_req_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_probe_req_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Probe Response is offloaded, do not reply Probe Request\00", align 1
@P2P_PREQ_PROCESSED = common dso_local global i32 0, align 4
@P2P_PREQ_NOT_PROCESSED = common dso_local global i32 0, align 4
@P2P_CONNECT = common dso_local global i64 0, align 8
@P2P_CONNECT_LISTEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@P2P_DEV_WAIT_GO_NEG_CONFIRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Found GO Negotiation peer - try to start GO negotiation from timeout\00", align 1
@p2p_go_neg_start = common dso_local global i32 0, align 4
@P2P_INVITE = common dso_local global i64 0, align 8
@P2P_INVITE_LISTEN = common dso_local global i64 0, align 8
@P2P_DEV_WAIT_INV_REQ_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Found Invite peer - try to start Invite from timeout\00", align 1
@p2p_invite_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_probe_req_rx(%struct.p2p_data* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.p2p_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i64, i64* %15, align 8
  %23 = call i32 @p2p_add_dev_from_probe_req(%struct.p2p_data* %19, i32* %20, i32* %21, i64 %22)
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %8
  %27 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %28 = call i32 @p2p_dbg(%struct.p2p_data* %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @P2P_PREQ_PROCESSED, align 4
  store i32 %29, i32* %9, align 4
  br label %144

30:                                               ; preds = %8
  %31 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @p2p_reply_probe(%struct.p2p_data* %31, i32* %32, i32* %33, i32* %34, i32* %35, i64 %36, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* @P2P_PREQ_PROCESSED, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @P2P_PREQ_NOT_PROCESSED, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %9, align 4
  br label %144

48:                                               ; preds = %42, %30
  %49 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %50 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @P2P_CONNECT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %56 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @P2P_CONNECT_LISTEN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %54, %48
  %61 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %62 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %68 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i64 @os_memcmp(i32* %66, i32 %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %65
  %77 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %78 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @P2P_DEV_WAIT_GO_NEG_CONFIRM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %76
  %86 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %87 = call i32 @p2p_dbg(%struct.p2p_data* %86, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @p2p_go_neg_start, align 4
  %89 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %90 = call i32 @eloop_cancel_timeout(i32 %88, %struct.p2p_data* %89, i32* null)
  %91 = load i32, i32* @p2p_go_neg_start, align 4
  %92 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %93 = call i32 @eloop_register_timeout(i32 0, i32 0, i32 %91, %struct.p2p_data* %92, i32* null)
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %9, align 4
  br label %144

95:                                               ; preds = %76, %65, %60, %54
  %96 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %97 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @P2P_INVITE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %103 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @P2P_INVITE_LISTEN, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %142

107:                                              ; preds = %101, %95
  %108 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %109 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = icmp ne %struct.TYPE_8__* %110, null
  br i1 %111, label %112, label %142

112:                                              ; preds = %107
  %113 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %114 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @P2P_DEV_WAIT_INV_REQ_ACK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %112
  %122 = load i32*, i32** %11, align 8
  %123 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %124 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ETH_ALEN, align 4
  %130 = call i64 @os_memcmp(i32* %122, i32 %128, i32 %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %121
  %133 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %134 = call i32 @p2p_dbg(%struct.p2p_data* %133, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @p2p_invite_start, align 4
  %136 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %137 = call i32 @eloop_cancel_timeout(i32 %135, %struct.p2p_data* %136, i32* null)
  %138 = load i32, i32* @p2p_invite_start, align 4
  %139 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %140 = call i32 @eloop_register_timeout(i32 0, i32 0, i32 %138, %struct.p2p_data* %139, i32* null)
  %141 = load i32, i32* %18, align 4
  store i32 %141, i32* %9, align 4
  br label %144

142:                                              ; preds = %121, %112, %107, %101
  %143 = load i32, i32* %18, align 4
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %142, %132, %85, %46, %26
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i32 @p2p_add_dev_from_probe_req(%struct.p2p_data*, i32*, i32*, i64) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_reply_probe(%struct.p2p_data*, i32*, i32*, i32*, i32*, i64, i32) #1

declare dso_local i64 @os_memcmp(i32*, i32, i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.p2p_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.p2p_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
