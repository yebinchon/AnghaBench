; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_cdeque_push_back.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_cdeque_push_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdeque = type { i32, i32, i64*, i64 }

@CDE_PARAM = common dso_local global i32 0, align 4
@CDE_OUT_OF_BOUNDS = common dso_local global i32 0, align 4
@CDE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdeque*, i8*)* @cdeque_push_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdeque_push_back(%struct.cdeque* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdeque*, align 8
  %5 = alloca i8*, align 8
  store %struct.cdeque* %0, %struct.cdeque** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %7 = icmp eq %struct.cdeque* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @CDE_PARAM, align 4
  store i32 %9, i32* %3, align 4
  br label %47

10:                                               ; preds = %2
  %11 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %12 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %15 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @CDE_OUT_OF_BOUNDS, align 4
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %10
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %25 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %28 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  store i64 %23, i64* %30, align 8
  %31 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %32 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  %35 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %36 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = and i64 %34, %38
  %40 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %41 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %43 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @CDE_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %21, %19, %8
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
