; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmask.c_find_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmask.c_find_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle = type { i64, i32, i8*, %struct.handle* }

@.str = private unnamed_addr constant [32 x i8] c"monger switched type on handle!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.handle*, i64, i32)* @find_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_handle(%struct.handle* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.handle* %0, %struct.handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %38

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %33, %11
  %13 = load %struct.handle*, %struct.handle** %5, align 8
  %14 = icmp ne %struct.handle* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load %struct.handle*, %struct.handle** %5, align 8
  %17 = getelementptr inbounds %struct.handle, %struct.handle* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.handle*, %struct.handle** %5, align 8
  %24 = getelementptr inbounds %struct.handle, %struct.handle* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.handle*, %struct.handle** %5, align 8
  %29 = getelementptr inbounds %struct.handle, %struct.handle* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %4, align 8
  br label %38

31:                                               ; preds = %21
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %15
  %34 = load %struct.handle*, %struct.handle** %5, align 8
  %35 = getelementptr inbounds %struct.handle, %struct.handle* %34, i32 0, i32 3
  %36 = load %struct.handle*, %struct.handle** %35, align 8
  store %struct.handle* %36, %struct.handle** %5, align 8
  br label %12

37:                                               ; preds = %12
  store i8* null, i8** %4, align 8
  br label %38

38:                                               ; preds = %37, %27, %10
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
