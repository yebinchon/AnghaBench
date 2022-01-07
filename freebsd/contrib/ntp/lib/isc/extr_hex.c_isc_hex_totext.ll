; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hex.c_isc_hex_totext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hex.c_isc_hex_totext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@hex = common dso_local global i8* null, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_hex_totext(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 2, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 3)
  br label %17

17:                                               ; preds = %69, %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %17
  %23 = load i8*, i8** @hex, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %29, 15
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %23, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** @hex, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %35, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  store i8 %44, i8* %45, align 1
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @str_totext(i8* %46, i32* %47)
  %49 = call i32 @RETERR(i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = call i32 @isc_region_consume(%struct.TYPE_4__* %50, i32 1)
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %22
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  %61 = mul i32 %60, 2
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @str_totext(i8* %65, i32* %66)
  %68 = call i32 @RETERR(i32 %67)
  br label %69

69:                                               ; preds = %64, %58, %22
  br label %17

70:                                               ; preds = %17
  %71 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %71
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @str_totext(i8*, i32*) #1

declare dso_local i32 @isc_region_consume(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
