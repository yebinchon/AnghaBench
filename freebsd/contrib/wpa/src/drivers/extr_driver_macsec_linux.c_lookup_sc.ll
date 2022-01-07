; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_linux.c_lookup_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_linux.c_lookup_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link = type { i32 }
%struct.nl_cache = type { i32 }
%struct.nl_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtnl_link* (%struct.nl_cache*, i32, i32)* @lookup_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtnl_link* @lookup_sc(%struct.nl_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtnl_link*, align 8
  %5 = alloca %struct.nl_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtnl_link*, align 8
  %9 = alloca i8*, align 8
  store %struct.nl_cache* %0, %struct.nl_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.rtnl_link* (...) @rtnl_link_macsec_alloc()
  store %struct.rtnl_link* %10, %struct.rtnl_link** %8, align 8
  %11 = load %struct.rtnl_link*, %struct.rtnl_link** %8, align 8
  %12 = icmp ne %struct.rtnl_link* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.rtnl_link* null, %struct.rtnl_link** %4, align 8
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.rtnl_link*, %struct.rtnl_link** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rtnl_link_set_link(%struct.rtnl_link* %15, i32 %16)
  %18 = load %struct.rtnl_link*, %struct.rtnl_link** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @rtnl_link_macsec_set_sci(%struct.rtnl_link* %18, i32 %19)
  %21 = load %struct.nl_cache*, %struct.nl_cache** %5, align 8
  %22 = load %struct.rtnl_link*, %struct.rtnl_link** %8, align 8
  %23 = bitcast %struct.rtnl_link* %22 to %struct.nl_object*
  %24 = call i8* @nl_cache_find(%struct.nl_cache* %21, %struct.nl_object* %23)
  store i8* %24, i8** %9, align 8
  %25 = load %struct.rtnl_link*, %struct.rtnl_link** %8, align 8
  %26 = call i32 @rtnl_link_put(%struct.rtnl_link* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.rtnl_link*
  store %struct.rtnl_link* %28, %struct.rtnl_link** %4, align 8
  br label %29

29:                                               ; preds = %14, %13
  %30 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8
  ret %struct.rtnl_link* %30
}

declare dso_local %struct.rtnl_link* @rtnl_link_macsec_alloc(...) #1

declare dso_local i32 @rtnl_link_set_link(%struct.rtnl_link*, i32) #1

declare dso_local i32 @rtnl_link_macsec_set_sci(%struct.rtnl_link*, i32) #1

declare dso_local i8* @nl_cache_find(%struct.nl_cache*, %struct.nl_object*) #1

declare dso_local i32 @rtnl_link_put(%struct.rtnl_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
