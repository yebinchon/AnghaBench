; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob-compat11.c_err_aborted.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob-compat11.c_err_aborted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 (i8*, i32)* }

@GLOB_ERR = common dso_local global i32 0, align 4
@GLOB_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*)* @err_aborted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @err_aborted(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64 (i8*, i32)*, i64 (i8*, i32)** %9, align 8
  %11 = icmp ne i64 (i8*, i32)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64 (i8*, i32)*, i64 (i8*, i32)** %14, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 %15(i8* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %12, %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GLOB_ERR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20, %12
  %28 = load i32, i32* @GLOB_ABORTED, align 4
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
