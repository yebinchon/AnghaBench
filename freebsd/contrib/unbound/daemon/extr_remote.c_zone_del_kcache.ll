; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_zone_del_kcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_zone_del_kcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i64, i64 }
%struct.del_info = type { i64, i32, i32 }
%struct.key_entry_key = type { i32 }
%struct.key_entry_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lruhash_entry*, i8*)* @zone_del_kcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_del_kcache(%struct.lruhash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.lruhash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.del_info*, align 8
  %6 = alloca %struct.key_entry_key*, align 8
  %7 = alloca %struct.key_entry_data*, align 8
  store %struct.lruhash_entry* %0, %struct.lruhash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.del_info*
  store %struct.del_info* %9, %struct.del_info** %5, align 8
  %10 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %11 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.key_entry_key*
  store %struct.key_entry_key* %13, %struct.key_entry_key** %6, align 8
  %14 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  %15 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.del_info*, %struct.del_info** %5, align 8
  %18 = getelementptr inbounds %struct.del_info, %struct.del_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @dname_subdomain_c(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %24 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.key_entry_data*
  store %struct.key_entry_data* %26, %struct.key_entry_data** %7, align 8
  %27 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %28 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.del_info*, %struct.del_info** %5, align 8
  %31 = getelementptr inbounds %struct.del_info, %struct.del_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load %struct.del_info*, %struct.del_info** %5, align 8
  %36 = getelementptr inbounds %struct.del_info, %struct.del_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %39 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.del_info*, %struct.del_info** %5, align 8
  %41 = getelementptr inbounds %struct.del_info, %struct.del_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %34, %22
  br label %45

45:                                               ; preds = %44, %2
  ret void
}

declare dso_local i64 @dname_subdomain_c(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
