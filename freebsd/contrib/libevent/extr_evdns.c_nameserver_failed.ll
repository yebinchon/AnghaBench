; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_nameserver_failed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_nameserver_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i32, i32, i32, i64, %struct.evdns_base* }
%struct.evdns_base = type { i64, i32, %struct.request**, i32 }
%struct.request = type { i64, %struct.request*, %struct.nameserver* }
%struct.sockaddr = type { i32 }

@EVDNS_LOG_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Nameserver %s has failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"All nameservers have failed\00", align 1
@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Error from libevent when adding timer event for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameserver*, i8*)* @nameserver_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameserver_failed(%struct.nameserver* %0, i8* %1) #0 {
  %3 = alloca %struct.nameserver*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.evdns_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  store %struct.nameserver* %0, %struct.nameserver** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %11 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %10, i32 0, i32 4
  %12 = load %struct.evdns_base*, %struct.evdns_base** %11, align 8
  store %struct.evdns_base* %12, %struct.evdns_base** %7, align 8
  %13 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %14 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %13)
  %15 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %16 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %118

20:                                               ; preds = %2
  %21 = load i32, i32* @EVDNS_LOG_MSG, align 4
  %22 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %23 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %22, i32 0, i32 1
  %24 = bitcast i32* %23 to %struct.sockaddr*
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %26 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %24, i8* %25, i32 128)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i8*, ...) @log(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  %29 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %30 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %34 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @EVUTIL_ASSERT(i32 %37)
  %39 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %40 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %20
  %44 = load i32, i32* @EVDNS_LOG_MSG, align 4
  %45 = call i32 (i32, i8*, ...) @log(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %20
  %47 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %48 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %50 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %52 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %51, i32 0, i32 2
  %53 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %54 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %53, i32 0, i32 3
  %55 = call i64 @evtimer_add(i32* %52, i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %59 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %60 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %59, i32 0, i32 1
  %61 = bitcast i32* %60 to %struct.sockaddr*
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %63 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %61, i8* %62, i32 128)
  %64 = call i32 (i32, i8*, ...) @log(i32 %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57, %46
  %66 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %67 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %118

71:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %115, %71
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %75 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %72
  %79 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %80 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %79, i32 0, i32 2
  %81 = load %struct.request**, %struct.request*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.request*, %struct.request** %81, i64 %83
  %85 = load %struct.request*, %struct.request** %84, align 8
  store %struct.request* %85, %struct.request** %6, align 8
  store %struct.request* %85, %struct.request** %5, align 8
  %86 = load %struct.request*, %struct.request** %5, align 8
  %87 = icmp ne %struct.request* %86, null
  br i1 %87, label %88, label %114

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %109, %88
  %90 = load %struct.request*, %struct.request** %5, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.request*, %struct.request** %5, align 8
  %96 = getelementptr inbounds %struct.request, %struct.request* %95, i32 0, i32 2
  %97 = load %struct.nameserver*, %struct.nameserver** %96, align 8
  %98 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %99 = icmp eq %struct.nameserver* %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.request*, %struct.request** %5, align 8
  %102 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %103 = call i32 @nameserver_pick(%struct.evdns_base* %102)
  %104 = call i32 @request_swap_ns(%struct.request* %101, i32 %103)
  br label %105

105:                                              ; preds = %100, %94, %89
  %106 = load %struct.request*, %struct.request** %5, align 8
  %107 = getelementptr inbounds %struct.request, %struct.request* %106, i32 0, i32 1
  %108 = load %struct.request*, %struct.request** %107, align 8
  store %struct.request* %108, %struct.request** %5, align 8
  br label %109

109:                                              ; preds = %105
  %110 = load %struct.request*, %struct.request** %5, align 8
  %111 = load %struct.request*, %struct.request** %6, align 8
  %112 = icmp ne %struct.request* %110, %111
  br i1 %112, label %89, label %113

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %78
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %72

118:                                              ; preds = %19, %70, %72
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i64 @evtimer_add(i32*, i32*) #1

declare dso_local i32 @request_swap_ns(%struct.request*, i32) #1

declare dso_local i32 @nameserver_pick(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
