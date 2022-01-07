; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_set_expiration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_set_expiration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.os_reltime = type { i32 }

@pmksa_cache_expire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsn_pmksa_cache*)* @pmksa_cache_set_expiration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmksa_cache_set_expiration(%struct.rsn_pmksa_cache* %0) #0 {
  %2 = alloca %struct.rsn_pmksa_cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.os_reltime, align 4
  store %struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache** %2, align 8
  %5 = load i32, i32* @pmksa_cache_expire, align 4
  %6 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %7 = call i32 @eloop_cancel_timeout(i32 %5, %struct.rsn_pmksa_cache* %6, i32* null)
  %8 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %9 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = call i32 @os_get_reltime(%struct.os_reltime* %4)
  %15 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %16 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @pmksa_cache_expire, align 4
  %30 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %2, align 8
  %31 = call i32 @eloop_register_timeout(i32 %28, i32 0, i32 %29, %struct.rsn_pmksa_cache* %30, i32* null)
  br label %32

32:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.rsn_pmksa_cache*, i32*) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.rsn_pmksa_cache*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
