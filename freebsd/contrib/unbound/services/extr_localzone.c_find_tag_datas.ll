; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_find_tag_datas.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_find_tag_datas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.config_strlist = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.regional = type { i32 }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_info*, %struct.config_strlist*, %struct.ub_packed_rrset_key*, %struct.regional*)* @find_tag_datas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_tag_datas(%struct.query_info* %0, %struct.config_strlist* %1, %struct.ub_packed_rrset_key* %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca %struct.config_strlist*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i32, align 4
  store %struct.query_info* %0, %struct.query_info** %6, align 8
  store %struct.config_strlist* %1, %struct.config_strlist** %7, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %11 = load %struct.query_info*, %struct.query_info** %6, align 8
  %12 = load %struct.config_strlist*, %struct.config_strlist** %7, align 8
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %14 = load %struct.regional*, %struct.regional** %9, align 8
  %15 = call i32 @local_data_find_tag_datas(%struct.query_info* %11, %struct.config_strlist* %12, %struct.ub_packed_rrset_key* %13, %struct.regional* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %4
  %19 = load %struct.query_info*, %struct.query_info** %6, align 8
  %20 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %18
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %30 = call i64 @htons(i64 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load %struct.regional*, %struct.regional** %9, align 8
  %34 = call %struct.TYPE_4__* @regional_alloc_zero(%struct.regional* %33, i32 4)
  %35 = load %struct.query_info*, %struct.query_info** %6, align 8
  %36 = getelementptr inbounds %struct.query_info, %struct.query_info* %35, i32 0, i32 1
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.query_info*, %struct.query_info** %6, align 8
  %38 = getelementptr inbounds %struct.query_info, %struct.query_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %60

42:                                               ; preds = %32
  %43 = load %struct.regional*, %struct.regional** %9, align 8
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %45 = call i32 @regional_alloc_init(%struct.regional* %43, %struct.ub_packed_rrset_key* %44, i32 8)
  %46 = load %struct.query_info*, %struct.query_info** %6, align 8
  %47 = getelementptr inbounds %struct.query_info, %struct.query_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.query_info*, %struct.query_info** %6, align 8
  %51 = getelementptr inbounds %struct.query_info, %struct.query_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %60

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %24, %18, %4
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %56, %41
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @local_data_find_tag_datas(%struct.query_info*, %struct.config_strlist*, %struct.ub_packed_rrset_key*, %struct.regional*) #1

declare dso_local i64 @htons(i64) #1

declare dso_local %struct.TYPE_4__* @regional_alloc_zero(%struct.regional*, i32) #1

declare dso_local i32 @regional_alloc_init(%struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
