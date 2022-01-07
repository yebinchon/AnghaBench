; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_find_cover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_find_cover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { i32 }
%struct.auth_zone = type { i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@RBTREE_NULL = common dso_local global i32* null, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_data* (%struct.auth_zone*, i32*, i64, i32, i64, i32*, i64)* @az_nsec3_find_cover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_data* @az_nsec3_find_cover(%struct.auth_zone* %0, i32* %1, i64 %2, i32 %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.auth_data*, align 8
  %9 = alloca %struct.auth_zone*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.auth_data*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.auth_zone* %0, %struct.auth_zone** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = mul nuw i64 4, %22
  store i64 %25, i64* %19, align 8
  %26 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i64, i64* %13, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @az_nsec3_hashname(%struct.auth_zone* %26, i32* %24, i64* %19, i32* %27, i64 %28, i32 %29, i64 %30, i32* %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %7
  store %struct.auth_data* null, %struct.auth_data** %8, align 8
  store i32 1, i32* %20, align 4
  br label %78

36:                                               ; preds = %7
  %37 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %38 = load i64, i64* %19, align 8
  %39 = call %struct.auth_data* @az_nsec3_findnode(%struct.auth_zone* %37, i32* %24, i64 %38)
  store %struct.auth_data* %39, %struct.auth_data** %16, align 8
  %40 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  %41 = icmp ne %struct.auth_data* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  store %struct.auth_data* %43, %struct.auth_data** %8, align 8
  store i32 1, i32* %20, align 4
  br label %78

44:                                               ; preds = %36
  %45 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %46 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %45, i32 0, i32 0
  %47 = call i64 @rbtree_last(i32* %46)
  %48 = inttoptr i64 %47 to %struct.auth_data*
  store %struct.auth_data* %48, %struct.auth_data** %16, align 8
  br label %49

49:                                               ; preds = %65, %44
  %50 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  %51 = icmp ne %struct.auth_data* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  %54 = bitcast %struct.auth_data* %53 to i32*
  %55 = load i32*, i32** @RBTREE_NULL, align 8
  %56 = icmp ne i32* %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  %59 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %60 = call i32 @az_domain_rrset(%struct.auth_data* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %57, %52, %49
  %64 = phi i1 [ false, %52 ], [ false, %49 ], [ %62, %57 ]
  br i1 %64, label %65, label %70

65:                                               ; preds = %63
  %66 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  %67 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %66, i32 0, i32 0
  %68 = call i64 @rbtree_previous(i32* %67)
  %69 = inttoptr i64 %68 to %struct.auth_data*
  store %struct.auth_data* %69, %struct.auth_data** %16, align 8
  br label %49

70:                                               ; preds = %63
  %71 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  %72 = bitcast %struct.auth_data* %71 to i32*
  %73 = load i32*, i32** @RBTREE_NULL, align 8
  %74 = icmp eq i32* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store %struct.auth_data* null, %struct.auth_data** %16, align 8
  br label %76

76:                                               ; preds = %75, %70
  %77 = load %struct.auth_data*, %struct.auth_data** %16, align 8
  store %struct.auth_data* %77, %struct.auth_data** %8, align 8
  store i32 1, i32* %20, align 4
  br label %78

78:                                               ; preds = %76, %42, %35
  %79 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  ret %struct.auth_data* %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @az_nsec3_hashname(%struct.auth_zone*, i32*, i64*, i32*, i64, i32, i64, i32*, i64) #2

declare dso_local %struct.auth_data* @az_nsec3_findnode(%struct.auth_zone*, i32*, i64) #2

declare dso_local i64 @rbtree_last(i32*) #2

declare dso_local i32 @az_domain_rrset(%struct.auth_data*, i32) #2

declare dso_local i64 @rbtree_previous(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
