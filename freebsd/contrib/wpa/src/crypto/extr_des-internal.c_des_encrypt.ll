; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_des-internal.c_des_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_des-internal.c_des_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @des_encrypt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  %12 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %35, %3
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 7
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %24, %25
  %27 = or i32 %26, 1
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 7, %32
  %34 = shl i32 %31, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, 1
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %46 = call i32 @deskey(i32* %44, i32 0, i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @WPA_GET_BE32(i32* %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = call i32 @WPA_GET_BE32(i32* %51)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %56 = call i32 @desfunc(i32* %54, i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @WPA_PUT_BE32(i32* %57, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @WPA_PUT_BE32(i32* %62, i32 %64)
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %67 = call i32 @os_memset(i32* %66, i32 0, i32 32)
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %69 = call i32 @os_memset(i32* %68, i32 0, i32 128)
  ret i32 0
}

declare dso_local i32 @deskey(i32*, i32, i32*) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @desfunc(i32*, i32*) #1

declare dso_local i32 @WPA_PUT_BE32(i32*, i32) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
