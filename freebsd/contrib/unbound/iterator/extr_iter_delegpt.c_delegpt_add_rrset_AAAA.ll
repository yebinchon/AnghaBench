; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_rrset_AAAA.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_rrset_AAAA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64*, i64, i64* }
%struct.sockaddr_in6 = type { i32, i64, i32 }
%struct.sockaddr_storage = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@INET6_SIZE = common dso_local global i64 0, align 8
@sec_status_bogus = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_add_rrset_AAAA(%struct.delegpt* %0, %struct.regional* %1, %struct.ub_packed_rrset_key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.delegpt*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.packed_rrset_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_in6, align 8
  %13 = alloca i32, align 4
  store %struct.delegpt* %0, %struct.delegpt** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %15 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %18, %struct.packed_rrset_data** %10, align 8
  store i32 24, i32* %13, align 4
  %19 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %20 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @log_assert(i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @memset(%struct.sockaddr_in6* %12, i32 0, i32 %26)
  %28 = load i32, i32* @AF_INET6, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %84, %4
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %36 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %33
  %40 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %41 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INET6_SIZE, align 8
  %47 = add nsw i64 2, %46
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %84

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 0
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %53 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 2
  %59 = load i64, i64* @INET6_SIZE, align 8
  %60 = call i32 @memmove(i32* %51, i64 %58, i64 %59)
  %61 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %62 = load %struct.regional*, %struct.regional** %7, align 8
  %63 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %64 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %68 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = bitcast %struct.sockaddr_in6* %12 to %struct.sockaddr_storage*
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %74 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @sec_status_bogus, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @delegpt_add_target(%struct.delegpt* %61, %struct.regional* %62, i32 %66, i32 %70, %struct.sockaddr_storage* %71, i32 %72, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %88

83:                                               ; preds = %50
  br label %84

84:                                               ; preds = %83, %49
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %33

87:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %82
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memmove(i32*, i64, i64) #1

declare dso_local i32 @delegpt_add_target(%struct.delegpt*, %struct.regional*, i32, i32, %struct.sockaddr_storage*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
