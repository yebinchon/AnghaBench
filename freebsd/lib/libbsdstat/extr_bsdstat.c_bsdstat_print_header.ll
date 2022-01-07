; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbsdstat/extr_bsdstat.c_bsdstat_print_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbsdstat/extr_bsdstat.c_bsdstat_print_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdstat = type { i8*, %struct.fmt* }
%struct.fmt = type { i8*, i32 }

@FMTS_IS_STAT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdstat*, i32*)* @bsdstat_print_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsdstat_print_header(%struct.bsdstat* %0, i32* %1) #0 {
  %3 = alloca %struct.bsdstat*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fmt*, align 8
  store %struct.bsdstat* %0, %struct.bsdstat** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %9 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %55, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @FMTS_IS_STAT, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.bsdstat*, %struct.bsdstat** %3, align 8
  %36 = getelementptr inbounds %struct.bsdstat, %struct.bsdstat* %35, i32 0, i32 1
  %37 = load %struct.fmt*, %struct.fmt** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fmt, %struct.fmt* %37, i64 %39
  store %struct.fmt* %40, %struct.fmt** %7, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.fmt*, %struct.fmt** %7, align 8
  %43 = getelementptr inbounds %struct.fmt, %struct.fmt* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.fmt*, %struct.fmt** %7, align 8
  %46 = getelementptr inbounds %struct.fmt, %struct.fmt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @fprintf(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %47)
  br label %54

49:                                               ; preds = %16
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @putc(i8 zeroext %51, i32* %52)
  br label %54

54:                                               ; preds = %49, %23
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  br label %11

58:                                               ; preds = %11
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @putc(i8 zeroext 10, i32* %59)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @putc(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
