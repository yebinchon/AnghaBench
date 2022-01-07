; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_rec.c_xdrrec_getlong.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_rec.c_xdrrec_getlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*)* @xdrrec_getlong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdrrec_getlong(%struct.TYPE_5__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %21, 8
  br i1 %22, label %23, label %47

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = ptrtoint i64* %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = icmp uge i64 %29, 8
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @ntohl(i32 %34)
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 8
  store i64 %46, i64* %44, align 8
  br label %59

47:                                               ; preds = %23, %2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = bitcast i64* %8 to i8*
  %50 = call i32 @xdrrec_getbytes(%struct.TYPE_5__* %48, i8* %49, i32 8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %61

54:                                               ; preds = %47
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @ntohl(i32 %56)
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %31
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @xdrrec_getbytes(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
