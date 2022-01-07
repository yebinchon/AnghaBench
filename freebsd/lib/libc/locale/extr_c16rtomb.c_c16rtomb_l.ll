; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_c16rtomb.c_c16rtomb_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_c16rtomb.c_c16rtomb_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EILSEQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @c16rtomb_l(i8* noalias %0, i32 %1, i32* noalias %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @FIX_LOCALE(i32 %12)
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.TYPE_4__* @XLOCALE_CTYPE(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32* %19, i32** %8, align 8
  br label %20

20:                                               ; preds = %16, %4
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %68

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 55296
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 56319
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 56320
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 57343
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @EILSEQ, align 4
  store i32 %43, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %77

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1023
  %49 = shl i32 %48, 10
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 1023
  %52 = or i32 %49, %51
  %53 = add nsw i32 65536, %52
  store i32 %53, i32* %11, align 4
  br label %67

54:                                               ; preds = %31, %26
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %55, 55296
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %58, 56319
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  store i64 0, i64* %5, align 8
  br label %77

64:                                               ; preds = %57, %54
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %25
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @c32rtomb_l(i8* %71, i32 %72, i32* %74, i32 %75)
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %68, %60, %42
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_4__* @XLOCALE_CTYPE(i32) #1

declare dso_local i64 @c32rtomb_l(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
