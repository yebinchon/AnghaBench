; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_state.c_output_datalen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_state.c_output_datalen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@nfrontp = common dso_local global i32 0, align 4
@netobuf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_datalen(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @BUFSIZ, align 4
  %8 = load i32, i32* @nfrontp, align 4
  %9 = load i32, i32* @netobuf, align 4
  %10 = sub nsw i32 %8, %9
  %11 = sub nsw i32 %7, %10
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %42, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @BUFSIZ, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = call i32 (...) @netflush()
  %29 = load i32, i32* @BUFSIZ, align 4
  %30 = load i32, i32* @nfrontp, align 4
  %31 = load i32, i32* @netobuf, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @nfrontp, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memmove(i32 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @nfrontp, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* @nfrontp, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %3, align 8
  br label %12

61:                                               ; preds = %12
  ret void
}

declare dso_local i32 @netflush(...) #1

declare dso_local i32 @memmove(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
