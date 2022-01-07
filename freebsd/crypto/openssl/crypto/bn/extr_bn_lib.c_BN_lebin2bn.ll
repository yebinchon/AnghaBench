; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_lib.c_BN_lebin2bn.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_lib.c_BN_lebin2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64*, i64 }

@BN_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @BN_lebin2bn(i8* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call %struct.TYPE_9__* (...) @BN_new()
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %108

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = call i32 @bn_check_top(%struct.TYPE_9__* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %40, %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ false, %28 ], [ %36, %31 ]
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %28

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %4, align 8
  br label %108

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = sub i32 %54, 1
  %56 = load i32, i32* @BN_BYTES, align 4
  %57 = udiv i32 %55, %56
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub i32 %59, 1
  %61 = load i32, i32* @BN_BYTES, align 4
  %62 = urem i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32* @bn_wexpand(%struct.TYPE_9__* %63, i32 %64)
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %69 = call i32 @BN_free(%struct.TYPE_9__* %68)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %108

70:                                               ; preds = %53
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  store i64 0, i64* %11, align 8
  br label %76

76:                                               ; preds = %103, %70
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %10, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %5, align 8
  %83 = load i64, i64* %11, align 8
  %84 = shl i64 %83, 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = or i64 %84, %87
  store i64 %88, i64* %11, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %9, align 4
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %80
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, -1
  store i32 %98, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  store i64 %93, i64* %100, align 8
  store i64 0, i64* %11, align 8
  %101 = load i32, i32* @BN_BYTES, align 4
  %102 = sub i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %92, %80
  br label %76

104:                                              ; preds = %76
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = call i32 @bn_correct_top(%struct.TYPE_9__* %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %4, align 8
  br label %108

108:                                              ; preds = %104, %67, %49, %20
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %109
}

declare dso_local %struct.TYPE_9__* @BN_new(...) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_9__*) #1

declare dso_local i32* @bn_wexpand(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @BN_free(%struct.TYPE_9__*) #1

declare dso_local i32 @bn_correct_top(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
