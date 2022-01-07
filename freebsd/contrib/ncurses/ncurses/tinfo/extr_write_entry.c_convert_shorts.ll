; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_convert_shorts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_convert_shorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ABSENT_NUMERIC = common dso_local global i16 0, align 2
@CANCELLED_NUMERIC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [19 x i8] c"put Numbers[%u]=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i16*, i64)* @convert_shorts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_shorts(i8* %0, i16* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i16* %1, i16** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %71, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %74

12:                                               ; preds = %8
  %13 = load i16*, i16** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i16, i16* %13, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @ABSENT_NUMERIC, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 2, %23
  %25 = add i64 %24, 1
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 -1, i8* %26, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = mul i64 2, %28
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 -1, i8* %30, align 1
  br label %70

31:                                               ; preds = %12
  %32 = load i16*, i16** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i16, i16* %32, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = load i16, i16* @CANCELLED_NUMERIC, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = mul i64 2, %42
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 -2, i8* %44, align 1
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = mul i64 2, %46
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 -1, i8* %49, align 1
  br label %69

50:                                               ; preds = %31
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = mul i64 2, %52
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i16*, i16** %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i16, i16* %55, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = call i32 @LITTLE_ENDIAN(i8* %54, i16 signext %58)
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i16*, i16** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i16, i16* %62, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @TRACE_OUT(i8* %67)
  br label %69

69:                                               ; preds = %50, %40
  br label %70

70:                                               ; preds = %69, %21
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %8

74:                                               ; preds = %8
  ret void
}

declare dso_local i32 @LITTLE_ENDIAN(i8*, i16 signext) #1

declare dso_local i32 @TRACE_OUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
