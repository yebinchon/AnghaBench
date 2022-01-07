; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_methods.c_eap_peer_get_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_methods.c_eap_peer_get_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { %struct.eap_method* }

@eap_methods = common dso_local global %struct.eap_method* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_method* @eap_peer_get_methods(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_method*, align 8
  store i64* %0, i64** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.eap_method*, %struct.eap_method** @eap_methods, align 8
  store %struct.eap_method* %5, %struct.eap_method** %4, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.eap_method*, %struct.eap_method** %4, align 8
  %8 = icmp ne %struct.eap_method* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9
  %13 = load %struct.eap_method*, %struct.eap_method** %4, align 8
  %14 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %13, i32 0, i32 0
  %15 = load %struct.eap_method*, %struct.eap_method** %14, align 8
  store %struct.eap_method* %15, %struct.eap_method** %4, align 8
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64*, i64** %2, align 8
  store i64 %18, i64* %19, align 8
  %20 = load %struct.eap_method*, %struct.eap_method** @eap_methods, align 8
  ret %struct.eap_method* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
