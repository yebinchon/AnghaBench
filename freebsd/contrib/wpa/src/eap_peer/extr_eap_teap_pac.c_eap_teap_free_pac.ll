; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_free_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_free_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_pac = type { %struct.eap_teap_pac*, %struct.eap_teap_pac*, %struct.eap_teap_pac*, %struct.eap_teap_pac*, %struct.eap_teap_pac* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_teap_free_pac(%struct.eap_teap_pac* %0) #0 {
  %2 = alloca %struct.eap_teap_pac*, align 8
  store %struct.eap_teap_pac* %0, %struct.eap_teap_pac** %2, align 8
  %3 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %4 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %3, i32 0, i32 4
  %5 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %4, align 8
  %6 = call i32 @os_free(%struct.eap_teap_pac* %5)
  %7 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %8 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %7, i32 0, i32 3
  %9 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %8, align 8
  %10 = call i32 @os_free(%struct.eap_teap_pac* %9)
  %11 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %12 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %11, i32 0, i32 2
  %13 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %12, align 8
  %14 = call i32 @os_free(%struct.eap_teap_pac* %13)
  %15 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %16 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %15, i32 0, i32 1
  %17 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %16, align 8
  %18 = call i32 @os_free(%struct.eap_teap_pac* %17)
  %19 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %20 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %19, i32 0, i32 0
  %21 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %20, align 8
  %22 = call i32 @os_free(%struct.eap_teap_pac* %21)
  %23 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %2, align 8
  %24 = call i32 @os_free(%struct.eap_teap_pac* %23)
  ret void
}

declare dso_local i32 @os_free(%struct.eap_teap_pac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
