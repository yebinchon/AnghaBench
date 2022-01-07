; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nai_realm = type { %struct.nai_realm*, %struct.nai_realm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nai_realm*, i64)* @nai_realm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nai_realm_free(%struct.nai_realm* %0, i64 %1) #0 {
  %3 = alloca %struct.nai_realm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nai_realm* %0, %struct.nai_realm** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.nai_realm*, %struct.nai_realm** %3, align 8
  %7 = icmp eq %struct.nai_realm* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %33

9:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.nai_realm*, %struct.nai_realm** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %15, i64 %16
  %18 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %17, i32 0, i32 1
  %19 = load %struct.nai_realm*, %struct.nai_realm** %18, align 8
  %20 = call i32 @os_free(%struct.nai_realm* %19)
  %21 = load %struct.nai_realm*, %struct.nai_realm** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %21, i64 %22
  %24 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %23, i32 0, i32 0
  %25 = load %struct.nai_realm*, %struct.nai_realm** %24, align 8
  %26 = call i32 @os_free(%struct.nai_realm* %25)
  br label %27

27:                                               ; preds = %14
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.nai_realm*, %struct.nai_realm** %3, align 8
  %32 = call i32 @os_free(%struct.nai_realm* %31)
  br label %33

33:                                               ; preds = %30, %8
  ret void
}

declare dso_local i32 @os_free(%struct.nai_realm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
