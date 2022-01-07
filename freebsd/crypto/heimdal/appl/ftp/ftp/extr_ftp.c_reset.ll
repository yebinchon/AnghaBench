; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cin = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@code = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %6, align 4
  %7 = call i32 @FD_ZERO(i32* %5)
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load i32, i32* @cin, align 4
  %13 = call i64 @fileno(i32 %12)
  %14 = load i64, i64* @FD_SETSIZE, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* @cin, align 4
  %20 = call i64 @fileno(i32 %19)
  %21 = call i32 @FD_SET(i64 %20, i32* %5)
  %22 = call i32 @empty(i32* %5, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  %26 = call i32 @lostpeer(i32 0)
  br label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @getreply(i32 0)
  br label %32

32:                                               ; preds = %30, %27
  br label %33

33:                                               ; preds = %32, %24
  br label %8

34:                                               ; preds = %8
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @fileno(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @empty(i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @lostpeer(i32) #1

declare dso_local i32 @getreply(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
