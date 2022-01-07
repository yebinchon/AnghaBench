; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_gas_query.c_gas_query_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_gas_query.c_gas_query_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gas_query = type { i32, %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gas_query* @gas_query_init(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.gas_query*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.gas_query*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = call %struct.gas_query* @os_zalloc(i32 16)
  store %struct.gas_query* %5, %struct.gas_query** %4, align 8
  %6 = load %struct.gas_query*, %struct.gas_query** %4, align 8
  %7 = icmp eq %struct.gas_query* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.gas_query* null, %struct.gas_query** %2, align 8
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = load %struct.gas_query*, %struct.gas_query** %4, align 8
  %12 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %11, i32 0, i32 1
  store %struct.wpa_supplicant* %10, %struct.wpa_supplicant** %12, align 8
  %13 = load %struct.gas_query*, %struct.gas_query** %4, align 8
  %14 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %13, i32 0, i32 0
  %15 = call i32 @dl_list_init(i32* %14)
  %16 = load %struct.gas_query*, %struct.gas_query** %4, align 8
  store %struct.gas_query* %16, %struct.gas_query** %2, align 8
  br label %17

17:                                               ; preds = %9, %8
  %18 = load %struct.gas_query*, %struct.gas_query** %2, align 8
  ret %struct.gas_query* %18
}

declare dso_local %struct.gas_query* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
