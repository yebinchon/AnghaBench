; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_get_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 31
  %6 = mul nsw i32 2, %5
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 5
  %10 = and i32 %9, 63
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 11
  %14 = and i32 %13, 31
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 31
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = ashr i32 %20, 21
  %22 = and i32 %21, 15
  %23 = sub nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %2, align 4
  %26 = ashr i32 %25, 25
  %27 = and i32 %26, 127
  %28 = add nsw i32 %27, 80
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 6
  store i32 -1, i32* %30, align 4
  %31 = call i32 @mktime(%struct.tm* %3)
  ret i32 %31
}

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
