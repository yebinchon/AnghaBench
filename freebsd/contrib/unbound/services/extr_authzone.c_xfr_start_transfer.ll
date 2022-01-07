; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_start_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.module_env*, i32*, i32*, i32* }
%struct.module_env = type { i32* }
%struct.auth_master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*, %struct.auth_master*)* @xfr_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_start_transfer(%struct.auth_xfer* %0, %struct.module_env* %1, %struct.auth_master* %2) #0 {
  %4 = alloca %struct.auth_xfer*, align 8
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca %struct.auth_master*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %4, align 8
  store %struct.module_env* %1, %struct.module_env** %5, align 8
  store %struct.auth_master* %2, %struct.auth_master** %6, align 8
  %7 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %8 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @log_assert(i32 %11)
  %13 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %14 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @log_assert(i32 %19)
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %22 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @log_assert(i32 %27)
  %29 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %30 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @log_assert(i32 %35)
  %37 = load %struct.module_env*, %struct.module_env** %5, align 8
  %38 = getelementptr inbounds %struct.module_env, %struct.module_env* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %41 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32* %39, i32** %43, align 8
  %44 = load %struct.module_env*, %struct.module_env** %5, align 8
  %45 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %46 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.module_env* %44, %struct.module_env** %48, align 8
  %49 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %50 = load %struct.auth_master*, %struct.auth_master** %6, align 8
  %51 = call i32 @xfr_transfer_start_list(%struct.auth_xfer* %49, %struct.auth_master* %50)
  %52 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %53 = call i32 @xfr_transfer_start_lookups(%struct.auth_xfer* %52)
  %54 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %55 = load %struct.module_env*, %struct.module_env** %5, align 8
  %56 = call i32 @xfr_transfer_nexttarget_or_end(%struct.auth_xfer* %54, %struct.module_env* %55)
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @xfr_transfer_start_list(%struct.auth_xfer*, %struct.auth_master*) #1

declare dso_local i32 @xfr_transfer_start_lookups(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_transfer_nexttarget_or_end(%struct.auth_xfer*, %struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
