; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_addwhiteout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_addwhiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Nflag = common dso_local global i32 0, align 4
@S_IFWHT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"warning: cannot create whiteout %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Create whiteout %s\0A\00", align 1
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addwhiteout(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @Nflag, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @S_IFWHT, align 4
  %9 = call i64 @mknod(i8* %7, i32 %8, i32 0)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @errno, align 4
  %15 = call i8* @strerror(i32 %14)
  %16 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %15)
  %17 = load i32, i32* @FAIL, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %6, %1
  %19 = load i32, i32* @stdout, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @vprintf(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @GOOD, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @mknod(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @vprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
