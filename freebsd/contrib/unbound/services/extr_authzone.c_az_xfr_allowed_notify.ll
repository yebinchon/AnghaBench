; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_xfr_allowed_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_xfr_allowed_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.auth_master* }
%struct.auth_master = type { %struct.auth_master* }
%struct.sockaddr_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.sockaddr_storage*, i32, %struct.auth_master**)* @az_xfr_allowed_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_xfr_allowed_notify(%struct.auth_xfer* %0, %struct.sockaddr_storage* %1, i32 %2, %struct.auth_master** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auth_xfer*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.auth_master**, align 8
  %10 = alloca %struct.auth_master*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.auth_master** %3, %struct.auth_master*** %9, align 8
  %11 = load %struct.auth_xfer*, %struct.auth_xfer** %6, align 8
  %12 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %11, i32 0, i32 0
  %13 = load %struct.auth_master*, %struct.auth_master** %12, align 8
  store %struct.auth_master* %13, %struct.auth_master** %10, align 8
  br label %14

14:                                               ; preds = %26, %4
  %15 = load %struct.auth_master*, %struct.auth_master** %10, align 8
  %16 = icmp ne %struct.auth_master* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.auth_master*, %struct.auth_master** %10, align 8
  %19 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.auth_master**, %struct.auth_master*** %9, align 8
  %22 = call i64 @addr_matches_master(%struct.auth_master* %18, %struct.sockaddr_storage* %19, i32 %20, %struct.auth_master** %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %31

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.auth_master*, %struct.auth_master** %10, align 8
  %28 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %27, i32 0, i32 0
  %29 = load %struct.auth_master*, %struct.auth_master** %28, align 8
  store %struct.auth_master* %29, %struct.auth_master** %10, align 8
  br label %14

30:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i64 @addr_matches_master(%struct.auth_master*, %struct.sockaddr_storage*, i32, %struct.auth_master**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
