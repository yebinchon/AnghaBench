; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_find_ce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_find_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { i32 }
%struct.auth_zone = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_data* (%struct.auth_zone*, i32**, i64*, i32*, i32, i64, i32*, i64)* @az_nsec3_find_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_data* @az_nsec3_find_ce(%struct.auth_zone* %0, i32** %1, i64* %2, i32* %3, i32 %4, i64 %5, i32* %6, i64 %7) #0 {
  %9 = alloca %struct.auth_data*, align 8
  %10 = alloca %struct.auth_zone*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.auth_data*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  br label %19

19:                                               ; preds = %39, %8
  %20 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %21 = load i32**, i32*** %11, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i64, i64* %15, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i64, i64* %17, align 8
  %29 = call %struct.auth_data* @az_nsec3_find_exact(%struct.auth_zone* %20, i32* %22, i64 %24, i32 %25, i64 %26, i32* %27, i64 %28)
  store %struct.auth_data* %29, %struct.auth_data** %18, align 8
  %30 = icmp eq %struct.auth_data* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %35 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store %struct.auth_data* null, %struct.auth_data** %9, align 8
  br label %46

39:                                               ; preds = %31
  %40 = load i32*, i32** %13, align 8
  store i32 1, i32* %40, align 4
  %41 = load i32**, i32*** %11, align 8
  %42 = load i64*, i64** %12, align 8
  %43 = call i32 @dname_remove_label(i32** %41, i64* %42)
  br label %19

44:                                               ; preds = %19
  %45 = load %struct.auth_data*, %struct.auth_data** %18, align 8
  store %struct.auth_data* %45, %struct.auth_data** %9, align 8
  br label %46

46:                                               ; preds = %44, %38
  %47 = load %struct.auth_data*, %struct.auth_data** %9, align 8
  ret %struct.auth_data* %47
}

declare dso_local %struct.auth_data* @az_nsec3_find_exact(%struct.auth_zone*, i32*, i64, i32, i64, i32*, i64) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
