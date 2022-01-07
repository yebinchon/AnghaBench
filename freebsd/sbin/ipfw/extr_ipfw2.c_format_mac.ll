; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_format_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_format_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" any\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" %02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"&%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, i32*, i32*)* @format_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_mac(%struct.buf_pr* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.buf_pr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.buf_pr* %0, %struct.buf_pr** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @contigmask(i32* %8, i32 48)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %14 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %68

15:                                               ; preds = %3
  %16 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %59

38:                                               ; preds = %15
  %39 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57)
  br label %67

59:                                               ; preds = %15
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 48
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %66, %38
  br label %68

68:                                               ; preds = %67, %12
  ret void
}

declare dso_local i32 @contigmask(i32*, i32) #1

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
