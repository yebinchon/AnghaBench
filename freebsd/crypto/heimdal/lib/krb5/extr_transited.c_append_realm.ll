; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_append_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_append_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_realm = type { %struct.tr_realm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tr_realm* (%struct.tr_realm*, %struct.tr_realm*)* @append_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tr_realm* @append_realm(%struct.tr_realm* %0, %struct.tr_realm* %1) #0 {
  %3 = alloca %struct.tr_realm*, align 8
  %4 = alloca %struct.tr_realm*, align 8
  %5 = alloca %struct.tr_realm*, align 8
  %6 = alloca %struct.tr_realm*, align 8
  store %struct.tr_realm* %0, %struct.tr_realm** %4, align 8
  store %struct.tr_realm* %1, %struct.tr_realm** %5, align 8
  %7 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  %8 = icmp eq %struct.tr_realm* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.tr_realm*, %struct.tr_realm** %5, align 8
  %11 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %10, i32 0, i32 0
  store %struct.tr_realm* null, %struct.tr_realm** %11, align 8
  %12 = load %struct.tr_realm*, %struct.tr_realm** %5, align 8
  store %struct.tr_realm* %12, %struct.tr_realm** %3, align 8
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  store %struct.tr_realm* %14, %struct.tr_realm** %6, align 8
  br label %15

15:                                               ; preds = %20, %13
  %16 = load %struct.tr_realm*, %struct.tr_realm** %6, align 8
  %17 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %16, i32 0, i32 0
  %18 = load %struct.tr_realm*, %struct.tr_realm** %17, align 8
  %19 = icmp ne %struct.tr_realm* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.tr_realm*, %struct.tr_realm** %6, align 8
  %22 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %21, i32 0, i32 0
  %23 = load %struct.tr_realm*, %struct.tr_realm** %22, align 8
  store %struct.tr_realm* %23, %struct.tr_realm** %6, align 8
  br label %15

24:                                               ; preds = %15
  %25 = load %struct.tr_realm*, %struct.tr_realm** %5, align 8
  %26 = load %struct.tr_realm*, %struct.tr_realm** %6, align 8
  %27 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %26, i32 0, i32 0
  store %struct.tr_realm* %25, %struct.tr_realm** %27, align 8
  %28 = load %struct.tr_realm*, %struct.tr_realm** %4, align 8
  store %struct.tr_realm* %28, %struct.tr_realm** %3, align 8
  br label %29

29:                                               ; preds = %24, %9
  %30 = load %struct.tr_realm*, %struct.tr_realm** %3, align 8
  ret %struct.tr_realm* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
