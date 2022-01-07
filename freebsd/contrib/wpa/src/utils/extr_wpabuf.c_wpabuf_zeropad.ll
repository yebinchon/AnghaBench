; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_wpabuf.c_wpabuf_zeropad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_wpabuf.c_wpabuf_zeropad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf* %0, i64 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %9 = icmp eq %struct.wpabuf* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = call i64 @wpabuf_len(%struct.wpabuf* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %18, %struct.wpabuf** %3, align 8
  br label %41

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.wpabuf* @wpabuf_alloc(i64 %20)
  store %struct.wpabuf* %21, %struct.wpabuf** %6, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %23 = icmp ne %struct.wpabuf* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  %29 = call i32 @wpabuf_put(%struct.wpabuf* %25, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %30, %31
  %33 = call i32 @os_memset(i32 %29, i32 0, i64 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %36 = call i32 @wpabuf_put_buf(%struct.wpabuf* %34, %struct.wpabuf* %35)
  br label %37

37:                                               ; preds = %24, %19
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %39 = call i32 @wpabuf_free(%struct.wpabuf* %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %40, %struct.wpabuf** %3, align 8
  br label %41

41:                                               ; preds = %37, %17, %10
  %42 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %42
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @os_memset(i32, i32, i64) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
