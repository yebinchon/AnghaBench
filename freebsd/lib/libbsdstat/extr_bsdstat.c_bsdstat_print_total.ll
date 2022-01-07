; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbsdstat/extr_bsdstat.c_bsdstat_print_total.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbsdstat/extr_bsdstat.c_bsdstat_print_total.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdstat = type { i8*, i64 (%struct.bsdstat*, i32, i8*, i32)*, %struct.fmt* }
%struct.fmt = type { i8* }

@FMTS_IS_STAT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdstat*, i32*)* @bsdstat_print_total to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsdstat_print_total(%struct.bsdstat* %0, i32* %1) #0 {
  %3 = alloca %struct.bsdstat*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fmt*, align 8
  %8 = alloca i32, align 4
  store %struct.bsdstat* %0, %struct.bsdstat** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %10 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %64, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @FMTS_IS_STAT, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %37 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %36, i32 0, i32 2
  %38 = load %struct.fmt*, %struct.fmt** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.fmt, %struct.fmt* %38, i64 %40
  store %struct.fmt* %41, %struct.fmt** %7, align 8
  %42 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %43 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %42, i32 0, i32 1
  %44 = load i64 (%struct.bsdstat*, i32, i8*, i32)*, i64 (%struct.bsdstat*, i32, i8*, i32)** %43, align 8
  %45 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %48 = call i64 %44(%struct.bsdstat* %45, i32 %46, i8* %47, i32 32)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %24
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.fmt*, %struct.fmt** %7, align 8
  %53 = getelementptr inbounds %struct.fmt, %struct.fmt* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %56 = call i32 @fprintf(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %50, %24
  br label %63

58:                                               ; preds = %17
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @putc(i8 zeroext %60, i32* %61)
  br label %63

63:                                               ; preds = %58, %57
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  br label %12

67:                                               ; preds = %12
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @putc(i8 zeroext 10, i32* %68)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @putc(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
