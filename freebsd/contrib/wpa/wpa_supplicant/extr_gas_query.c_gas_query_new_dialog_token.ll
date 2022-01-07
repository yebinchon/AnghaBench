; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_gas_query.c_gas_query_new_dialog_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_gas_query.c_gas_query_new_dialog_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gas_query = type { i32 }

@gas_query_new_dialog_token.next_start = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gas_query*, i32*)* @gas_query_new_dialog_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gas_query_new_dialog_token(%struct.gas_query* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gas_query*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gas_query* %0, %struct.gas_query** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.gas_query*, %struct.gas_query** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @gas_query_new_dialog_token.next_start, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = srem i32 %15, 256
  %17 = call i64 @gas_query_dialog_token_available(%struct.gas_query* %11, i32* %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %24

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %7

24:                                               ; preds = %19, %7
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %37

28:                                               ; preds = %24
  %29 = load i32, i32* @gas_query_new_dialog_token.next_start, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = srem i32 %31, 256
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = srem i32 %34, 256
  store i32 %35, i32* @gas_query_new_dialog_token.next_start, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %27
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @gas_query_dialog_token_available(%struct.gas_query*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
