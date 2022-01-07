; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_perform_zone_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_perform_zone_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.local_zone = type { i32 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.local_zones*, i8*)* @perform_zone_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_zone_remove(i32* %0, %struct.local_zones* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.local_zones*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.local_zone*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.local_zones* %1, %struct.local_zones** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @parse_arg_name(i32* %12, i8* %13, i32** %8, i64* %10, i32* %9)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %19 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %18, i32 0, i32 0
  %20 = call i32 @lock_rw_wrlock(i32* %19)
  %21 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %26 = call %struct.local_zone* @local_zones_find(%struct.local_zones* %21, i32* %22, i64 %23, i32 %24, i32 %25)
  store %struct.local_zone* %26, %struct.local_zone** %11, align 8
  %27 = icmp ne %struct.local_zone* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %30 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %31 = call i32 @local_zones_del_zone(%struct.local_zones* %29, %struct.local_zone* %30)
  br label %32

32:                                               ; preds = %28, %17
  %33 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %34 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %33, i32 0, i32 0
  %35 = call i32 @lock_rw_unlock(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @free(i32* %36)
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @parse_arg_name(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local %struct.local_zone* @local_zones_find(%struct.local_zones*, i32*, i64, i32, i32) #1

declare dso_local i32 @local_zones_del_zone(%struct.local_zones*, %struct.local_zone*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
