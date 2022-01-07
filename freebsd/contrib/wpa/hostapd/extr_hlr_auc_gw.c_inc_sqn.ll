; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_inc_sqn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_inc_sqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ind_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @inc_sqn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_sqn(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @WPA_GET_BE32(i32* %6)
  %8 = trunc i64 %7 to i32
  %9 = shl i32 %8, 16
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 4
  %12 = call i64 @WPA_GET_BE16(i32* %11)
  %13 = trunc i64 %12 to i32
  %14 = or i32 %9, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ind_len, align 4
  %17 = ashr i32 %15, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @ind_len, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %20, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ind_len, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %3, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 16
  %33 = call i32 @WPA_PUT_BE32(i32* %30, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 65535
  %38 = call i32 @WPA_PUT_BE16(i32* %35, i32 %37)
  ret void
}

declare dso_local i64 @WPA_GET_BE32(i32*) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @WPA_PUT_BE32(i32*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
