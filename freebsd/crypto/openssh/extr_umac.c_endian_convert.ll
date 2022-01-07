; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_endian_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_endian_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @endian_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @endian_convert(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %8, align 8
  br label %19

19:                                               ; preds = %25, %16
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @LOAD_UINT32_REVERSED(i32* %20)
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %8, align 8
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %19, label %29

29:                                               ; preds = %25
  br label %55

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %9, align 8
  br label %36

36:                                               ; preds = %49, %33
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = call i32 @LOAD_UINT32_REVERSED(i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @LOAD_UINT32_REVERSED(i32* %40)
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32* %48, i32** %9, align 8
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %36, label %53

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %30
  br label %55

55:                                               ; preds = %54, %29
  ret void
}

declare dso_local i32 @LOAD_UINT32_REVERSED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
