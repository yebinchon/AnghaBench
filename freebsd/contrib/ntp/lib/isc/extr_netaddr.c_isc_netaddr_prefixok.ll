; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_netaddr.c_isc_netaddr_prefixok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_netaddr.c_isc_netaddr_prefixok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@isc_netaddr_prefixok.zeros = internal constant [16 x i8] zeroinitializer, align 16
@ISC_R_RANGE = common dso_local global i32 0, align 4
@ISC_R_NOTIMPLEMENTED = common dso_local global i32 0, align 4
@ISC_R_FAILURE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_netaddr_prefixok(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %33 [
    i32 129, label %13
    i32 128, label %23
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %9, align 8
  store i32 4, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %18, 32
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @ISC_R_RANGE, align 4
  store i32 %21, i32* %3, align 4
  br label %72

22:                                               ; preds = %13
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %9, align 8
  store i32 16, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ugt i32 %28, 128
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @ISC_R_RANGE, align 4
  store i32 %31, i32* %3, align 4
  br label %72

32:                                               ; preds = %23
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @ISC_R_NOTIMPLEMENTED, align 4
  store i32 %34, i32* %3, align 4
  br label %72

35:                                               ; preds = %32, %22
  %36 = load i32, i32* %5, align 4
  %37 = udiv i32 %36, 8
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = urem i32 %38, 8
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 255, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @ISC_R_FAILURE, align 4
  store i32 %54, i32* %3, align 4
  br label %72

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %35
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub i32 %63, %64
  %66 = call i64 @memcmp(i8* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @isc_netaddr_prefixok.zeros, i64 0, i64 0), i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @ISC_R_FAILURE, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %68, %53, %33, %30, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
