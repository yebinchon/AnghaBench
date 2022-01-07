; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_resolv_conf_parse_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_resolv_conf_parse_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Parsing resolv.conf file %s\00", align 1
@DNS_OPTION_HOSTSFILE = common dso_local global i32 0, align 4
@DNS_OPTION_NAMESERVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@DNS_OPTION_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i32, i8*)* @evdns_base_resolv_conf_parse_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_base_resolv_conf_parse_impl(%struct.evdns_base* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evdns_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @log(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DNS_OPTION_HOSTSFILE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = call i8* (...) @evdns_get_default_hosts_filename()
  store i8* %22, i8** %12, align 8
  %23 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @evdns_base_load_hosts(%struct.evdns_base* %23, i8* %24)
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @mm_free(i8* %29)
  br label %31

31:                                               ; preds = %28, %21
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @evutil_read_file_(i8* %33, i8** %9, i64* %8, i32 0)
  store i32 %34, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @evdns_resolv_set_defaults(%struct.evdns_base* %40, i32 %41)
  store i32 1, i32* %4, align 4
  br label %102

43:                                               ; preds = %36
  store i32 2, i32* %4, align 4
  br label %102

44:                                               ; preds = %32
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %64, %44
  %47 = load i8*, i8** %10, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 10)
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @resolv_conf_parse_line(%struct.evdns_base* %52, i8* %53, i32 %54)
  br label %65

56:                                               ; preds = %46
  %57 = load i8*, i8** %13, align 8
  store i8 0, i8* %57, align 1
  %58 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @resolv_conf_parse_line(%struct.evdns_base* %58, i8* %59, i32 %60)
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %10, align 8
  br label %64

64:                                               ; preds = %56
  br label %46

65:                                               ; preds = %51
  %66 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %67 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @DNS_OPTION_NAMESERVERS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %77 = call i32 @evdns_base_nameserver_ip_add(%struct.evdns_base* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 6, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %70, %65
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @DNS_OPTION_SEARCH, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %85 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = icmp ne %struct.TYPE_2__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %90 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88, %83
  %96 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %97 = call i32 @search_set_from_hostname(%struct.evdns_base* %96)
  br label %98

98:                                               ; preds = %95, %88, %78
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @mm_free(i8* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %43, %39
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @log(i32, i8*, i8*) #1

declare dso_local i8* @evdns_get_default_hosts_filename(...) #1

declare dso_local i32 @evdns_base_load_hosts(%struct.evdns_base*, i8*) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i32 @evutil_read_file_(i8*, i8**, i64*, i32) #1

declare dso_local i32 @evdns_resolv_set_defaults(%struct.evdns_base*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @resolv_conf_parse_line(%struct.evdns_base*, i8*, i32) #1

declare dso_local i32 @evdns_base_nameserver_ip_add(%struct.evdns_base*, i8*) #1

declare dso_local i32 @search_set_from_hostname(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
