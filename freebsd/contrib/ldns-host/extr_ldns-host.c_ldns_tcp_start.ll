; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_tcp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_tcp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.sockaddr_storage = type { i32 }

@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_ADDRESS_ERR = common dso_local global i64 0, align 8
@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_NETWORK_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i32)* @ldns_tcp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ldns_tcp_start(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %8, align 8
  store i64 0, i64* %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = call i32 @ldns_resolver_port(%struct.TYPE_5__* %19)
  %21 = call %struct.sockaddr_storage* @ldns_rdf2native_sockaddr_storage(i32 %18, i32 %20, i64* %9)
  store %struct.sockaddr_storage* %21, %struct.sockaddr_storage** %8, align 8
  %22 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %23 = icmp eq %struct.sockaddr_storage* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %25, i64* %11, align 8
  br label %74

26:                                               ; preds = %3
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = call i32 @ldns_resolver_timeout(%struct.TYPE_5__* %30)
  %32 = call i32 @ldns_tcp_connect(%struct.sockaddr_storage* %27, i32 %29, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i64, i64* @LDNS_STATUS_ADDRESS_ERR, align 8
  store i64 %40, i64* %11, align 8
  br label %74

41:                                               ; preds = %26
  %42 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %43 = call i32* @ldns_buffer_new(i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %47, i64* %11, align 8
  br label %74

48:                                               ; preds = %41
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @ldns_pkt2buffer_wire(i32* %49, i32* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @LDNS_STATUS_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %74

56:                                               ; preds = %48
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @ldns_tcp_send_query(i32* %57, i32 %60, %struct.sockaddr_storage* %61, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i64, i64* @LDNS_STATUS_NETWORK_ERR, align 8
  store i64 %67, i64* %11, align 8
  br label %74

68:                                               ; preds = %56
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @ldns_buffer_free(i32* %69)
  %71 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %72 = call i32 @free(%struct.sockaddr_storage* %71)
  %73 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %73, i64* %4, align 8
  br label %92

74:                                               ; preds = %66, %55, %46, %39, %24
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @ldns_buffer_free(i32* %75)
  %77 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %78 = call i32 @free(%struct.sockaddr_storage* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @close(i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %83, %74
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %90, %68
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local %struct.sockaddr_storage* @ldns_rdf2native_sockaddr_storage(i32, i32, i64*) #1

declare dso_local i32 @ldns_resolver_port(%struct.TYPE_5__*) #1

declare dso_local i32 @ldns_tcp_connect(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @ldns_resolver_timeout(%struct.TYPE_5__*) #1

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i64 @ldns_pkt2buffer_wire(i32*, i32*) #1

declare dso_local i64 @ldns_tcp_send_query(i32*, i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

declare dso_local i32 @free(%struct.sockaddr_storage*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
