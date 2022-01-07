; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_resolv_conf_parse_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_resolv_conf_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }

@resolv_conf_parse_line.delims = internal constant i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nameserver\00", align 1
@DNS_OPTION_NAMESERVERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@DNS_OPTION_SEARCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NEXT_TOKEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_base*, i8*, i32)* @resolv_conf_parse_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolv_conf_parse_line(%struct.evdns_base* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.evdns_base*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strtok_r(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %7)
  store i8* %15, i8** %8, align 8
  %16 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %17 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %108

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DNS_OPTION_NAMESERVERS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %7)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @evdns_base_nameserver_ip_add(%struct.evdns_base* %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %108

39:                                               ; preds = %25, %21
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @DNS_OPTION_SEARCH, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %7)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %54 = call i32 @search_postfix_clear(%struct.evdns_base* %53)
  %55 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @search_postfix_add(%struct.evdns_base* %55, i8* %56)
  br label %58

58:                                               ; preds = %52, %48
  br label %107

59:                                               ; preds = %43, %39
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @DNS_OPTION_SEARCH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %70 = call i32 @search_postfix_clear(%struct.evdns_base* %69)
  br label %71

71:                                               ; preds = %74, %68
  %72 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %7)
  store i8* %72, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @search_postfix_add(%struct.evdns_base* %75, i8* %76)
  br label %71

78:                                               ; preds = %71
  %79 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %80 = call i32 @search_reverse(%struct.evdns_base* %79)
  br label %106

81:                                               ; preds = %63, %59
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %100, %85
  %87 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %7)
  store i8* %87, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i8*, i8** %12, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 58)
  store i8* %91, i8** %13, align 8
  %92 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  br label %100

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i8* [ %98, %96 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %99 ]
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @evdns_base_set_option_impl(%struct.evdns_base* %92, i8* %93, i8* %101, i32 %102)
  br label %86

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106, %58
  br label %108

108:                                              ; preds = %20, %107, %38
  ret void
}

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @evdns_base_nameserver_ip_add(%struct.evdns_base*, i8*) #1

declare dso_local i32 @search_postfix_clear(%struct.evdns_base*) #1

declare dso_local i32 @search_postfix_add(%struct.evdns_base*, i8*) #1

declare dso_local i32 @search_reverse(%struct.evdns_base*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @evdns_base_set_option_impl(%struct.evdns_base*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
