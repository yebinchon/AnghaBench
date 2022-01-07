; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_probe_copy_masters_for_allow_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_probe_copy_masters_for_allow_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.auth_master*, %struct.TYPE_2__* }
%struct.auth_master = type { %struct.auth_master* }
%struct.TYPE_2__ = type { %struct.auth_master* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*)* @probe_copy_masters_for_allow_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_copy_masters_for_allow_notify(%struct.auth_xfer* %0) #0 {
  %2 = alloca %struct.auth_xfer*, align 8
  %3 = alloca %struct.auth_master*, align 8
  %4 = alloca %struct.auth_master*, align 8
  %5 = alloca %struct.auth_master*, align 8
  %6 = alloca %struct.auth_master*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %2, align 8
  store %struct.auth_master* null, %struct.auth_master** %3, align 8
  store %struct.auth_master* null, %struct.auth_master** %4, align 8
  %7 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.auth_master*, %struct.auth_master** %10, align 8
  store %struct.auth_master* %11, %struct.auth_master** %5, align 8
  br label %12

12:                                               ; preds = %39, %1
  %13 = load %struct.auth_master*, %struct.auth_master** %5, align 8
  %14 = icmp ne %struct.auth_master* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load %struct.auth_master*, %struct.auth_master** %5, align 8
  %17 = call %struct.auth_master* @auth_master_copy(%struct.auth_master* %16)
  store %struct.auth_master* %17, %struct.auth_master** %6, align 8
  %18 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %19 = icmp ne %struct.auth_master* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %22 = call i32 @auth_free_masters(%struct.auth_master* %21)
  br label %51

23:                                               ; preds = %15
  %24 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %25 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %24, i32 0, i32 0
  store %struct.auth_master* null, %struct.auth_master** %25, align 8
  %26 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %27 = icmp ne %struct.auth_master* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %30 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %31 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %30, i32 0, i32 0
  store %struct.auth_master* %29, %struct.auth_master** %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %34 = icmp ne %struct.auth_master* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  store %struct.auth_master* %36, %struct.auth_master** %3, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  store %struct.auth_master* %38, %struct.auth_master** %4, align 8
  br label %39

39:                                               ; preds = %37
  %40 = load %struct.auth_master*, %struct.auth_master** %5, align 8
  %41 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %40, i32 0, i32 0
  %42 = load %struct.auth_master*, %struct.auth_master** %41, align 8
  store %struct.auth_master* %42, %struct.auth_master** %5, align 8
  br label %12

43:                                               ; preds = %12
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %45 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %44, i32 0, i32 0
  %46 = load %struct.auth_master*, %struct.auth_master** %45, align 8
  %47 = call i32 @auth_free_masters(%struct.auth_master* %46)
  %48 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %49 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %50 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %49, i32 0, i32 0
  store %struct.auth_master* %48, %struct.auth_master** %50, align 8
  br label %51

51:                                               ; preds = %43, %20
  ret void
}

declare dso_local %struct.auth_master* @auth_master_copy(%struct.auth_master*) #1

declare dso_local i32 @auth_free_masters(%struct.auth_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
