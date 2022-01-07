; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_candidate_ce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_candidate_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.query_info = type { i32* }
%struct.auth_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_data* (%struct.auth_zone*, %struct.query_info*, %struct.auth_data*)* @az_find_candidate_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_data* @az_find_candidate_ce(%struct.auth_zone* %0, %struct.query_info* %1, %struct.auth_data* %2) #0 {
  %4 = alloca %struct.auth_data*, align 8
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca %struct.auth_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %5, align 8
  store %struct.query_info* %1, %struct.query_info** %6, align 8
  store %struct.auth_data* %2, %struct.auth_data** %7, align 8
  %10 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %11 = icmp ne %struct.auth_data* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.query_info*, %struct.query_info** %6, align 8
  %14 = getelementptr inbounds %struct.query_info, %struct.query_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %17 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @dname_get_shared_topdomain(i32* %15, i32 %18)
  store i32* %19, i32** %8, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.query_info*, %struct.query_info** %6, align 8
  %22 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  br label %24

24:                                               ; preds = %20, %12
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @dname_count_size_labels(i32* %25, i64* %9)
  %27 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %27, i32* %28, i64 %29)
  store %struct.auth_data* %30, %struct.auth_data** %7, align 8
  br label %31

31:                                               ; preds = %40, %24
  %32 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %33 = icmp ne %struct.auth_data* %32, null
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @dname_is_root(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store %struct.auth_data* null, %struct.auth_data** %4, align 8
  br label %48

40:                                               ; preds = %35
  %41 = call i32 @dname_remove_label(i32** %8, i64* %9)
  %42 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %42, i32* %43, i64 %44)
  store %struct.auth_data* %45, %struct.auth_data** %7, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  store %struct.auth_data* %47, %struct.auth_data** %4, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = load %struct.auth_data*, %struct.auth_data** %4, align 8
  ret %struct.auth_data* %49
}

declare dso_local i32* @dname_get_shared_topdomain(i32*, i32) #1

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32*, i64) #1

declare dso_local i64 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
