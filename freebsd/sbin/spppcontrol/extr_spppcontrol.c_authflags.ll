; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/spppcontrol/extr_spppcontrol.c_authflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/spppcontrol/extr_spppcontrol.c_authflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@authflags.buf = internal global [30 x i8] zeroinitializer, align 16
@AUTHFLAG_NOCALLOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" callin\00", align 1
@AUTHFLAG_NORECHALLENGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" norechallenge\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @authflags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @authflags.buf, i64 0, i64 0), align 16
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @AUTHFLAG_NOCALLOUT, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @strcat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @authflags.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @AUTHFLAG_NORECHALLENGE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @strcat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @authflags.buf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  ret i8* getelementptr inbounds ([30 x i8], [30 x i8]* @authflags.buf, i64 0, i64 0)
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
