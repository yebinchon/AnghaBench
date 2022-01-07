; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_tcp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_tcp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serviced_query = type { i32, i64, i32*, i64, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32 }

@serviced_query_TCP_EDNS = common dso_local global i64 0, align 8
@serviced_query_TCP = common dso_local global i64 0, align 8
@UNKNOWN_SERVER_NICENESS = common dso_local global i32 0, align 4
@TCP_AUTH_QUERY_TIMEOUT = common dso_local global i32 0, align 4
@serviced_tcp_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serviced_query*, i32*)* @serviced_tcp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serviced_tcp_send(%struct.serviced_query* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serviced_query*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serviced_query* %0, %struct.serviced_query** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %11 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %16 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %15, i32 0, i32 10
  %17 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %18 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %21 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %24 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %27 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @infra_host(i32 %14, i32* %16, i32 %19, i32 %22, i32 %25, i32 %31, i32* %6, i32* %9, i32* %7)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %38 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @serviced_query_TCP_EDNS, align 8
  %43 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %44 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %49

45:                                               ; preds = %35
  %46 = load i64, i64* @serviced_query_TCP, align 8
  %47 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %48 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %53 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @serviced_query_TCP_EDNS, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @serviced_encode(%struct.serviced_query* %50, i32* %51, i32 %57)
  %59 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %60 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %66 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %68 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %49
  %72 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %73 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71, %49
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @UNKNOWN_SERVER_NICENESS, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @TCP_AUTH_QUERY_TIMEOUT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @TCP_AUTH_QUERY_TIMEOUT, align 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %81, %76
  br label %90

88:                                               ; preds = %71
  %89 = load i32, i32* @TCP_AUTH_QUERY_TIMEOUT, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @serviced_tcp_callback, align 4
  %95 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %96 = call i32* @pending_tcp_query(%struct.serviced_query* %91, i32* %92, i32 %93, i32 %94, %struct.serviced_query* %95)
  %97 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %98 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %97, i32 0, i32 2
  store i32* %96, i32** %98, align 8
  %99 = load %struct.serviced_query*, %struct.serviced_query** %4, align 8
  %100 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %90, %34
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @infra_host(i32, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @serviced_encode(%struct.serviced_query*, i32*, i32) #1

declare dso_local i32* @pending_tcp_query(%struct.serviced_query*, i32*, i32, i32, %struct.serviced_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
