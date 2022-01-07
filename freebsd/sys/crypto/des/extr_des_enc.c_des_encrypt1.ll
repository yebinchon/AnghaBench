; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_enc.c_des_encrypt1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_enc.c_des_encrypt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@des_SPtrans = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des_encrypt1(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
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
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IP(i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ROTATE(i32 %22, i32 29)
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, 4294967295
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ROTATE(i32 %27, i32 29)
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 4294967295
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %12, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 32
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 0
  %47 = call i32 @D_ENCRYPT(i32 %43, i32 %44, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 2
  %52 = call i32 @D_ENCRYPT(i32 %48, i32 %49, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 4
  %57 = call i32 @D_ENCRYPT(i32 %53, i32 %54, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 6
  %62 = call i32 @D_ENCRYPT(i32 %58, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %42
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 8
  store i32 %65, i32* %11, align 4
  br label %39

66:                                               ; preds = %39
  br label %96

67:                                               ; preds = %3
  store i32 30, i32* %11, align 4
  br label %68

68:                                               ; preds = %92, %67
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %74, 0
  %76 = call i32 @D_ENCRYPT(i32 %72, i32 %73, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, 2
  %81 = call i32 @D_ENCRYPT(i32 %77, i32 %78, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 4
  %86 = call i32 @D_ENCRYPT(i32 %82, i32 %83, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %89, 6
  %91 = call i32 @D_ENCRYPT(i32 %87, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %93, 8
  store i32 %94, i32* %11, align 4
  br label %68

95:                                               ; preds = %68
  br label %96

96:                                               ; preds = %95, %66
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ROTATE(i32 %97, i32 3)
  %99 = sext i32 %98 to i64
  %100 = and i64 %99, 4294967295
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ROTATE(i32 %102, i32 3)
  %104 = sext i32 %103 to i64
  %105 = and i64 %104, 4294967295
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @FP(i32 %107, i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  ret void
}

declare dso_local i32 @IP(i32, i32) #1

declare dso_local i32 @ROTATE(i32, i32) #1

declare dso_local i32 @D_ENCRYPT(i32, i32, i32) #1

declare dso_local i32 @FP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
