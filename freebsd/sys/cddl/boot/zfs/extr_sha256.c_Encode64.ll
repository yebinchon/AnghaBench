; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_Encode64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_Encode64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @Encode64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Encode64(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %92, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %97

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 56
  %19 = and i32 %18, 255
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 48
  %28 = and i32 %27, 255
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 40
  %38 = and i32 %37, 255
  %39 = load i32*, i32** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 2
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 32
  %48 = and i32 %47, 255
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 3
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 24
  %58 = and i32 %57, 255
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 4
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 5
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 6
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 255
  %88 = load i32*, i32** %4, align 8
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 7
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %13
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 8
  store i64 %96, i64* %8, align 8
  br label %9

97:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
