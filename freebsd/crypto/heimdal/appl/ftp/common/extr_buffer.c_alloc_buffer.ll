; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/common/extr_buffer.c_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/common/extr_buffer.c_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@BUFSIZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @alloc_buffer(i8* %0, i64* %1, %struct.stat* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %9 = load i64, i64* @BUFSIZ, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @free(i8* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* %8, align 8
  %22 = call i8* @malloc(i64 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = load i64*, i64** %6, align 8
  store i64 0, i64* %27, align 8
  store i8* null, i8** %4, align 8
  br label %33

28:                                               ; preds = %20
  %29 = load i64, i64* %8, align 8
  %30 = load i64*, i64** %6, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %3
  %32 = load i8*, i8** %5, align 8
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i8*, i8** %4, align 8
  ret i8* %34
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
