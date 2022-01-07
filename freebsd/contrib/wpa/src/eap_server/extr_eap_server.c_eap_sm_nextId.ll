; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_nextId.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_nextId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i32)* @eap_sm_nextId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sm_nextId(%struct.eap_sm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = call i32 (...) @rand()
  %10 = and i32 %9, 255
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  %22 = and i32 %21, 255
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
