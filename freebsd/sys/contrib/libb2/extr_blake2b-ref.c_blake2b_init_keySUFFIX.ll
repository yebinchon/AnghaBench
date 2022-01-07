; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2b-ref.c_blake2b_init_keySUFFIX.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2b-ref.c_blake2b_init_keySUFFIX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i8**, i8**, i64, i64, i32, i32, i8*, i8* }

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
  %10 = alloca [1 x %struct.TYPE_3__], align 16
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
  br label %87

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %20
  store i32 -1, i32* %5, align 4
  br label %87

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 10
  store i8* %33, i8** %35, align 16
  %36 = load i64, i64* %9, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 9
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 16
  %42 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 8
  %46 = call i32 @store32(i32* %45, i32 0)
  %47 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  %49 = call i32 @store64(i32* %48, i32 0)
  %50 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store i64 0, i64* %53, align 16
  %54 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = call i32 @memset(i8** %56, i32 0, i32 8)
  %58 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 16
  %61 = call i32 @memset(i8** %60, i32 0, i32 8)
  %62 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i8**, i8*** %63, align 8
  %65 = call i32 @memset(i8** %64, i32 0, i32 8)
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %68 = call i64 @blake2b_init_param(i32* %66, %struct.TYPE_3__* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %87

71:                                               ; preds = %31
  %72 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %11, align 8
  %75 = alloca i8*, i64 %73, align 16
  store i64 %73, i64* %12, align 8
  %76 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %77 = call i32 @memset(i8** %75, i32 0, i32 %76)
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @memcpy(i8** %75, i8* %78, i64 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %83 = call i32 @blake2b_update(i32* %81, i8** %75, i32 %82)
  %84 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %85 = call i32 @secure_zero_memory(i8** %75, i32 %84)
  %86 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %86)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %71, %70, %30, %19
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @store32(i32*, i32) #1

declare dso_local i32 @store64(i32*, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @blake2b_init_param(i32*, %struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8**, i8*, i64) #1

declare dso_local i32 @blake2b_update(i32*, i8**, i32) #1

declare dso_local i32 @secure_zero_memory(i8**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
