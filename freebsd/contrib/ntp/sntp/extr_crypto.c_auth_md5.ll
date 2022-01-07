; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_crypto.c_auth_md5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_crypto.c_auth_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_md5(i8* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = mul nuw i64 4, %18
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %70

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @compute_mac(i32* %20, i32 %33, i32* %34, i64 %36, i32 %39, i64 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 4
  %46 = load i32*, i32** %11, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %30
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %53, %30
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32*, i32** %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @memcmp(i32* %20, i32* %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i1 [ false, %56 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %67, %28
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @compute_mac(i32*, i32, i32*, i64, i32, i64) #2

declare dso_local i32 @memcmp(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
