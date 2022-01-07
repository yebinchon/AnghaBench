; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_clear_nameservers_and_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_clear_nameservers_and_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32, i64, %struct.request**, %struct.TYPE_2__*, i32, i64, %struct.nameserver* }
%struct.request = type { i64, i64, i32, i32*, i64, i64, %struct.request* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.nameserver = type { i64, i32*, i32, i32, i32, %struct.nameserver* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_base_clear_nameservers_and_suspend(%struct.evdns_base* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evdns_base*, align 8
  %4 = alloca %struct.nameserver*, align 8
  %5 = alloca %struct.nameserver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nameserver*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.request*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %3, align 8
  %11 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %12 = call i32 @EVDNS_LOCK(%struct.evdns_base* %11)
  %13 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %14 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %13, i32 0, i32 6
  %15 = load %struct.nameserver*, %struct.nameserver** %14, align 8
  store %struct.nameserver* %15, %struct.nameserver** %4, align 8
  %16 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %17 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %16, i32 0, i32 6
  %18 = load %struct.nameserver*, %struct.nameserver** %17, align 8
  store %struct.nameserver* %18, %struct.nameserver** %5, align 8
  %19 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %20 = icmp ne %struct.nameserver* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %23 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %22)
  store i32 0, i32* %2, align 4
  br label %149

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %72
  %26 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %27 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %26, i32 0, i32 5
  %28 = load %struct.nameserver*, %struct.nameserver** %27, align 8
  store %struct.nameserver* %28, %struct.nameserver** %7, align 8
  %29 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %30 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %29, i32 0, i32 4
  %31 = call i32 @event_del(i32* %30)
  %32 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %33 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %32, i32 0, i32 3
  %34 = call i64 @evtimer_initialized(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %38 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %37, i32 0, i32 3
  %39 = call i32 @evtimer_del(i32* %38)
  br label %40

40:                                               ; preds = %36, %25
  %41 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %42 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %47 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %50 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @evdns_cancel_request(i32 %48, i32* %51)
  %53 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %54 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %45, %40
  %56 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %57 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %62 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @evutil_closesocket(i64 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %67 = call i32 @mm_free(%struct.nameserver* %66)
  %68 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  %69 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  %70 = icmp eq %struct.nameserver* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %74

72:                                               ; preds = %65
  %73 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  store %struct.nameserver* %73, %struct.nameserver** %4, align 8
  br label %25

74:                                               ; preds = %71
  %75 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %76 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %75, i32 0, i32 6
  store %struct.nameserver* null, %struct.nameserver** %76, align 8
  %77 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %78 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %141, %74
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %82 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %144

85:                                               ; preds = %79
  %86 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %87 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %86, i32 0, i32 2
  %88 = load %struct.request**, %struct.request*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.request*, %struct.request** %88, i64 %90
  %92 = load %struct.request*, %struct.request** %91, align 8
  store %struct.request* %92, %struct.request** %9, align 8
  store %struct.request* %92, %struct.request** %8, align 8
  br label %93

93:                                               ; preds = %132, %85
  %94 = load %struct.request*, %struct.request** %8, align 8
  %95 = icmp ne %struct.request* %94, null
  br i1 %95, label %96, label %134

96:                                               ; preds = %93
  %97 = load %struct.request*, %struct.request** %8, align 8
  %98 = getelementptr inbounds %struct.request, %struct.request* %97, i32 0, i32 6
  %99 = load %struct.request*, %struct.request** %98, align 8
  store %struct.request* %99, %struct.request** %10, align 8
  %100 = load %struct.request*, %struct.request** %8, align 8
  %101 = getelementptr inbounds %struct.request, %struct.request* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load %struct.request*, %struct.request** %8, align 8
  %103 = getelementptr inbounds %struct.request, %struct.request* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.request*, %struct.request** %8, align 8
  %105 = getelementptr inbounds %struct.request, %struct.request* %104, i32 0, i32 3
  store i32* null, i32** %105, align 8
  %106 = load %struct.request*, %struct.request** %8, align 8
  %107 = getelementptr inbounds %struct.request, %struct.request* %106, i32 0, i32 2
  %108 = call i32 @evtimer_del(i32* %107)
  %109 = load %struct.request*, %struct.request** %8, align 8
  %110 = getelementptr inbounds %struct.request, %struct.request* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.request*, %struct.request** %8, align 8
  %112 = getelementptr inbounds %struct.request, %struct.request* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %114 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.request*, %struct.request** %8, align 8
  %118 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %119 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %118, i32 0, i32 3
  %120 = call i32 @evdns_request_insert(%struct.request* %117, %struct.TYPE_2__** %119)
  %121 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %122 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %127 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %126, i32 0, i32 3
  store %struct.TYPE_2__* %125, %struct.TYPE_2__** %127, align 8
  %128 = load %struct.request*, %struct.request** %10, align 8
  %129 = load %struct.request*, %struct.request** %9, align 8
  %130 = icmp eq %struct.request* %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %96
  br label %134

132:                                              ; preds = %96
  %133 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %133, %struct.request** %8, align 8
  br label %93

134:                                              ; preds = %131, %93
  %135 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %136 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %135, i32 0, i32 2
  %137 = load %struct.request**, %struct.request*** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.request*, %struct.request** %137, i64 %139
  store %struct.request* null, %struct.request** %140, align 8
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %79

144:                                              ; preds = %79
  %145 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %146 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %148 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %144, %21
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i64 @evtimer_initialized(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @evdns_cancel_request(i32, i32*) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @mm_free(%struct.nameserver*) #1

declare dso_local i32 @evdns_request_insert(%struct.request*, %struct.TYPE_2__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
