; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_ip_rate_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_ip_rate_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i64, i64 }
%struct.ip_ratelimit_list_arg = type { i64, i32, i32 }
%struct.ip_rate_key = type { i32, i32 }
%struct.ip_rate_data = type { i32 }

@infra_ip_ratelimit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s %d limit %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lruhash_entry*, i8*)* @ip_rate_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_rate_list(%struct.lruhash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.lruhash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.ip_ratelimit_list_arg*, align 8
  %7 = alloca %struct.ip_rate_key*, align 8
  %8 = alloca %struct.ip_rate_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lruhash_entry* %0, %struct.lruhash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ip_ratelimit_list_arg*
  store %struct.ip_ratelimit_list_arg* %12, %struct.ip_ratelimit_list_arg** %6, align 8
  %13 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %14 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ip_rate_key*
  store %struct.ip_rate_key* %16, %struct.ip_rate_key** %7, align 8
  %17 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %18 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ip_rate_data*
  store %struct.ip_rate_data* %20, %struct.ip_rate_data** %8, align 8
  %21 = load i32, i32* @infra_ip_ratelimit, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ip_rate_data*, %struct.ip_rate_data** %8, align 8
  %23 = load %struct.ip_ratelimit_list_arg*, %struct.ip_ratelimit_list_arg** %6, align 8
  %24 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @infra_rate_max(%struct.ip_rate_data* %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ip_ratelimit_list_arg*, %struct.ip_ratelimit_list_arg** %6, align 8
  %28 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %52

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.ip_rate_key*, %struct.ip_rate_key** %7, align 8
  %39 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %38, i32 0, i32 1
  %40 = load %struct.ip_rate_key*, %struct.ip_rate_key** %7, align 8
  %41 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %44 = call i32 @addr_to_str(i32* %39, i32 %42, i8* %43, i32 128)
  %45 = load %struct.ip_ratelimit_list_arg*, %struct.ip_ratelimit_list_arg** %6, align 8
  %46 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ssl_printf(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %37, %35
  ret void
}

declare dso_local i32 @infra_rate_max(%struct.ip_rate_data*, i32) #1

declare dso_local i32 @addr_to_str(i32*, i32, i8*, i32) #1

declare dso_local i32 @ssl_printf(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
