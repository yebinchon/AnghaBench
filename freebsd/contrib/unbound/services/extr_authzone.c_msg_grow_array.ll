; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_grow_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_grow_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regional*, %struct.dns_msg*)* @msg_grow_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_grow_array(%struct.regional* %0, %struct.dns_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regional*, align 8
  %5 = alloca %struct.dns_msg*, align 8
  %6 = alloca %struct.ub_packed_rrset_key**, align 8
  store %struct.regional* %0, %struct.regional** %4, align 8
  store %struct.dns_msg* %1, %struct.dns_msg** %5, align 8
  %7 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %8 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %10, align 8
  %12 = icmp eq %struct.ub_packed_rrset_key** %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.regional*, %struct.regional** %4, align 8
  %15 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %16 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i8* @regional_alloc_zero(%struct.regional* %14, i32 %23)
  %25 = bitcast i8* %24 to %struct.ub_packed_rrset_key**
  %26 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %27 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store %struct.ub_packed_rrset_key** %25, %struct.ub_packed_rrset_key*** %29, align 8
  %30 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %31 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %33, align 8
  %35 = icmp ne %struct.ub_packed_rrset_key** %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %84

37:                                               ; preds = %13
  br label %83

38:                                               ; preds = %2
  %39 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %40 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %42, align 8
  store %struct.ub_packed_rrset_key** %43, %struct.ub_packed_rrset_key*** %6, align 8
  %44 = load %struct.regional*, %struct.regional** %4, align 8
  %45 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %46 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 8, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @regional_alloc_zero(%struct.regional* %44, i32 %53)
  %55 = bitcast i8* %54 to %struct.ub_packed_rrset_key**
  %56 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %57 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store %struct.ub_packed_rrset_key** %55, %struct.ub_packed_rrset_key*** %59, align 8
  %60 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %61 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %63, align 8
  %65 = icmp ne %struct.ub_packed_rrset_key** %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %84

67:                                               ; preds = %38
  %68 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %69 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %71, align 8
  %73 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %6, align 8
  %74 = load %struct.dns_msg*, %struct.dns_msg** %5, align 8
  %75 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = mul i64 8, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memmove(%struct.ub_packed_rrset_key** %72, %struct.ub_packed_rrset_key** %73, i32 %81)
  br label %83

83:                                               ; preds = %67, %37
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %66, %36
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @regional_alloc_zero(%struct.regional*, i32) #1

declare dso_local i32 @memmove(%struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
