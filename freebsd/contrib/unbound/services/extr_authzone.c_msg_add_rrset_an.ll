; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_add_rrset_an.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_add_rrset_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32* }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*)* @msg_add_rrset_an to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_add_rrset_an(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_data* %3, %struct.auth_rrset* %4) #0 {
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
  %20 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %21 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @log_assert(i32 %26)
  %28 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %29 = icmp ne %struct.auth_rrset* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %32 = icmp ne %struct.auth_data* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %5
  store i32 1, i32* %6, align 4
  br label %91

34:                                               ; preds = %30
  %35 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %36 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %37 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %40 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %43 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %46 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @msg_rrset_duplicate(%struct.dns_msg* %35, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %91

51:                                               ; preds = %34
  %52 = load %struct.regional*, %struct.regional** %8, align 8
  %53 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %54 = call i32 @msg_grow_array(%struct.regional* %52, %struct.dns_msg* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %91

57:                                               ; preds = %51
  %58 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %59 = load %struct.auth_data*, %struct.auth_data** %10, align 8
  %60 = load %struct.auth_rrset*, %struct.auth_rrset** %11, align 8
  %61 = load %struct.regional*, %struct.regional** %8, align 8
  %62 = call i32 @auth_packed_rrset_copy_region(%struct.auth_zone* %58, %struct.auth_data* %59, %struct.auth_rrset* %60, %struct.regional* %61, i32 0)
  %63 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %64 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %69 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  store i32 %62, i32* %73, align 4
  %74 = icmp ne i32 %62, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %91

76:                                               ; preds = %57
  %77 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %78 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %84 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %90 = call i32 @msg_ttl(%struct.dns_msg* %89)
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %76, %75, %56, %50, %33
  %92 = load i32, i32* %6, align 4
  ret i32 %92
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
