; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_deinit_data_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_deinit_data_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_key = type { i32, %struct.data_key* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_key*)* @ieee802_1x_kay_deinit_data_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_kay_deinit_data_key(%struct.data_key* %0) #0 {
  %2 = alloca %struct.data_key*, align 8
  store %struct.data_key* %0, %struct.data_key** %2, align 8
  %3 = load %struct.data_key*, %struct.data_key** %2, align 8
  %4 = icmp ne %struct.data_key* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load %struct.data_key*, %struct.data_key** %2, align 8
  %8 = getelementptr inbounds %struct.data_key, %struct.data_key* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.data_key*, %struct.data_key** %2, align 8
  %12 = getelementptr inbounds %struct.data_key, %struct.data_key* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %23

16:                                               ; preds = %6
  %17 = load %struct.data_key*, %struct.data_key** %2, align 8
  %18 = getelementptr inbounds %struct.data_key, %struct.data_key* %17, i32 0, i32 1
  %19 = load %struct.data_key*, %struct.data_key** %18, align 8
  %20 = call i32 @os_free(%struct.data_key* %19)
  %21 = load %struct.data_key*, %struct.data_key** %2, align 8
  %22 = call i32 @os_free(%struct.data_key* %21)
  br label %23

23:                                               ; preds = %16, %15, %5
  ret void
}

declare dso_local i32 @os_free(%struct.data_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
