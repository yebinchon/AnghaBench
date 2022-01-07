; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_fn_printzp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_fn_printzp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"M-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fn_printzp(i32* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %11

11:                                               ; preds = %55, %4
  %12 = load i64, i64* %7, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ult i8* %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ true, %14 ], [ %20, %17 ]
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i1 [ false, %11 ], [ %22, %21 ]
  br i1 %24, label %25, label %61

25:                                               ; preds = %23
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  %30 = load i8, i8* %28, align 1
  store i8 %30, i8* %10, align 1
  %31 = load i8, i8* %10, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %61

35:                                               ; preds = %25
  %36 = load i8, i8* %10, align 1
  %37 = call i32 @ND_ISASCII(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %10, align 1
  %41 = call signext i8 @ND_TOASCII(i8 signext %40)
  store i8 %41, i8* %10, align 1
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str to i32*))
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i8, i8* %10, align 1
  %46 = call i32 @ND_ISPRINT(i8 signext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i8, i8* %10, align 1
  %50 = sext i8 %49 to i32
  %51 = xor i32 %50, 64
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %10, align 1
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %55

55:                                               ; preds = %48, %44
  %56 = load i32*, i32** %5, align 8
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @ND_PRINT(i32* %59)
  br label %11

61:                                               ; preds = %34, %23
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 0, %64 ], [ %66, %65 ]
  ret i32 %68
}

declare dso_local i32 @ND_ISASCII(i8 signext) #1

declare dso_local signext i8 @ND_TOASCII(i8 signext) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_ISPRINT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
