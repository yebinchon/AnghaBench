; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_netif_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_netif_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iodesc*, i8**, i64)* @pxe_netif_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxe_netif_get(%struct.iodesc* %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.iodesc*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.iodesc* %0, %struct.iodesc** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %9, align 4
  %10 = call i64 (...) @getsecs()
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %24, %3
  %12 = call i64 (...) @getsecs()
  %13 = load i64, i64* %7, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = call i32 @pxe_netif_receive(i8** %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  br label %25

24:                                               ; preds = %17
  br label %11

25:                                               ; preds = %21, %11
  %26 = load i32, i32* %9, align 4
  ret i32 %26
}

declare dso_local i64 @getsecs(...) #1

declare dso_local i32 @pxe_netif_receive(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
