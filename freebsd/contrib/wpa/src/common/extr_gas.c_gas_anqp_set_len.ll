; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_anqp_set_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_anqp_set_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gas_anqp_set_len(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %7 = icmp eq %struct.wpabuf* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %10 = call i64 @wpabuf_len(%struct.wpabuf* %9)
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  br label %47

13:                                               ; preds = %8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %15 = call i32* @wpabuf_head_u8(%struct.wpabuf* %14)
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %22 [
    i32 129, label %19
    i32 128, label %20
    i32 130, label %21
  ]

19:                                               ; preds = %13
  store i64 7, i64* %4, align 8
  br label %23

20:                                               ; preds = %13
  store i64 11, i64* %4, align 8
  br label %23

21:                                               ; preds = %13
  store i64 12, i64* %4, align 8
  br label %23

22:                                               ; preds = %13
  br label %47

23:                                               ; preds = %21, %20, %19
  %24 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %25 = call i64 @wpabuf_len(%struct.wpabuf* %24)
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 2
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %47

30:                                               ; preds = %23
  %31 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %32 = call i32* @wpabuf_mhead_u8(%struct.wpabuf* %31)
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %37 = call i64 @wpabuf_put(%struct.wpabuf* %36, i32 0)
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32*, i32** %5, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = sub nsw i64 %43, 2
  %45 = trunc i64 %44 to i32
  %46 = call i32 @WPA_PUT_LE16(i32* %35, i32 %45)
  br label %47

47:                                               ; preds = %30, %29, %22, %12
  ret void
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_mhead_u8(%struct.wpabuf*) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i64 @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
