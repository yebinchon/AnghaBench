; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_dscp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_dscp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c" dscp\00", align 1
@f_ipdscp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, %struct.TYPE_3__*)* @print_dscp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dscp(%struct.buf_pr* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.buf_pr*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.buf_pr* %0, %struct.buf_pr** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  store i8 32, i8* %7, align 1
  %9 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %10 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  br label %14

14:                                               ; preds = %50, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 64
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load i32, i32* @f_ipdscp, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @match_value(i32 %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %33)
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %37 = load i8, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %29
  store i8 44, i8* %7, align 1
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = srem i32 %44, 32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  br label %50

50:                                               ; preds = %47, %42
  br label %14

51:                                               ; preds = %14
  ret void
}

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

declare dso_local i8* @match_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
