; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_2835_arm.c_copyout_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_2835_arm.c_copyout_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i64)* @copyout_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyout_page(i32 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @pmap_quick_enter_page(i32 %11)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %5, align 4
  br label %28

18:                                               ; preds = %4
  %19 = load i32*, i32** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @memcpy(i32* %21, i8* %22, i64 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 @pmap_quick_remove_page(i32 %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @pmap_quick_enter_page(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @pmap_quick_remove_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
