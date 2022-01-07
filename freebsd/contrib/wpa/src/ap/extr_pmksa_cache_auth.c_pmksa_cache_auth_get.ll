; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache_entry = type { i32, %struct.rsn_pmksa_cache_entry*, i32, %struct.rsn_pmksa_cache_entry* }
%struct.rsn_pmksa_cache = type { %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** }

@ETH_ALEN = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_auth_get(%struct.rsn_pmksa_cache* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %5 = alloca %struct.rsn_pmksa_cache*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  store %struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %3
  %12 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %5, align 8
  %13 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %12, i32 0, i32 1
  %14 = load %struct.rsn_pmksa_cache_entry**, %struct.rsn_pmksa_cache_entry*** %13, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @PMKID_HASH(i32* %15)
  %17 = getelementptr inbounds %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %14, i64 %16
  %18 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %17, align 8
  store %struct.rsn_pmksa_cache_entry* %18, %struct.rsn_pmksa_cache_entry** %8, align 8
  br label %19

19:                                               ; preds = %44, %11
  %20 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  %21 = icmp ne %struct.rsn_pmksa_cache_entry* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  %27 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i64 @os_memcmp(i32 %28, i32* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25, %22
  %34 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  %35 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @PMKID_LEN, align 4
  %39 = call i64 @os_memcmp(i32 %36, i32* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  store %struct.rsn_pmksa_cache_entry* %42, %struct.rsn_pmksa_cache_entry** %4, align 8
  br label %76

43:                                               ; preds = %33, %25
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  %46 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %45, i32 0, i32 3
  %47 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %46, align 8
  store %struct.rsn_pmksa_cache_entry* %47, %struct.rsn_pmksa_cache_entry** %8, align 8
  br label %19

48:                                               ; preds = %19
  br label %75

49:                                               ; preds = %3
  %50 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %5, align 8
  %51 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %50, i32 0, i32 0
  %52 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %51, align 8
  store %struct.rsn_pmksa_cache_entry* %52, %struct.rsn_pmksa_cache_entry** %8, align 8
  br label %53

53:                                               ; preds = %70, %49
  %54 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  %55 = icmp ne %struct.rsn_pmksa_cache_entry* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  %61 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i64 @os_memcmp(i32 %62, i32* %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59, %56
  %68 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  store %struct.rsn_pmksa_cache_entry* %68, %struct.rsn_pmksa_cache_entry** %4, align 8
  br label %76

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  %72 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %71, i32 0, i32 1
  %73 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %72, align 8
  store %struct.rsn_pmksa_cache_entry* %73, %struct.rsn_pmksa_cache_entry** %8, align 8
  br label %53

74:                                               ; preds = %53
  br label %75

75:                                               ; preds = %74, %48
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %4, align 8
  br label %76

76:                                               ; preds = %75, %67, %41
  %77 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  ret %struct.rsn_pmksa_cache_entry* %77
}

declare dso_local i64 @PMKID_HASH(i32*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
