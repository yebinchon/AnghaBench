; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_infra_del_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_infra_del_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i64, i64 }
%struct.del_info = type { i64, i32, i32, i32 }
%struct.infra_key = type { i32, i32 }
%struct.infra_data = type { i64, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lruhash_entry*, i8*)* @infra_del_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infra_del_host(%struct.lruhash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.lruhash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.del_info*, align 8
  %6 = alloca %struct.infra_key*, align 8
  %7 = alloca %struct.infra_data*, align 8
  store %struct.lruhash_entry* %0, %struct.lruhash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.del_info*
  store %struct.del_info* %9, %struct.del_info** %5, align 8
  %10 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %11 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.infra_key*
  store %struct.infra_key* %13, %struct.infra_key** %6, align 8
  %14 = load %struct.del_info*, %struct.del_info** %5, align 8
  %15 = getelementptr inbounds %struct.del_info, %struct.del_info* %14, i32 0, i32 3
  %16 = load %struct.del_info*, %struct.del_info** %5, align 8
  %17 = getelementptr inbounds %struct.del_info, %struct.del_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.infra_key*, %struct.infra_key** %6, align 8
  %20 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %19, i32 0, i32 1
  %21 = load %struct.infra_key*, %struct.infra_key** %6, align 8
  %22 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @sockaddr_cmp(i32* %15, i32 %18, i32* %20, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %2
  %27 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %28 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.infra_data*
  store %struct.infra_data* %30, %struct.infra_data** %7, align 8
  %31 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %32 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %34 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %36 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %38 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %40 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %39, i32 0, i32 1
  %41 = call i32 @rtt_init(i32* %40)
  %42 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %43 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.del_info*, %struct.del_info** %5, align 8
  %46 = getelementptr inbounds %struct.del_info, %struct.del_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %26
  %50 = load %struct.del_info*, %struct.del_info** %5, align 8
  %51 = getelementptr inbounds %struct.del_info, %struct.del_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %54 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.del_info*, %struct.del_info** %5, align 8
  %56 = getelementptr inbounds %struct.del_info, %struct.del_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %49, %26
  br label %60

60:                                               ; preds = %59, %2
  ret void
}

declare dso_local i64 @sockaddr_cmp(i32*, i32, i32*, i32) #1

declare dso_local i32 @rtt_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
