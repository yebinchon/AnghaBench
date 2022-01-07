; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_start_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_start_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32*, %struct.module_env*, i32*, i32*, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.module_env = type { i32* }
%struct.auth_master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.module_env*, %struct.auth_master*)* @xfr_start_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfr_start_probe(%struct.auth_xfer* %0, %struct.module_env* %1, %struct.auth_master* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.auth_master*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %5, align 8
  store %struct.module_env* %1, %struct.module_env** %6, align 8
  store %struct.auth_master* %2, %struct.auth_master** %7, align 8
  %8 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %9 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %78

14:                                               ; preds = %3
  %15 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %16 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @have_probe_targets(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %14
  %23 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %24 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %31 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %38 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %45 = load %struct.module_env*, %struct.module_env** %6, align 8
  %46 = load %struct.auth_master*, %struct.auth_master** %7, align 8
  %47 = call i32 @xfr_start_transfer(%struct.auth_xfer* %44, %struct.module_env* %45, %struct.auth_master* %46)
  store i32 1, i32* %4, align 4
  br label %79

48:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %79

49:                                               ; preds = %29, %14
  %50 = load %struct.module_env*, %struct.module_env** %6, align 8
  %51 = getelementptr inbounds %struct.module_env, %struct.module_env* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %54 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i32* %52, i32** %56, align 8
  %57 = load %struct.module_env*, %struct.module_env** %6, align 8
  %58 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %59 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store %struct.module_env* %57, %struct.module_env** %61, align 8
  %62 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %63 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %67 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %71 = load %struct.auth_master*, %struct.auth_master** %7, align 8
  %72 = call i32 @xfr_probe_start_list(%struct.auth_xfer* %70, %struct.auth_master* %71)
  %73 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %74 = call i32 @xfr_probe_start_lookups(%struct.auth_xfer* %73)
  %75 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %76 = load %struct.module_env*, %struct.module_env** %6, align 8
  %77 = call i32 @xfr_probe_send_or_end(%struct.auth_xfer* %75, %struct.module_env* %76)
  store i32 1, i32* %4, align 4
  br label %79

78:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %49, %48, %43
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @have_probe_targets(i32*) #1

declare dso_local i32 @xfr_start_transfer(%struct.auth_xfer*, %struct.module_env*, %struct.auth_master*) #1

declare dso_local i32 @xfr_probe_start_list(%struct.auth_xfer*, %struct.auth_master*) #1

declare dso_local i32 @xfr_probe_start_lookups(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_probe_send_or_end(%struct.auth_xfer*, %struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
