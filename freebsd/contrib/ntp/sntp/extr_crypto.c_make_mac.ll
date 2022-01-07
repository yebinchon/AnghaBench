; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_crypto.c_make_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_crypto.c_make_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_mac(i8* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 64
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %65

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %65

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = call i64 @compute_mac(i32* %19, i32 %36, i8* %37, i64 %39, i32 %42, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %33
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @memcpy(i8* %59, i32* %19, i64 %60)
  br label %62

62:                                               ; preds = %58, %33
  %63 = load i64, i64* %12, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %65

65:                                               ; preds = %62, %32, %27
  %66 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @compute_mac(i32*, i32, i8*, i64, i32, i64) #2

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
