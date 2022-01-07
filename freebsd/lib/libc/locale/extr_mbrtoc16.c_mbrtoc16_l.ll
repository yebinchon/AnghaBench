; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbrtoc16.c_mbrtoc16_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbrtoc16.c_mbrtoc16_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbrtoc16_l(i32* noalias %0, i8* noalias %1, i64 %2, i32* noalias %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @FIX_LOCALE(i32 %15)
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.TYPE_4__* @XLOCALE_CTYPE(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* %22, i32** %10, align 8
  br label %23

23:                                               ; preds = %19, %5
  %24 = load i32*, i32** %10, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28, %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @mbrtoc32_l(i32* null, i8* %34, i64 %35, i32* %37, i32 %38)
  store i64 %39, i64* %6, align 8
  br label %87

40:                                               ; preds = %28
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 56320
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %48, 57343
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  store i64 -3, i64* %6, align 8
  br label %87

57:                                               ; preds = %45, %40
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @mbrtoc32_l(i32* %13, i8* %58, i64 %59, i32* %61, i32 %62)
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %57
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 65536
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %84

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %73, 65536
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = ashr i32 %75, 10
  %77 = or i32 55296, %76
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %13, align 4
  %80 = and i32 %79, 1023
  %81 = or i32 56320, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %72, %69
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i64, i64* %14, align 8
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %85, %50, %31
  %88 = load i64, i64* %6, align 8
  ret i64 %88
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_4__* @XLOCALE_CTYPE(i32) #1

declare dso_local i64 @mbrtoc32_l(i32*, i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
