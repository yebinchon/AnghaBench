; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/authopt/extr_tests.c_default_authkey_restrict_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/authopt/extr_tests.c_default_authkey_restrict_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshauthopt = type { i32, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sshauthopt* ()* @default_authkey_restrict_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sshauthopt* @default_authkey_restrict_opts() #0 {
  %1 = alloca %struct.sshauthopt*, align 8
  %2 = call %struct.sshauthopt* (...) @sshauthopt_new()
  store %struct.sshauthopt* %2, %struct.sshauthopt** %1, align 8
  %3 = load %struct.sshauthopt*, %struct.sshauthopt** %1, align 8
  %4 = call i32 @ASSERT_PTR_NE(%struct.sshauthopt* %3, i32* null)
  %5 = load %struct.sshauthopt*, %struct.sshauthopt** %1, align 8
  %6 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.sshauthopt*, %struct.sshauthopt** %1, align 8
  %8 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.sshauthopt*, %struct.sshauthopt** %1, align 8
  %10 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.sshauthopt*, %struct.sshauthopt** %1, align 8
  %12 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.sshauthopt*, %struct.sshauthopt** %1, align 8
  %14 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.sshauthopt*, %struct.sshauthopt** %1, align 8
  %16 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.sshauthopt*, %struct.sshauthopt** %1, align 8
  ret %struct.sshauthopt* %17
}

declare dso_local %struct.sshauthopt* @sshauthopt_new(...) #1

declare dso_local i32 @ASSERT_PTR_NE(%struct.sshauthopt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
