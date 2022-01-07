; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_tcp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_tcp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.timeval = type { i32, i32 }

@LDNS_STATUS_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, %struct.TYPE_4__*)* @ldns_tcp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ldns_tcp_read(i32** %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %16, i64* %3, align 8
  br label %73

17:                                               ; preds = %2
  %18 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = call i32 @ldns_resolver_timeout(%struct.TYPE_4__* %22)
  %24 = call i32* @ldns_tcp_read_wire_timeout(i64 %21, i64* %10, i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %65

28:                                               ; preds = %17
  %29 = load i32**, i32*** %4, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @ldns_wire2pkt(i32** %29, i32* %30, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @free(i32* %33)
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @LDNS_STATUS_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %65

39:                                               ; preds = %28
  %40 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %41 = load i32**, i32*** %4, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %44, %46
  %48 = mul nsw i32 %47, 1000
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %51, %53
  %55 = sdiv i32 %54, 1000
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %49, %56
  %58 = call i32 @ldns_pkt_set_querytime(i32* %42, i64 %57)
  %59 = load i32**, i32*** %4, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast %struct.timeval* %8 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i32 @ldns_pkt_set_timestamp(i32* %60, i64 %62)
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %73

65:                                               ; preds = %38, %27
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @close(i64 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* @LDNS_STATUS_ERR, align 8
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %65, %39, %15
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32* @ldns_tcp_read_wire_timeout(i64, i64*, i32) #1

declare dso_local i32 @ldns_resolver_timeout(%struct.TYPE_4__*) #1

declare dso_local i64 @ldns_wire2pkt(i32**, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ldns_pkt_set_querytime(i32*, i64) #1

declare dso_local i32 @ldns_pkt_set_timestamp(i32*, i64) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
