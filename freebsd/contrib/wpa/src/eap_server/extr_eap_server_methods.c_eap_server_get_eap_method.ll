; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_methods.c_eap_server_get_eap_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_methods.c_eap_server_get_eap_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { i32, i64, %struct.eap_method* }

@eap_methods = common dso_local global %struct.eap_method* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_method* @eap_server_get_eap_method(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.eap_method*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.eap_method*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load %struct.eap_method*, %struct.eap_method** @eap_methods, align 8
  store %struct.eap_method* %7, %struct.eap_method** %6, align 8
  br label %8

8:                                                ; preds = %26, %2
  %9 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %10 = icmp ne %struct.eap_method* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %13 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %19 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  store %struct.eap_method* %24, %struct.eap_method** %3, align 8
  br label %31

25:                                               ; preds = %17, %11
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %28 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %27, i32 0, i32 2
  %29 = load %struct.eap_method*, %struct.eap_method** %28, align 8
  store %struct.eap_method* %29, %struct.eap_method** %6, align 8
  br label %8

30:                                               ; preds = %8
  store %struct.eap_method* null, %struct.eap_method** %3, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  ret %struct.eap_method* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
