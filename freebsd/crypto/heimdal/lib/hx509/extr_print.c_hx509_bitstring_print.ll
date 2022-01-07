; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_hx509_bitstring_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_hx509_bitstring_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"\09length: %d\0A\09\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%02x%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hx509_bitstring_print(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = trunc i32 %12 to i8
  %14 = call i32 (i32, i8*, i8*, i8, ...) @print_func(i32 %8, i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 zeroext %13)
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %77, %3
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 7
  %21 = sdiv i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %16, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 7
  %39 = sdiv i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %24
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = urem i64 %46, 16
  %48 = icmp ne i64 %47, 15
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ true, %42 ], [ %48, %45 ]
  br label %51

51:                                               ; preds = %49, %24
  %52 = phi i1 [ false, %24 ], [ %50, %49 ]
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load i64, i64* %7, align 8
  %59 = urem i64 %58, 16
  %60 = icmp eq i64 %59, 15
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 7
  %67 = sdiv i32 %66, 8
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = icmp ule i64 %62, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  br label %74

73:                                               ; preds = %57, %51
  br label %74

74:                                               ; preds = %73, %61
  %75 = phi i8* [ %72, %61 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %73 ]
  %76 = call i32 (i32, i8*, i8*, i8, ...) @print_func(i32 %25, i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %33, i8* %54, i8* %75)
  br label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %15

80:                                               ; preds = %15
  ret void
}

declare dso_local i32 @print_func(i32, i8*, i8*, i8 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
