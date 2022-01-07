; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_findnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_findnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { i32 }
%struct.auth_zone = type { i32 }
%struct.query_info = type { i64, i32*, i64, i64 }

@RBTREE_NULL = common dso_local global i32* null, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_data* (%struct.auth_zone*, i32*, i64)* @az_nsec3_findnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_data* @az_nsec3_findnode(%struct.auth_zone* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.query_info, align 8
  %8 = alloca %struct.auth_data*, align 8
  %9 = alloca i32, align 4
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 1
  store i32* %12, i32** %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.query_info, %struct.query_info* %7, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %17 = call i32 @az_find_domain(%struct.auth_zone* %16, %struct.query_info* %7, i32* %9, %struct.auth_data** %8)
  br label %18

18:                                               ; preds = %34, %3
  %19 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %20 = icmp ne %struct.auth_data* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %23 = bitcast %struct.auth_data* %22 to i32*
  %24 = load i32*, i32** @RBTREE_NULL, align 8
  %25 = icmp ne i32* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %28 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %29 = call i32 @az_domain_rrset(%struct.auth_data* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %21, %18
  %33 = phi i1 [ false, %21 ], [ false, %18 ], [ %31, %26 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %36 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %35, i32 0, i32 0
  %37 = call i64 @rbtree_previous(i32* %36)
  %38 = inttoptr i64 %37 to %struct.auth_data*
  store %struct.auth_data* %38, %struct.auth_data** %8, align 8
  br label %18

39:                                               ; preds = %32
  %40 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %41 = bitcast %struct.auth_data* %40 to i32*
  %42 = load i32*, i32** @RBTREE_NULL, align 8
  %43 = icmp eq i32* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.auth_data* null, %struct.auth_data** %8, align 8
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  ret %struct.auth_data* %46
}

declare dso_local i32 @az_find_domain(%struct.auth_zone*, %struct.query_info*, i32*, %struct.auth_data**) #1

declare dso_local i32 @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i64 @rbtree_previous(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
