; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_rate_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_rate_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i64, i64 }
%struct.ratelimit_list_arg = type { i64, i32, i32, i32 }
%struct.rate_key = type { i32, i32 }
%struct.rate_data = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s %d limit %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lruhash_entry*, i8*)* @rate_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_list(%struct.lruhash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.lruhash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ratelimit_list_arg*, align 8
  %6 = alloca %struct.rate_key*, align 8
  %7 = alloca %struct.rate_data*, align 8
  %8 = alloca [257 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lruhash_entry* %0, %struct.lruhash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ratelimit_list_arg*
  store %struct.ratelimit_list_arg* %12, %struct.ratelimit_list_arg** %5, align 8
  %13 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %14 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rate_key*
  store %struct.rate_key* %16, %struct.rate_key** %6, align 8
  %17 = load %struct.lruhash_entry*, %struct.lruhash_entry** %3, align 8
  %18 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.rate_data*
  store %struct.rate_data* %20, %struct.rate_data** %7, align 8
  %21 = load %struct.ratelimit_list_arg*, %struct.ratelimit_list_arg** %5, align 8
  %22 = getelementptr inbounds %struct.ratelimit_list_arg, %struct.ratelimit_list_arg* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rate_key*, %struct.rate_key** %6, align 8
  %25 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rate_key*, %struct.rate_key** %6, align 8
  %28 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @infra_find_ratelimit(i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.rate_data*, %struct.rate_data** %7, align 8
  %32 = load %struct.ratelimit_list_arg*, %struct.ratelimit_list_arg** %5, align 8
  %33 = getelementptr inbounds %struct.ratelimit_list_arg, %struct.ratelimit_list_arg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @infra_rate_max(%struct.rate_data* %31, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ratelimit_list_arg*, %struct.ratelimit_list_arg** %5, align 8
  %37 = getelementptr inbounds %struct.ratelimit_list_arg, %struct.ratelimit_list_arg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %59

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.rate_key*, %struct.rate_key** %6, align 8
  %48 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [257 x i8], [257 x i8]* %8, i64 0, i64 0
  %51 = call i32 @dname_str(i32 %49, i8* %50)
  %52 = load %struct.ratelimit_list_arg*, %struct.ratelimit_list_arg** %5, align 8
  %53 = getelementptr inbounds %struct.ratelimit_list_arg, %struct.ratelimit_list_arg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [257 x i8], [257 x i8]* %8, i64 0, i64 0
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @ssl_printf(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %46, %44
  ret void
}

declare dso_local i32 @infra_find_ratelimit(i32, i32, i32) #1

declare dso_local i32 @infra_rate_max(%struct.rate_data*, i32) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @ssl_printf(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
