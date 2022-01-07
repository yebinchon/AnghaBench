; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_auth2_read_banner.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_auth2_read_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @auth2_read_banner() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* null, i8** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 4
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %55

12:                                               ; preds = %0
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @fstat(i32 %13, %struct.stat* %2)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @close(i32 %17)
  store i8* null, i8** %1, align 8
  br label %55

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1048576
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @close(i32 %28)
  store i8* null, i8** %1, align 8
  br label %55

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  %36 = call i8* @xmalloc(i64 %35)
  store i8* %36, i8** %3, align 8
  %37 = load i32, i32* @read, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @atomicio(i32 %37, i32 %38, i8* %39, i64 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @free(i8* %48)
  store i8* null, i8** %1, align 8
  br label %55

50:                                               ; preds = %30
  %51 = load i8*, i8** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %3, align 8
  store i8* %54, i8** %1, align 8
  br label %55

55:                                               ; preds = %50, %47, %27, %16, %11
  %56 = load i8*, i8** %1, align 8
  ret i8* %56
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @atomicio(i32, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
