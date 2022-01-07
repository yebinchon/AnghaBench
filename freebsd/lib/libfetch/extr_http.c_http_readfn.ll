; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_readfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_readfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpio = type { i64, i32, i64, i64, i64 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @http_readfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_readfn(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.httpio*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.httpio*
  store %struct.httpio* %11, %struct.httpio** %8, align 8
  %12 = load %struct.httpio*, %struct.httpio** %8, align 8
  %13 = getelementptr inbounds %struct.httpio, %struct.httpio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.httpio*, %struct.httpio** %8, align 8
  %19 = getelementptr inbounds %struct.httpio, %struct.httpio* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %91

23:                                               ; preds = %17
  %24 = load %struct.httpio*, %struct.httpio** %8, align 8
  %25 = getelementptr inbounds %struct.httpio, %struct.httpio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.httpio*, %struct.httpio** %8, align 8
  %30 = getelementptr inbounds %struct.httpio, %struct.httpio* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.httpio*, %struct.httpio** %8, align 8
  %33 = getelementptr inbounds %struct.httpio, %struct.httpio* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %28, %23
  %37 = load %struct.httpio*, %struct.httpio** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @http_fillbuf(%struct.httpio* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.httpio*, %struct.httpio** %8, align 8
  %43 = getelementptr inbounds %struct.httpio, %struct.httpio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* @errno, align 8
  %45 = load i64, i64* @EINTR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.httpio*, %struct.httpio** %8, align 8
  %49 = getelementptr inbounds %struct.httpio, %struct.httpio* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %41
  store i32 -1, i32* %4, align 4
  br label %91

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %91

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.httpio*, %struct.httpio** %8, align 8
  %59 = getelementptr inbounds %struct.httpio, %struct.httpio* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.httpio*, %struct.httpio** %8, align 8
  %62 = getelementptr inbounds %struct.httpio, %struct.httpio* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %57
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.httpio*, %struct.httpio** %8, align 8
  %74 = getelementptr inbounds %struct.httpio, %struct.httpio* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load %struct.httpio*, %struct.httpio** %8, align 8
  %78 = getelementptr inbounds %struct.httpio, %struct.httpio* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @memcpy(i8* %72, i32 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.httpio*, %struct.httpio** %8, align 8
  %87 = getelementptr inbounds %struct.httpio, %struct.httpio* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %71, %54, %50, %22, %16
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @http_fillbuf(%struct.httpio*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
