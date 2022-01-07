; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass5.c_clear_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass5.c_clear_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Zero frags %jd to %jd\0A\00", align 1
@Zflag = common dso_local global i64 0, align 8
@fswritefd = common dso_local global i32 0, align 4
@sblock = common dso_local global i32 0, align 4
@Eflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @clear_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_blocks(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %9)
  br label %11

11:                                               ; preds = %7, %2
  %12 = load i64, i64* @Zflag, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* @fswritefd, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @fsbtodb(i32* @sblock, i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = sub nsw i64 %18, %19
  %21 = add nsw i64 %20, 1
  %22 = call i32 @lfragtosize(i32* @sblock, i64 %21)
  %23 = call i32 @blzero(i32 %15, i32 %17, i32 %22)
  br label %24

24:                                               ; preds = %14, %11
  %25 = load i64, i64* @Eflag, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* @fswritefd, align 4
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @fsbtodb(i32* @sblock, i64 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub nsw i64 %31, %32
  %34 = add nsw i64 %33, 1
  %35 = call i32 @lfragtosize(i32* @sblock, i64 %34)
  %36 = call i32 @blerase(i32 %28, i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @blzero(i32, i32, i32) #1

declare dso_local i32 @fsbtodb(i32*, i64) #1

declare dso_local i32 @lfragtosize(i32*, i64) #1

declare dso_local i32 @blerase(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
