; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_radius_das_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_radius_das_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache = type { %struct.rsn_pmksa_cache_entry* }
%struct.rsn_pmksa_cache_entry = type { %struct.rsn_pmksa_cache_entry* }
%struct.radius_das_attrs = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmksa_cache_auth_radius_das_disconnect(%struct.rsn_pmksa_cache* %0, %struct.radius_das_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsn_pmksa_cache*, align 8
  %5 = alloca %struct.radius_das_attrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %8 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  store %struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache** %4, align 8
  store %struct.radius_das_attrs* %1, %struct.radius_das_attrs** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %10 = getelementptr inbounds %struct.radius_das_attrs, %struct.radius_das_attrs* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %4, align 8
  %16 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %15, i32 0, i32 0
  %17 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %16, align 8
  store %struct.rsn_pmksa_cache_entry* %17, %struct.rsn_pmksa_cache_entry** %7, align 8
  br label %18

18:                                               ; preds = %36, %26, %14
  %19 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %20 = icmp ne %struct.rsn_pmksa_cache_entry* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %23 = load %struct.radius_das_attrs*, %struct.radius_das_attrs** %5, align 8
  %24 = call i64 @das_attr_match(%struct.rsn_pmksa_cache_entry* %22, %struct.radius_das_attrs* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  store %struct.rsn_pmksa_cache_entry* %29, %struct.rsn_pmksa_cache_entry** %8, align 8
  %30 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %31 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %30, i32 0, i32 0
  %32 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %31, align 8
  store %struct.rsn_pmksa_cache_entry* %32, %struct.rsn_pmksa_cache_entry** %7, align 8
  %33 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %4, align 8
  %34 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %8, align 8
  %35 = call i32 @pmksa_cache_free_entry(%struct.rsn_pmksa_cache* %33, %struct.rsn_pmksa_cache_entry* %34)
  br label %18

36:                                               ; preds = %21
  %37 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %7, align 8
  %38 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %37, i32 0, i32 0
  %39 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %38, align 8
  store %struct.rsn_pmksa_cache_entry* %39, %struct.rsn_pmksa_cache_entry** %7, align 8
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 -1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @das_attr_match(%struct.rsn_pmksa_cache_entry*, %struct.radius_das_attrs*) #1

declare dso_local i32 @pmksa_cache_free_entry(%struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
