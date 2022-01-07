; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_enc.c_des_encrypt2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_enc.c_des_encrypt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@des_SPtrans = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des_encrypt2(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ROTATE(i32 %19, i32 29)
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ROTATE(i32 %24, i32 29)
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 4294967295
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %12, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 0
  %44 = call i32 @D_ENCRYPT(i32 %40, i32 %41, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 2
  %49 = call i32 @D_ENCRYPT(i32 %45, i32 %46, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 4
  %54 = call i32 @D_ENCRYPT(i32 %50, i32 %51, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 6
  %59 = call i32 @D_ENCRYPT(i32 %55, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %39
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %11, align 4
  br label %36

63:                                               ; preds = %36
  br label %93

64:                                               ; preds = %3
  store i32 30, i32* %11, align 4
  br label %65

65:                                               ; preds = %89, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %71, 0
  %73 = call i32 @D_ENCRYPT(i32 %69, i32 %70, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 2
  %78 = call i32 @D_ENCRYPT(i32 %74, i32 %75, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 4
  %83 = call i32 @D_ENCRYPT(i32 %79, i32 %80, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 6
  %88 = call i32 @D_ENCRYPT(i32 %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 8
  store i32 %91, i32* %11, align 4
  br label %65

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92, %63
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @ROTATE(i32 %94, i32 3)
  %96 = sext i32 %95 to i64
  %97 = and i64 %96, 4294967295
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @ROTATE(i32 %101, i32 3)
  %103 = sext i32 %102 to i64
  %104 = and i64 %103, 4294967295
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %105, i32* %107, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  ret void
}

declare dso_local i32 @ROTATE(i32, i32) #1

declare dso_local i32 @D_ENCRYPT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
