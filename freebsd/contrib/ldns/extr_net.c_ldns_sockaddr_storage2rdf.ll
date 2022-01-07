; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_sockaddr_storage2rdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_sockaddr_storage2rdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@LDNS_RDF_TYPE_A = common dso_local global i32 0, align 4
@LDNS_IP4ADDRLEN = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_AAAA = common dso_local global i32 0, align 4
@LDNS_IP6ADDRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_sockaddr_storage2rdf(%struct.sockaddr_storage* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %10 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %46 [
    i32 129, label %12
    i32 128, label %29
  ]

12:                                               ; preds = %2
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %14 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %12
  %24 = load i32, i32* @LDNS_RDF_TYPE_A, align 4
  %25 = load i32, i32* @LDNS_IP4ADDRLEN, align 4
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = call i32* @ldns_rdf_new_frm_data(i32 %24, i32 %25, i32* %27)
  store i32* %28, i32** %6, align 8
  br label %52

29:                                               ; preds = %2
  %30 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %31 = bitcast %struct.sockaddr_storage* %30 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %31, %struct.sockaddr_in6** %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* @LDNS_RDF_TYPE_AAAA, align 4
  %42 = load i32, i32* @LDNS_IP6ADDRLEN, align 4
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 0
  %45 = call i32* @ldns_rdf_new_frm_data(i32 %41, i32 %42, i32* %44)
  store i32* %45, i32** %6, align 8
  br label %52

46:                                               ; preds = %2
  %47 = load i32*, i32** %5, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %46
  store i32* null, i32** %3, align 8
  br label %54

52:                                               ; preds = %40, %23
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32* @ldns_rdf_new_frm_data(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
