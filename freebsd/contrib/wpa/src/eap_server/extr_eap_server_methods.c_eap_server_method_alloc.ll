; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_methods.c_eap_server_method_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_methods.c_eap_server_method_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { i32, i32, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_method* @eap_server_method_alloc(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.eap_method*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.eap_method*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = call %struct.eap_method* @os_zalloc(i32 24)
  store %struct.eap_method* %11, %struct.eap_method** %10, align 8
  %12 = load %struct.eap_method*, %struct.eap_method** %10, align 8
  %13 = icmp eq %struct.eap_method* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.eap_method* null, %struct.eap_method** %5, align 8
  br label %29

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.eap_method*, %struct.eap_method** %10, align 8
  %18 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.eap_method*, %struct.eap_method** %10, align 8
  %21 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.eap_method*, %struct.eap_method** %10, align 8
  %24 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.eap_method*, %struct.eap_method** %10, align 8
  %27 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.eap_method*, %struct.eap_method** %10, align 8
  store %struct.eap_method* %28, %struct.eap_method** %5, align 8
  br label %29

29:                                               ; preds = %15, %14
  %30 = load %struct.eap_method*, %struct.eap_method** %5, align 8
  ret %struct.eap_method* %30
}

declare dso_local %struct.eap_method* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
