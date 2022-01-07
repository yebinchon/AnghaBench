; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_listen_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_listen_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i32, i64, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Driver ended Listen state (freq=%u)\00", align 1
@P2P_WAIT_PEER_CONNECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"Listen operation did not seem to start - delay idle phase to avoid busy loop\00", align 1
@P2P_CONNECT_LISTEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"Timeout on sending GO Negotiation Request without getting response\00", align 1
@P2P_CONNECT = common dso_local global i32 0, align 4
@P2P_SEARCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"p2p_scan already in progress - do not try to start a new one\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"Listen operation did not seem to start - delay search phase to avoid busy loop\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Delay search operation by %u ms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_listen_end(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %10 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %12 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

16:                                               ; preds = %2
  %17 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %18 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @P2P_WAIT_PEER_CONNECT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %24 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %29 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %34 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %33, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %36 = call i32 @p2p_set_timeout(%struct.p2p_data* %35, i32 0, i32 100000)
  store i32 1, i32* %3, align 4
  br label %120

37:                                               ; preds = %27, %22, %16
  %38 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %39 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @P2P_CONNECT_LISTEN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %45 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %50 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 120
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %57 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %56, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %59 = call i32 @p2p_go_neg_failed(%struct.p2p_data* %58, i32 -1)
  store i32 0, i32* %3, align 4
  br label %120

60:                                               ; preds = %48
  %61 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %62 = load i32, i32* @P2P_CONNECT, align 4
  %63 = call i32 @p2p_set_state(%struct.p2p_data* %61, i32 %62)
  %64 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %65 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 @p2p_connect_send(%struct.p2p_data* %64, %struct.TYPE_2__* %67)
  store i32 1, i32* %3, align 4
  br label %120

69:                                               ; preds = %43, %37
  %70 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %71 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @P2P_SEARCH, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %69
  %76 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %77 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %82 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %81, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %120

83:                                               ; preds = %75
  %84 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %85 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %90 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %89, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %92 = call i32 @p2p_set_timeout(%struct.p2p_data* %91, i32 0, i32 100000)
  store i32 1, i32* %3, align 4
  br label %120

93:                                               ; preds = %83
  %94 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %95 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %100 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %101 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %105 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %106 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %107, 1000
  %109 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %110 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = srem i32 %111, 1000
  %113 = mul nsw i32 %112, 1000
  %114 = call i32 @p2p_set_timeout(%struct.p2p_data* %104, i32 %108, i32 %113)
  store i32 1, i32* %3, align 4
  br label %120

115:                                              ; preds = %93
  %116 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %117 = call i32 @p2p_search(%struct.p2p_data* %116)
  store i32 1, i32* %3, align 4
  br label %120

118:                                              ; preds = %69
  br label %119

119:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %115, %98, %88, %80, %60, %55, %32, %15
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

declare dso_local i32 @p2p_go_neg_failed(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_connect_send(%struct.p2p_data*, %struct.TYPE_2__*) #1

declare dso_local i32 @p2p_search(%struct.p2p_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
