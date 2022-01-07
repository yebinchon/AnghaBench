; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_adjust_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_adjust_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_4__, %struct.dns_msg*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dns_msg = type { i32, %struct.TYPE_4__ }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"adjusting PTR reply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.module_qstate*)* @dns64_adjust_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns64_adjust_ptr(%struct.module_qstate* %0, %struct.module_qstate* %1) #0 {
  %3 = alloca %struct.module_qstate*, align 8
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %3, align 8
  store %struct.module_qstate* %1, %struct.module_qstate** %4, align 8
  %6 = load i32, i32* @VERB_ALGO, align 4
  %7 = call i32 @verbose(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %9 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @regional_alloc(i32 %10, i32 12)
  %12 = inttoptr i64 %11 to %struct.dns_msg*
  %13 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %14 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %13, i32 0, i32 1
  store %struct.dns_msg* %12, %struct.dns_msg** %14, align 8
  %15 = icmp ne %struct.dns_msg* %12, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %19 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %18, i32 0, i32 1
  %20 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %21 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %20, i32 0, i32 1
  %22 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %23 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_4__* %21 to i8*
  %25 = bitcast %struct.TYPE_4__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %27 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %26, i32 0, i32 1
  %28 = load %struct.dns_msg*, %struct.dns_msg** %27, align 8
  %29 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %32 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @reply_info_copy(i32 %30, i32* null, i32 %33)
  %35 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %36 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %35, i32 0, i32 1
  %37 = load %struct.dns_msg*, %struct.dns_msg** %36, align 8
  %38 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %40 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %39, i32 0, i32 0
  %41 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %42 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %41, i32 0, i32 1
  %43 = load %struct.dns_msg*, %struct.dns_msg** %42, align 8
  %44 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.ub_packed_rrset_key* @reply_find_answer_rrset(%struct.TYPE_4__* %40, i32 %45)
  store %struct.ub_packed_rrset_key* %46, %struct.ub_packed_rrset_key** %5, align 8
  %47 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %48 = icmp ne %struct.ub_packed_rrset_key* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %17
  %50 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %51 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %55 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %58 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %62 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %16, %49, %17
  ret void
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i64 @regional_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reply_info_copy(i32, i32*, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @reply_find_answer_rrset(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
