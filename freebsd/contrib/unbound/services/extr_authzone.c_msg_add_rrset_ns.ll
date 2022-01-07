; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_add_rrset_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_add_rrset_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32* }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*)* @msg_add_rrset_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_add_rrset_ns(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3, %struct.auth_rrset* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca %struct.auth_data*, align 8
  %11 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %9, align 8
  store %struct.auth_data* %3, %struct.auth_data** %10, align 8
  store %struct.auth_rrset* %4, %struct.auth_rrset** %11, align 8
  %12 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %13 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @log_assert(i32 %18)
  %20 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %21 = icmp ne %struct.auth_rrset* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %24 = icmp ne %struct.auth_data* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %5
  store i32 1, i32* %6, align 4
  br label %83

26:                                               ; preds = %22
  %27 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %28 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %29 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %32 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %35 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %38 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @msg_rrset_duplicate(%struct.dns_msg* %27, i32 %30, i32 %33, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %83

43:                                               ; preds = %26
  %44 = load %struct.regional*, %struct.regional** %8, align 8
  %45 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %46 = call i32 @msg_grow_array(%struct.regional* %44, %struct.dns_msg* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %83

49:                                               ; preds = %43
  %50 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %51 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %52 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %53 = load %struct.regional*, %struct.regional** %8, align 8
  %54 = call i32 @auth_packed_rrset_copy_region(%struct.auth_zone* %50, %struct.auth_data* %51, %struct.auth_rrset* %52, %struct.regional* %53, i32 0)
  %55 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %56 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %61 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32 %54, i32* %65, align 4
  %66 = icmp ne i32 %54, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %83

68:                                               ; preds = %49
  %69 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %70 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %76 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %82 = call i32 @msg_ttl(%struct.dns_msg* %81)
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %68, %67, %48, %42, %25
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @msg_rrset_duplicate(%struct.dns_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_grow_array(%struct.regional*, %struct.dns_msg*) #1

declare dso_local i32 @auth_packed_rrset_copy_region(%struct.auth_zone*, %struct.auth_data*, %struct.auth_rrset*, %struct.regional*, i32) #1

declare dso_local i32 @msg_ttl(%struct.dns_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
