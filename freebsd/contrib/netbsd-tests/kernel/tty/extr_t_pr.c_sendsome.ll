; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/tty/extr_t_pr.c_sendsome.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/tty/extr_t_pr.c_sendsome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sendsome.msg = internal constant [13 x i8] c"hello world\0A\00", align 1
@.str = private unnamed_addr constant [37 x i8] c"short message read: %zd chars: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sendsome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendsome(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [23 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 23)
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @sendsome.msg, i64 0, i64 0))
  %13 = call i32 @rump_sys_write(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @sendsome.msg, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 0
  %16 = call i64 @rump_sys_read(i32 %14, i8* %15, i32 23)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @sendsome.msg, i64 0, i64 0))
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 0
  %23 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %21, i8* %22)
  store i32 1, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %26, 23
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %46

40:                                               ; preds = %34, %28
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 %41
  store i8 10, i8* %42, align 1
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %25

50:                                               ; preds = %40, %25
  %51 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 0
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @sendsome.msg, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @rump_sys_read(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i64, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
