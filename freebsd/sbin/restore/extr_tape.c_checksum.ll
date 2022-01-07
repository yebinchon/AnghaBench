; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@Bcvt = common dso_local global i32 0, align 4
@CHECKSUM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Checksum error %o, inode %ju file %s\0A\00", align 1
@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksum(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @Bcvt, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %15, %8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %3, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %9, label %19

19:                                               ; preds = %15
  br label %35

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %30, %20
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %3, align 8
  %24 = load i32, i32* %22, align 4
  %25 = call i64 @swabl(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %21, label %34

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CHECKSUM, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %45 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43, i32 %44)
  %46 = load i32, i32* @FAIL, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @GOOD, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %39
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @swabl(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
