; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_trim_sgr0.c_similar_sgr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_trim_sgr0.c_similar_sgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRACE_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"similar_sgr:\0A\09%s\0A\09%s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"...similar_sgr: %d\0A\09%s\0A\09%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @similar_sgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @similar_sgr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %99

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %99

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @is_csi(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @is_csi(i8* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @TRACE_DATABASE, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @_nc_visbuf2(i32 1, i8* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @_nc_visbuf2(i32 2, i8* %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @TR(i32 %21, i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load i8*, i8** %3, align 8
  %56 = call i8* @skip_zero(i8* %55)
  store i8* %56, i8** %3, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i8* @skip_zero(i8* %57)
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %54, %38
  br label %60

60:                                               ; preds = %59, %34, %31, %16
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @strlen(i8* %61)
  store i64 %62, i64* %8, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @strlen(i8* %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @strncmp(i8* %75, i8* %76, i64 %77)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %70
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @strncmp(i8* %82, i8* %83, i64 %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %81, %74
  br label %89

89:                                               ; preds = %88, %67, %60
  %90 = load i32, i32* @TRACE_DATABASE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @_nc_visbuf2(i32 1, i8* %92)
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @_nc_visbuf2(i32 2, i8* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @TR(i32 %90, i8* %97)
  br label %99

99:                                               ; preds = %89, %13, %2
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @is_csi(i8*) #1

declare dso_local i32 @TR(i32, i8*) #1

declare dso_local i32 @_nc_visbuf2(i32, i8*) #1

declare dso_local i8* @skip_zero(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
