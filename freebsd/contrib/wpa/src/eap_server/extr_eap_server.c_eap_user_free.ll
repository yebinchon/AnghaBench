; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_user_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_user_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_user = type { i32*, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_user_free(%struct.eap_user* %0) #0 {
  %2 = alloca %struct.eap_user*, align 8
  store %struct.eap_user* %0, %struct.eap_user** %2, align 8
  %3 = load %struct.eap_user*, %struct.eap_user** %2, align 8
  %4 = icmp eq %struct.eap_user* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.eap_user*, %struct.eap_user** %2, align 8
  %8 = getelementptr inbounds %struct.eap_user, %struct.eap_user* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.eap_user*, %struct.eap_user** %2, align 8
  %11 = getelementptr inbounds %struct.eap_user, %struct.eap_user* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @bin_clear_free(i32* %9, i32 %12)
  %14 = load %struct.eap_user*, %struct.eap_user** %2, align 8
  %15 = getelementptr inbounds %struct.eap_user, %struct.eap_user* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.eap_user*, %struct.eap_user** %2, align 8
  %17 = getelementptr inbounds %struct.eap_user, %struct.eap_user* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.eap_user*, %struct.eap_user** %2, align 8
  %20 = getelementptr inbounds %struct.eap_user, %struct.eap_user* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bin_clear_free(i32* %18, i32 %21)
  %23 = load %struct.eap_user*, %struct.eap_user** %2, align 8
  %24 = getelementptr inbounds %struct.eap_user, %struct.eap_user* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.eap_user*, %struct.eap_user** %2, align 8
  %26 = call i32 @os_free(%struct.eap_user* %25)
  br label %27

27:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @bin_clear_free(i32*, i32) #1

declare dso_local i32 @os_free(%struct.eap_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
