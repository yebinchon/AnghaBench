; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_crypto.c_v2_seal_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_crypto.c_v2_seal_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*, i32, i32*, %struct.TYPE_5__*)* @v2_seal_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @v2_seal_message(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* @EINVAL, align 8
  store i64 %23, i64* %6, align 8
  br label %71

24:                                               ; preds = %5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 16
  %29 = call i8* @malloc(i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* @ENOMEM, align 8
  store i64 %33, i64* %6, align 8
  br label %71

34:                                               ; preds = %24
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @RC4(i32* %35, i32 %38, i8* %41, i8* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = call i64 @v2_sign_message(%struct.TYPE_5__* %44, i8* %45, i32* %46, i32 %47, i8* %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %34
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i64, i64* %13, align 8
  store i64 %60, i64* %6, align 8
  br label %71

61:                                               ; preds = %34
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 16
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i64 0, i64* %6, align 8
  br label %71

71:                                               ; preds = %61, %57, %32, %22
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @RC4(i32*, i32, i8*, i8*) #1

declare dso_local i64 @v2_sign_message(%struct.TYPE_5__*, i8*, i32*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
