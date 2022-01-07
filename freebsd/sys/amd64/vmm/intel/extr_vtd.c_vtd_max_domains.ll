; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_max_domains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_max_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtdmap = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"vtd_max_domains: invalid value of nd (0x%0x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtdmap*)* @vtd_max_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtd_max_domains(%struct.vtdmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtdmap*, align 8
  %4 = alloca i32, align 4
  store %struct.vtdmap* %0, %struct.vtdmap** %3, align 8
  %5 = load %struct.vtdmap*, %struct.vtdmap** %3, align 8
  %6 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @VTD_CAP_ND(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %17 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %12
    i32 3, label %13
    i32 4, label %14
    i32 5, label %15
    i32 6, label %16
  ]

10:                                               ; preds = %1
  store i32 16, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  store i32 256, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  store i32 1024, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  store i32 4096, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  store i32 16384, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  store i32 65536, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %10, %11, %12, %13, %14, %15, %16, %17
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @VTD_CAP_ND(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
