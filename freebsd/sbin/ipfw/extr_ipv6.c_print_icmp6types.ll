; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_print_icmp6types.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_print_icmp6types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c" icmp6types\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_icmp6types(%struct.buf_pr* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.buf_pr*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.buf_pr* %0, %struct.buf_pr** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i8 32, i8* %7, align 1
  %8 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %9 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %43, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 7
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %39

30:                                               ; preds = %17
  %31 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %32 = load i8, i8* %7, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 32
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %37)
  store i8 44, i8* %7, align 1
  br label %39

39:                                               ; preds = %30, %29
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %14

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %10

46:                                               ; preds = %10
  ret void
}

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
