; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_scrypt.c_pkey_scrypt_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_scrypt.c_pkey_scrypt_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i8*)* @pkey_scrypt_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_scrypt_ctrl(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %80 [
    i32 133, label %16
    i32 128, label %24
    i32 131, label %32
    i32 129, label %47
    i32 130, label %58
    i32 132, label %69
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 7
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 6
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pkey_scrypt_set_membuf(i32* %18, i32* %20, i8* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %81

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pkey_scrypt_set_membuf(i32* %26, i32* %28, i8* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %81

32:                                               ; preds = %4
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @is_power_of_two(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %32
  store i32 0, i32* %5, align 4
  br label %81

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 1, i32* %5, align 4
  br label %81

47:                                               ; preds = %4
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %81

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 1, i32* %5, align 4
  br label %81

58:                                               ; preds = %4
  %59 = load i8*, i8** %9, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %81

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  store i32 1, i32* %5, align 4
  br label %81

69:                                               ; preds = %4
  %70 = load i8*, i8** %9, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %81

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  store i32 1, i32* %5, align 4
  br label %81

80:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %76, %75, %65, %64, %54, %53, %43, %42, %24, %16
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @pkey_scrypt_set_membuf(i32*, i32*, i8*, i32) #1

declare dso_local i32 @is_power_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
