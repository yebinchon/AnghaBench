; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vectx.c_vectx_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vectx.c_vectx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vectx = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*, i8*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vectx_read(%struct.vectx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vectx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vectx* %0, %struct.vectx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load %struct.vectx*, %struct.vectx** %5, align 8
  %13 = getelementptr inbounds %struct.vectx, %struct.vectx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.vectx*, %struct.vectx** %5, align 8
  %18 = getelementptr inbounds %struct.vectx, %struct.vectx* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @read(i32 %19, i8* %20, i64 %21)
  store i32 %22, i32* %4, align 4
  br label %78

23:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %73, %23
  %25 = load %struct.vectx*, %struct.vectx** %5, align 8
  %26 = getelementptr inbounds %struct.vectx, %struct.vectx* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %31, %32
  %34 = call i32 @read(i32 %27, i8* %30, i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %78

39:                                               ; preds = %24
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load %struct.vectx*, %struct.vectx** %5, align 8
  %44 = getelementptr inbounds %struct.vectx, %struct.vectx* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %46, align 8
  %48 = load %struct.vectx*, %struct.vectx** %5, align 8
  %49 = getelementptr inbounds %struct.vectx, %struct.vectx* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i32, i32* %9, align 4
  %55 = call i32 %47(i32* %50, i8* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.vectx*, %struct.vectx** %5, align 8
  %62 = getelementptr inbounds %struct.vectx, %struct.vectx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %42, %39
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ult i64 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %24, label %75

75:                                               ; preds = %73
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %37, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
