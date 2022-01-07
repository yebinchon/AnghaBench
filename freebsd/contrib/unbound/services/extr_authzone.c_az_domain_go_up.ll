; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_domain_go_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_domain_go_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.auth_data = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_data* (%struct.auth_zone*, %struct.auth_data*)* @az_domain_go_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_data* @az_domain_go_up(%struct.auth_zone* %0, %struct.auth_data* %1) #0 {
  %3 = alloca %struct.auth_data*, align 8
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca %struct.auth_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store %struct.auth_data* %1, %struct.auth_data** %5, align 8
  %8 = load %struct.auth_data*, %struct.auth_data** %5, align 8
  %9 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.auth_data*, %struct.auth_data** %5, align 8
  %12 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @dname_is_root(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = call i32 @dname_remove_label(i32** %6, i64* %7)
  %21 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %21, i32* %22, i64 %23)
  store %struct.auth_data* %24, %struct.auth_data** %5, align 8
  %25 = icmp ne %struct.auth_data* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.auth_data*, %struct.auth_data** %5, align 8
  store %struct.auth_data* %27, %struct.auth_data** %3, align 8
  br label %30

28:                                               ; preds = %19
  br label %14

29:                                               ; preds = %14
  store %struct.auth_data* null, %struct.auth_data** %3, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.auth_data*, %struct.auth_data** %3, align 8
  ret %struct.auth_data* %31
}

declare dso_local i32 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
