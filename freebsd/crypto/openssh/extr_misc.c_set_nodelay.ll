; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_set_nodelay.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_set_nodelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"getsockopt TCP_NODELAY: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"fd %d is TCP_NODELAY\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"fd %d setting TCP_NODELAY\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"setsockopt TCP_NODELAY: %.100s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_nodelay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 4, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @IPPROTO_TCP, align 4
  %7 = load i32, i32* @TCP_NODELAY, align 4
  %8 = call i32 @getsockopt(i32 %5, i32 %6, i32 %7, i32* %3, i32* %4)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = call i32 @strerror(i32 %11)
  %13 = call i32 @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @debug2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %32

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @debug2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @IPPROTO_TCP, align 4
  %25 = load i32, i32* @TCP_NODELAY, align 4
  %26 = call i32 @setsockopt(i32 %23, i32 %24, i32 %25, i32* %3, i32 4)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %10, %17, %28, %20
  ret void
}

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @debug2(i8*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
