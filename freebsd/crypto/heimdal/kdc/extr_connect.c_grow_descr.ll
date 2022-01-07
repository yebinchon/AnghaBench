; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_grow_descr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_grow_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descr = type { i64, i64, i8* }

@max_request_tcp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Request exceeds max request size (%lu bytes).\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to re-allocate %lu bytes.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.descr*, i64)* @grow_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_descr(i32 %0, i32* %1, %struct.descr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.descr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.descr* %2, %struct.descr** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.descr*, %struct.descr** %8, align 8
  %13 = getelementptr inbounds %struct.descr, %struct.descr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.descr*, %struct.descr** %8, align 8
  %16 = getelementptr inbounds %struct.descr, %struct.descr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %4
  %22 = load %struct.descr*, %struct.descr** %8, align 8
  %23 = getelementptr inbounds %struct.descr, %struct.descr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %24, %25
  %27 = call i64 @max(i32 1024, i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.descr*, %struct.descr** %8, align 8
  %29 = getelementptr inbounds %struct.descr, %struct.descr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* @max_request_tcp, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.descr*, %struct.descr** %8, align 8
  %39 = getelementptr inbounds %struct.descr, %struct.descr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @kdc_log(i32 %36, i32* %37, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load %struct.descr*, %struct.descr** %8, align 8
  %45 = call i32 @clear_descr(%struct.descr* %44)
  store i32 -1, i32* %5, align 4
  br label %79

46:                                               ; preds = %21
  %47 = load %struct.descr*, %struct.descr** %8, align 8
  %48 = getelementptr inbounds %struct.descr, %struct.descr* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.descr*, %struct.descr** %8, align 8
  %51 = getelementptr inbounds %struct.descr, %struct.descr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %52, %53
  %55 = call i8* @realloc(i8* %49, i64 %54)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.descr*, %struct.descr** %8, align 8
  %62 = getelementptr inbounds %struct.descr, %struct.descr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %63, %64
  %66 = call i32 @kdc_log(i32 %59, i32* %60, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load %struct.descr*, %struct.descr** %8, align 8
  %68 = call i32 @clear_descr(%struct.descr* %67)
  store i32 -1, i32* %5, align 4
  br label %79

69:                                               ; preds = %46
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.descr*, %struct.descr** %8, align 8
  %72 = getelementptr inbounds %struct.descr, %struct.descr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.descr*, %struct.descr** %8, align 8
  %77 = getelementptr inbounds %struct.descr, %struct.descr* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %69, %4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %58, %35
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, i64) #1

declare dso_local i32 @clear_descr(%struct.descr*) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
