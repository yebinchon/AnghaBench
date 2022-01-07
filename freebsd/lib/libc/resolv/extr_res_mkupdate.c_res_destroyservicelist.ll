; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_destroyservicelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_destroyservicelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valuelist = type { %struct.valuelist*, %struct.valuelist*, %struct.valuelist* }

@servicelist = common dso_local global %struct.valuelist* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @res_destroyservicelist() #0 {
  %1 = alloca %struct.valuelist*, align 8
  %2 = alloca %struct.valuelist*, align 8
  %3 = load %struct.valuelist*, %struct.valuelist** @servicelist, align 8
  store %struct.valuelist* %3, %struct.valuelist** %1, align 8
  br label %4

4:                                                ; preds = %21, %0
  %5 = load %struct.valuelist*, %struct.valuelist** %1, align 8
  %6 = icmp ne %struct.valuelist* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load %struct.valuelist*, %struct.valuelist** %1, align 8
  %9 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %8, i32 0, i32 2
  %10 = load %struct.valuelist*, %struct.valuelist** %9, align 8
  store %struct.valuelist* %10, %struct.valuelist** %2, align 8
  %11 = load %struct.valuelist*, %struct.valuelist** %1, align 8
  %12 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %11, i32 0, i32 1
  %13 = load %struct.valuelist*, %struct.valuelist** %12, align 8
  %14 = call i32 @free(%struct.valuelist* %13)
  %15 = load %struct.valuelist*, %struct.valuelist** %1, align 8
  %16 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %15, i32 0, i32 0
  %17 = load %struct.valuelist*, %struct.valuelist** %16, align 8
  %18 = call i32 @free(%struct.valuelist* %17)
  %19 = load %struct.valuelist*, %struct.valuelist** %1, align 8
  %20 = call i32 @free(%struct.valuelist* %19)
  br label %21

21:                                               ; preds = %7
  %22 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  store %struct.valuelist* %22, %struct.valuelist** %1, align 8
  br label %4

23:                                               ; preds = %4
  store %struct.valuelist* null, %struct.valuelist** @servicelist, align 8
  ret void
}

declare dso_local i32 @free(%struct.valuelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
