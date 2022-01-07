; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_generate_cname_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_generate_cname_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)* }
%struct.query_info = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ub_packed_rrset_key = type { i32 }

@BIT_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.ub_packed_rrset_key*)* @generate_cname_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_cname_request(%struct.module_qstate* %0, %struct.ub_packed_rrset_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.query_info, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  store %struct.module_qstate* null, %struct.module_qstate** %6, align 8
  %8 = call i32 @memset(%struct.query_info* %7, i32 0, i32 16)
  %9 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %10 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 2
  %11 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 3
  %12 = call i32 @get_cname_target(%struct.ub_packed_rrset_key* %9, i32* %10, i32* %11)
  %13 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %19 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %24 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %29 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)** %31, align 8
  %33 = call i32 @fptr_whitelist_modenv_attach_sub(i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)* %32)
  %34 = call i32 @fptr_ok(i32 %33)
  %35 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %36 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)** %38, align 8
  %40 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %41 = load i32, i32* @BIT_RD, align 4
  %42 = call i32 %39(%struct.module_qstate* %40, %struct.query_info* %7, i32 %41, i32 0, i32 0, %struct.module_qstate** %6)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %17, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.query_info*, i32, i32) #1

declare dso_local i32 @get_cname_target(%struct.ub_packed_rrset_key*, i32*, i32*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_attach_sub(i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
