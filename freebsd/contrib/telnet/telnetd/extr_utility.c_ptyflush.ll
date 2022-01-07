; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_utility.c_ptyflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_utility.c_ptyflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pfrontp = common dso_local global i64 0, align 8
@pbackp = common dso_local global i64 0, align 8
@TD_REPORT = common dso_local global i32 0, align 4
@TD_PTYDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"td: ptyflush %d chars\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@pty = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ptyobuf = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptyflush() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @pfrontp, align 8
  %3 = load i64, i64* @pbackp, align 8
  %4 = sub nsw i64 %2, %3
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %1, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i32, i32* @TD_REPORT, align 4
  %9 = load i32, i32* @TD_PTYDATA, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @output_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @DIAG(i32 %10, i32 %12)
  %14 = load i32, i32* @TD_PTYDATA, align 4
  %15 = load i64, i64* @pbackp, align 8
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @printdata(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %15, i32 %16)
  %18 = call i32 @DIAG(i32 %14, i32 %17)
  %19 = load i32, i32* @pty, align 4
  %20 = load i64, i64* @pbackp, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @write(i32 %19, i64 %20, i32 %21)
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %7, %0
  %24 = load i32, i32* %1, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EWOULDBLOCK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINTR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  br label %47

35:                                               ; preds = %30
  %36 = call i32 @cleanup(i32 0)
  br label %37

37:                                               ; preds = %35, %23
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @pbackp, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* @pbackp, align 8
  %42 = load i64, i64* @pbackp, align 8
  %43 = load i64, i64* @pfrontp, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @ptyobuf, align 8
  store i64 %46, i64* @pfrontp, align 8
  store i64 %46, i64* @pbackp, align 8
  br label %47

47:                                               ; preds = %34, %45, %37
  ret void
}

declare dso_local i32 @DIAG(i32, i32) #1

declare dso_local i32 @output_data(i8*, i32) #1

declare dso_local i32 @printdata(i8*, i64, i32) #1

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
