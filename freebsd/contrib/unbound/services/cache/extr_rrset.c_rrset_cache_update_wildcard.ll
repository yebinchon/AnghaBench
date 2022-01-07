; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_update_wildcard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_update_wildcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.ub_packed_rrset_key = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.alloc_cache = type { i32 }
%struct.rrset_ref = type { i32, %struct.ub_packed_rrset_key* }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"malloc failure in rrset_cache_update_wildcard\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"memdup failure in rrset_cache_update_wildcard\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrset_cache_update_wildcard(%struct.rrset_cache* %0, %struct.ub_packed_rrset_key* %1, i32* %2, i64 %3, %struct.alloc_cache* %4, i32 %5) #0 {
  %7 = alloca %struct.rrset_cache*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.alloc_cache*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rrset_ref, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.rrset_cache* %0, %struct.rrset_cache** %7, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.alloc_cache* %4, %struct.alloc_cache** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %18 = add nsw i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %23 = load %struct.alloc_cache*, %struct.alloc_cache** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_alloc(%struct.ub_packed_rrset_key* %22, %struct.alloc_cache* %23, i32 %24)
  store %struct.ub_packed_rrset_key* %25, %struct.ub_packed_rrset_key** %8, align 8
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %27 = icmp ne %struct.ub_packed_rrset_key* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %6
  %29 = call i32 @log_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %83

30:                                               ; preds = %6
  %31 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 1, i32* %31, align 16
  %32 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 42, i32* %32, align 4
  %33 = getelementptr inbounds i32, i32* %21, i64 2
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @memmove(i32* %33, i32* %34, i64 %35)
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 2
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i64 %43, i64* %46, align 8
  %47 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %48 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @memdup(i32* %21, i64 %50)
  %52 = inttoptr i64 %51 to i32*
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %57 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %30
  %62 = load %struct.alloc_cache*, %struct.alloc_cache** %11, align 8
  %63 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %64 = call i32 @alloc_special_release(%struct.alloc_cache* %62, %struct.ub_packed_rrset_key* %63)
  %65 = call i32 @log_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %83

66:                                               ; preds = %30
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %68 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %67, i32 0, i32 1
  %69 = call i32 @rrset_key_hash(%struct.TYPE_4__* %68)
  %70 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %71 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %74 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %13, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %73, %struct.ub_packed_rrset_key** %74, align 8
  %75 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %76 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %13, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.rrset_cache*, %struct.rrset_cache** %7, align 8
  %80 = load %struct.alloc_cache*, %struct.alloc_cache** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @rrset_cache_update(%struct.rrset_cache* %79, %struct.rrset_ref* %13, %struct.alloc_cache* %80, i32 %81)
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %66, %61, %28
  %84 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %16, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_alloc(%struct.ub_packed_rrset_key*, %struct.alloc_cache*, i32) #2

declare dso_local i32 @log_err(i8*) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i64 @memdup(i32*, i64) #2

declare dso_local i32 @alloc_special_release(%struct.alloc_cache*, %struct.ub_packed_rrset_key*) #2

declare dso_local i32 @rrset_key_hash(%struct.TYPE_4__*) #2

declare dso_local i32 @rrset_cache_update(%struct.rrset_cache*, %struct.rrset_ref*, %struct.alloc_cache*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
