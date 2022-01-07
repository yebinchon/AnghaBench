; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_udp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_udp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EDNS lookup known=%d vs=%d\00", align 1
@serviced_initial = common dso_local global i64 0, align 8
@serviced_query_UDP_EDNS = common dso_local global i64 0, align 8
@serviced_query_UDP = common dso_local global i64 0, align 8
@serviced_query_UDP_EDNS_FRAG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"serviced query UDP timeout=%d msec\00", align 1
@serviced_udp_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serviced_query*, i32*)* @serviced_udp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serviced_udp_send(%struct.serviced_query* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serviced_query*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.serviced_query* %0, %struct.serviced_query** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %11 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %17 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %22 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %21, i32 0, i32 9
  %23 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %24 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %27 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %30 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @infra_host(i32 %20, i32* %22, i32 %25, i32 %28, i32 %31, i32 %32, i32* %7, i64* %8, i32* %6)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %39 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @VERB_ALGO, align 4
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, i32, ...) @verbose(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %46 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @serviced_initial, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %36
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %55 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %56 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %61

57:                                               ; preds = %50
  %58 = load i64, i64* @serviced_query_UDP, align 8
  %59 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %60 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %66 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %72 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @serviced_query_UDP_EDNS_FRAG, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %70, %62
  %77 = phi i1 [ true, %62 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @serviced_encode(%struct.serviced_query* %63, i32* %64, i32 %78)
  %80 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %81 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %87 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load i64, i64* %8, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %91 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @VERB_ALGO, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i32, i8*, i32, ...) @verbose(i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @serviced_udp_callback, align 4
  %99 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %100 = call i32 @pending_udp_query(%struct.serviced_query* %95, i32* %96, i32 %97, i32 %98, %struct.serviced_query* %99)
  %101 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %102 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %104 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  br label %109

108:                                              ; preds = %76
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %107, %35
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @infra_host(i32, i32*, i32, i32, i32, i32, i32*, i64*, i32*) #1

declare dso_local i32 @verbose(i32, i8*, i32, ...) #1

declare dso_local i32 @serviced_encode(%struct.serviced_query*, i32*, i32) #1

declare dso_local i32 @pending_udp_query(%struct.serviced_query*, i32*, i32, i32, %struct.serviced_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
