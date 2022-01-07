; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_free_device_list_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_free_device_list_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_device_1_0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ibv_free_device_list_1_0(%struct.ibv_device_1_0** %0) #0 {
  %2 = alloca %struct.ibv_device_1_0**, align 8
  %3 = alloca %struct.ibv_device_1_0**, align 8
  store %struct.ibv_device_1_0** %0, %struct.ibv_device_1_0*** %2, align 8
  %4 = load %struct.ibv_device_1_0**, %struct.ibv_device_1_0*** %2, align 8
  store %struct.ibv_device_1_0** %4, %struct.ibv_device_1_0*** %3, align 8
  br label %5

5:                                                ; preds = %9, %1
  %6 = load %struct.ibv_device_1_0**, %struct.ibv_device_1_0*** %3, align 8
  %7 = load %struct.ibv_device_1_0*, %struct.ibv_device_1_0** %6, align 8
  %8 = icmp ne %struct.ibv_device_1_0* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.ibv_device_1_0**, %struct.ibv_device_1_0*** %3, align 8
  %11 = load %struct.ibv_device_1_0*, %struct.ibv_device_1_0** %10, align 8
  %12 = bitcast %struct.ibv_device_1_0* %11 to i32******
  %13 = call i32 @free(i32****** %12)
  %14 = load %struct.ibv_device_1_0**, %struct.ibv_device_1_0*** %3, align 8
  %15 = getelementptr inbounds %struct.ibv_device_1_0*, %struct.ibv_device_1_0** %14, i32 1
  store %struct.ibv_device_1_0** %15, %struct.ibv_device_1_0*** %3, align 8
  br label %5

16:                                               ; preds = %5
  %17 = load %struct.ibv_device_1_0**, %struct.ibv_device_1_0*** %2, align 8
  %18 = getelementptr inbounds %struct.ibv_device_1_0*, %struct.ibv_device_1_0** %17, i64 -1
  %19 = load %struct.ibv_device_1_0*, %struct.ibv_device_1_0** %18, align 8
  %20 = bitcast %struct.ibv_device_1_0* %19 to i8*
  %21 = call i32 @ibv_free_device_list(i8* %20)
  %22 = load %struct.ibv_device_1_0**, %struct.ibv_device_1_0*** %2, align 8
  %23 = getelementptr inbounds %struct.ibv_device_1_0*, %struct.ibv_device_1_0** %22, i64 -1
  %24 = bitcast %struct.ibv_device_1_0** %23 to i32******
  %25 = call i32 @free(i32****** %24)
  ret void
}

declare dso_local i32 @free(i32******) #1

declare dso_local i32 @ibv_free_device_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
