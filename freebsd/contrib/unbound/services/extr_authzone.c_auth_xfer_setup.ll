; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.auth_xfer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.auth_xfer*)* @auth_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_xfer_setup(%struct.auth_zone* %0, %struct.auth_xfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca %struct.auth_xfer*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store %struct.auth_xfer* %1, %struct.auth_xfer** %5, align 8
  %6 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %7 = icmp ne %struct.auth_zone* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %10 = icmp ne %struct.auth_xfer* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 1, i32* %3, align 4
  br label %19

12:                                               ; preds = %8
  %13 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %14 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %15 = call i32 @xfr_find_soa(%struct.auth_zone* %13, %struct.auth_xfer* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17, %11
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @xfr_find_soa(%struct.auth_zone*, %struct.auth_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
