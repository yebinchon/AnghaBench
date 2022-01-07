; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_master_add_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_master_add_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_master = type { %struct.auth_addr*, i32 }
%struct.auth_addr = type { %struct.auth_addr*, i8*, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i32*, i32** }
%struct.sockaddr_in = type { i32, i8*, i32 }
%struct.sockaddr_in6 = type { i32, i8*, i32 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@INET_SIZE = common dso_local global i64 0, align 8
@INET6_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"auth host %s lookup %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_master*, %struct.ub_packed_rrset_key*, i64)* @xfr_master_add_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_master_add_addrs(%struct.auth_master* %0, %struct.ub_packed_rrset_key* %1, i64 %2) #0 {
  %4 = alloca %struct.auth_master*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  %9 = alloca %struct.auth_addr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca [64 x i8], align 16
  store %struct.auth_master* %0, %struct.auth_master** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %16 = icmp ne %struct.auth_master* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %19 = icmp ne %struct.ub_packed_rrset_key* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  br label %154

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %154

30:                                               ; preds = %25, %21
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %32 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %35, %struct.packed_rrset_data** %8, align 8
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %151, %30
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %39 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %154

42:                                               ; preds = %36
  %43 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %44 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %10, align 8
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %52 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32* %57, i32** %11, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %42
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @INET_SIZE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %151

66:                                               ; preds = %61, %42
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @INET6_SIZE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %151

75:                                               ; preds = %70, %66
  %76 = call i64 @calloc(i32 1, i32 24)
  %77 = inttoptr i64 %76 to %struct.auth_addr*
  store %struct.auth_addr* %77, %struct.auth_addr** %9, align 8
  %78 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %79 = icmp ne %struct.auth_addr* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %154

82:                                               ; preds = %75
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %88 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %87, i32 0, i32 1
  store i8* inttoptr (i64 24 to i8*), i8** %88, align 8
  %89 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %90 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %89, i32 0, i32 2
  %91 = bitcast i32* %90 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %91, %struct.sockaddr_in** %12, align 8
  %92 = load i32, i32* @AF_INET, align 4
  %93 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %96 = call i64 @htons(i32 %95)
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %100, i32 0, i32 0
  %102 = load i32*, i32** %11, align 8
  %103 = load i64, i64* @INET_SIZE, align 8
  %104 = call i32 @memmove(i32* %101, i32* %102, i64 %103)
  br label %124

105:                                              ; preds = %82
  %106 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %107 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %106, i32 0, i32 1
  store i8* inttoptr (i64 24 to i8*), i8** %107, align 8
  %108 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %109 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %108, i32 0, i32 2
  %110 = bitcast i32* %109 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %110, %struct.sockaddr_in6** %13, align 8
  %111 = load i32, i32* @AF_INET6, align 4
  %112 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %115 = call i64 @htons(i32 %114)
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %120 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %119, i32 0, i32 0
  %121 = load i32*, i32** %11, align 8
  %122 = load i64, i64* @INET6_SIZE, align 8
  %123 = call i32 @memmove(i32* %120, i32* %121, i64 %122)
  br label %124

124:                                              ; preds = %105, %86
  %125 = load i64, i64* @verbosity, align 8
  %126 = load i64, i64* @VERB_ALGO, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %124
  %129 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %130 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %129, i32 0, i32 2
  %131 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %132 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %135 = call i32 @addr_to_str(i32* %130, i8* %133, i8* %134, i32 64)
  %136 = load i64, i64* @VERB_ALGO, align 8
  %137 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %138 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %141 = call i32 @verbose(i64 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %139, i8* %140)
  br label %142

142:                                              ; preds = %128, %124
  %143 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %144 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %143, i32 0, i32 0
  %145 = load %struct.auth_addr*, %struct.auth_addr** %144, align 8
  %146 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %147 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %146, i32 0, i32 0
  store %struct.auth_addr* %145, %struct.auth_addr** %147, align 8
  %148 = load %struct.auth_addr*, %struct.auth_addr** %9, align 8
  %149 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %150 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %149, i32 0, i32 0
  store %struct.auth_addr* %148, %struct.auth_addr** %150, align 8
  br label %151

151:                                              ; preds = %142, %74, %65
  %152 = load i64, i64* %7, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %7, align 8
  br label %36

154:                                              ; preds = %20, %29, %80, %36
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @addr_to_str(i32*, i8*, i8*, i32) #1

declare dso_local i32 @verbose(i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
