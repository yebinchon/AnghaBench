; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_next_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_SIZE = common dso_local global i32 0, align 4
@pfr_next_token.next_ch = internal global i8 32, align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_next_token(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @BUF_SIZE, align 4
  %8 = zext i32 %7 to i64
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %44, %2
  br label %10

10:                                               ; preds = %21, %9
  %11 = load i8, i8* @pfr_next_token.next_ch, align 1
  %12 = call i64 @isspace(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @feof(i32* %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32*, i32** %5, align 8
  %23 = call signext i8 @fgetc(i32* %22)
  store i8 %23, i8* @pfr_next_token.next_ch, align 1
  br label %10

24:                                               ; preds = %19
  %25 = load i8, i8* @pfr_next_token.next_ch, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @feof(i32* %30)
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = call signext i8 @fgetc(i32* %35)
  store i8 %36, i8* @pfr_next_token.next_ch, align 1
  %37 = load i8, i8* @pfr_next_token.next_ch, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  br label %29

42:                                               ; preds = %40, %29
  br label %44

43:                                               ; preds = %24
  br label %45

44:                                               ; preds = %42
  br label %9

45:                                               ; preds = %43
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @feof(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8 32, i8* @pfr_next_token.next_ch, align 1
  store i32 0, i32* %3, align 4
  br label %87

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %74, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @BUF_SIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i8, i8* @pfr_next_token.next_ch, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %56, i8* %61, align 1
  br label %62

62:                                               ; preds = %55, %51
  %63 = load i32*, i32** %5, align 8
  %64 = call signext i8 @fgetc(i32* %63)
  store i8 %64, i8* @pfr_next_token.next_ch, align 1
  br label %65

65:                                               ; preds = %62
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @feof(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i8, i8* @pfr_next_token.next_ch, align 1
  %71 = call i64 @isspace(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i1 [ false, %65 ], [ %73, %69 ]
  br i1 %75, label %51, label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @BUF_SIZE, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %87

82:                                               ; preds = %76
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 0, i8* %86, align 1
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %80, %49
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local signext i8 @fgetc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
