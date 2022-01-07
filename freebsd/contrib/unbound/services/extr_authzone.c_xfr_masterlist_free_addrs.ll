; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_masterlist_free_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_masterlist_free_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_master = type { i32*, %struct.auth_master* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_master*)* @xfr_masterlist_free_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_masterlist_free_addrs(%struct.auth_master* %0) #0 {
  %2 = alloca %struct.auth_master*, align 8
  %3 = alloca %struct.auth_master*, align 8
  store %struct.auth_master* %0, %struct.auth_master** %2, align 8
  %4 = load %struct.auth_master*, %struct.auth_master** %2, align 8
  store %struct.auth_master* %4, %struct.auth_master** %3, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %7 = icmp ne %struct.auth_master* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %10 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %15 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @auth_free_master_addrs(i32* %16)
  %18 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %19 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %8
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  %23 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %22, i32 0, i32 1
  %24 = load %struct.auth_master*, %struct.auth_master** %23, align 8
  store %struct.auth_master* %24, %struct.auth_master** %3, align 8
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @auth_free_master_addrs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
