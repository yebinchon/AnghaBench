; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@control.buf = internal global [5 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [3 x i8] c"^?\00", align 1
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @control(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 127
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i64, i64* @_POSIX_VDISABLE, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %45

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = icmp uge i32 %16, 128
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  store i8 92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 0), align 1
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 6
  %21 = and i32 %20, 7
  %22 = add nsw i32 %21, 48
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 1), align 1
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 7
  %27 = add nsw i32 %26, 48
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 2), align 1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 7
  %31 = add nsw i32 %30, 48
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 3), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 4), align 1
  br label %44

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = icmp uge i32 %34, 32
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 1), align 1
  br label %43

39:                                               ; preds = %33
  store i8 94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 0), align 1
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 64, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 1), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 2), align 1
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %18
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @control.buf, i64 0, i64 0), i8** %2, align 8
  br label %45

45:                                               ; preds = %44, %14, %8
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
