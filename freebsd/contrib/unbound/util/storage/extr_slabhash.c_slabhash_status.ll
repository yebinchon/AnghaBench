; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabhash = type { i64, i32*, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Slabhash %s: %u tables mask=%x shift=%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"table %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slabhash_status(%struct.slabhash* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.slabhash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [17 x i8], align 16
  store %struct.slabhash* %0, %struct.slabhash** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.slabhash*, %struct.slabhash** %4, align 8
  %11 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.slabhash*, %struct.slabhash** %4, align 8
  %15 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.slabhash*, %struct.slabhash** %4, align 8
  %19 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @log_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %13, i32 %17, i32 %20)
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %42, %3
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.slabhash*, %struct.slabhash** %4, align 8
  %25 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @snprintf(i8* %29, i32 17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.slabhash*, %struct.slabhash** %4, align 8
  %34 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @lruhash_status(i32 %38, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %28
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %22

45:                                               ; preds = %22
  ret void
}

declare dso_local i32 @log_info(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @lruhash_status(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
