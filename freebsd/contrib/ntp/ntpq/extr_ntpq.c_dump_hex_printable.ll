; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_dump_hex_printable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_dump_hex_printable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_hex_printable.s_xdig = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @dump_hex_printable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_hex_printable(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [68 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  br label %13

13:                                               ; preds = %79, %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %86

16:                                               ; preds = %13
  %17 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i8 signext 32, i32 68)
  %19 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 0
  store i8* %19, i8** %9, align 8
  %20 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 48
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %22, i8** %10, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ugt i64 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %29

26:                                               ; preds = %16
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ 16, %25 ], [ %28, %26 ]
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %75, %29
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %8, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* @dump_hex_printable.s_xdig, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* @dump_hex_printable.s_xdig, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  %55 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 24
  %57 = icmp eq i8* %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %35
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %58, %35
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @isprint(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = trunc i32 %66 to i8
  %68 = sext i8 %67 to i32
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %68, %65 ], [ 46, %69 ]
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  store i8 %72, i8* %73, align 1
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %35, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  store i8 10, i8* %80, align 1
  %82 = load i8*, i8** %10, align 8
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 0
  %84 = load i32, i32* @stdout, align 4
  %85 = call i32 @fputs(i8* %83, i32 %84)
  br label %13

86:                                               ; preds = %13
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
