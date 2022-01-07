; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2b.c_blake2b_init_keySUFFIX.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2b.c_blake2b_init_keySUFFIX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@BLAKE2B_BLOCKBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b_init_key(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %67

20:                                               ; preds = %15
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  store i32 -1, i32* %5, align 4
  br label %67

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 6
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 7
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 8
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 9
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 10
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @blake2b_init_param(i32* %47, %struct.TYPE_9__* %10)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %67

51:                                               ; preds = %28
  %52 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %11, align 8
  %55 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %12, align 8
  %56 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %57 = call i32 @memset(i32* %55, i32 0, i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @memcpy(i32* %55, i8* %58, i64 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %63 = call i32 @blake2b_update(i32* %61, i32* %55, i32 %62)
  %64 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %65 = call i32 @secure_zero_memory(i32* %55, i32 %64)
  %66 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %66)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %51, %50, %27, %19
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @blake2b_init_param(i32*, %struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @blake2b_update(i32*, i32*, i32) #1

declare dso_local i32 @secure_zero_memory(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
