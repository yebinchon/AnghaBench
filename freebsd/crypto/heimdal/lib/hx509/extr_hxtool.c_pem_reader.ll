; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_pem_reader.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_pem_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pem_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Content-disposition\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i8*, i64, i8*)* @pem_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pem_reader(i32 %0, i8* %1, i32* %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pem_data*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = bitcast i8* %16 to %struct.pem_data*
  store %struct.pem_data* %17, %struct.pem_data** %14, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i32* @malloc(i64 %18)
  %20 = load %struct.pem_data*, %struct.pem_data** %14, align 8
  %21 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* %19, i32** %23, align 8
  %24 = load %struct.pem_data*, %struct.pem_data** %14, align 8
  %25 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %7, align 4
  br label %58

32:                                               ; preds = %6
  %33 = load %struct.pem_data*, %struct.pem_data** %14, align 8
  %34 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @memcpy(i32* %37, i8* %38, i64 %39)
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.pem_data*, %struct.pem_data** %14, align 8
  %43 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i8* @hx509_pem_find_header(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %32
  %51 = load i8*, i8** %15, align 8
  %52 = call i64 @strcasecmp(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.pem_data*, %struct.pem_data** %14, align 8
  %56 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %50, %32
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i8* @hx509_pem_find_header(i32*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
