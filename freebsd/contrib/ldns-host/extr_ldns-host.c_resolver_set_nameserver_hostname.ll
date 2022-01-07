; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_resolver_set_nameserver_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_resolver_set_nameserver_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, %struct.addrinfo*, i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EAI_AGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"couldn't get address for '%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"couldn't allocate an rdf: %s\00", align 1
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"couldn't push a nameserver address: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @resolver_set_nameserver_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolver_set_nameserver_hostname(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 24)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ldns_resolver_ip6(i32* %12)
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 128, label %17
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @PF_INET, align 4
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @PF_INET6, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @PF_UNSPEC, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17, %14
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  br label %26

26:                                               ; preds = %29, %23
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @getaddrinfo(i8* %27, i32* null, %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @EAI_AGAIN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %26, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @gai_strerror(i32 %38)
  %40 = call i32 (i32, i8*, i8*, ...) @die(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %42, %struct.addrinfo** %7, align 8
  br label %43

43:                                               ; preds = %73, %41
  %44 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %45 = icmp ne %struct.addrinfo* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32* @ldns_sockaddr_storage2rdf(i8* %50, i32* null)
  store i32* %51, i32** %9, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  %55 = call i32 @ldns_get_errorstr_by_id(i64 %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (i32, i8*, i8*, ...) @die(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @ldns_resolver_push_nameserver(i32* %60, i32* %61)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @LDNS_STATUS_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @ldns_get_errorstr_by_id(i64 %67)
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i32, i8*, i8*, ...) @die(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %66, %59
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 1
  %76 = load %struct.addrinfo*, %struct.addrinfo** %75, align 8
  store %struct.addrinfo* %76, %struct.addrinfo** %7, align 8
  br label %43

77:                                               ; preds = %43
  ret void
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @ldns_resolver_ip6(i32*) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @die(i32, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32* @ldns_sockaddr_storage2rdf(i8*, i32*) #1

declare dso_local i32 @ldns_get_errorstr_by_id(i64) #1

declare dso_local i64 @ldns_resolver_push_nameserver(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
