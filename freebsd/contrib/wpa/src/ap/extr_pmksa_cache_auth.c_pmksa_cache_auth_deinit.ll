; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache = type { i32**, %struct.rsn_pmksa_cache_entry*, i64 }
%struct.rsn_pmksa_cache_entry = type { %struct.rsn_pmksa_cache_entry* }

@pmksa_cache_expire = common dso_local global i32 0, align 4
@PMKID_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmksa_cache_auth_deinit(%struct.rsn_pmksa_cache* %0) #0 {
  %2 = alloca %struct.rsn_pmksa_cache*, align 8
  %3 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %4 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache** %2, align 8
  %6 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %7 = icmp eq %struct.rsn_pmksa_cache* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %11 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %10, i32 0, i32 1
  %12 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %11, align 8
  store %struct.rsn_pmksa_cache_entry* %12, %struct.rsn_pmksa_cache_entry** %3, align 8
  br label %13

13:                                               ; preds = %16, %9
  %14 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %15 = icmp ne %struct.rsn_pmksa_cache_entry* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  store %struct.rsn_pmksa_cache_entry* %17, %struct.rsn_pmksa_cache_entry** %4, align 8
  %18 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %19 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %18, i32 0, i32 0
  %20 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %19, align 8
  store %struct.rsn_pmksa_cache_entry* %20, %struct.rsn_pmksa_cache_entry** %3, align 8
  %21 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %22 = call i32 @_pmksa_cache_free_entry(%struct.rsn_pmksa_cache_entry* %21)
  br label %13

23:                                               ; preds = %13
  %24 = load i32, i32* @pmksa_cache_expire, align 4
  %25 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %26 = call i32 @eloop_cancel_timeout(i32 %24, %struct.rsn_pmksa_cache* %25, i32* null)
  %27 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %28 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %30 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %29, i32 0, i32 1
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %30, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %42, %23
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PMKID_HASH_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %37 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %47 = call i32 @os_free(%struct.rsn_pmksa_cache* %46)
  br label %48

48:                                               ; preds = %45, %8
  ret void
}

declare dso_local i32 @_pmksa_cache_free_entry(%struct.rsn_pmksa_cache_entry*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.rsn_pmksa_cache*, i32*) #1

declare dso_local i32 @os_free(%struct.rsn_pmksa_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
