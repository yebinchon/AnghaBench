; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_wpabuf.c_wpabuf_parse_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_wpabuf.c_wpabuf_parse_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wpabuf_parse_bin(i8* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @os_strlen(i8* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = and i64 %8, 1
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = udiv i64 %13, 2
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call %struct.wpabuf* @wpabuf_alloc(i64 %15)
  store %struct.wpabuf* %16, %struct.wpabuf** %5, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = icmp eq %struct.wpabuf* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %33

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @wpabuf_put(%struct.wpabuf* %22, i64 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @hexstr2bin(i8* %21, i32 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %30 = call i32 @wpabuf_free(%struct.wpabuf* %29)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %33

31:                                               ; preds = %20
  %32 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  store %struct.wpabuf* %32, %struct.wpabuf** %2, align 8
  br label %33

33:                                               ; preds = %31, %28, %19, %11
  %34 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %34
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i64) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
