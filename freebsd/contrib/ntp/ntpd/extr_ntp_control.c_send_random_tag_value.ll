; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_send_random_tag_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_send_random_tag_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @send_random_tag_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_random_tag_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @rand()
  %6 = call i32 (...) @rand()
  %7 = shl i32 %6, 16
  %8 = xor i32 %5, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = srem i32 %9, 26
  %11 = add nsw i32 97, %10
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  store i8 %12, i8* %13, align 16
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 5
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = srem i32 %16, 26
  %18 = add nsw i32 97, %17
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 1
  store i8 %19, i8* %20, align 1
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 5
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = srem i32 %23, 26
  %25 = add nsw i32 97, %24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 2
  store i8 %26, i8* %27, align 2
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 5
  store i32 %29, i32* %3, align 4
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 3
  store i8 46, i8* %30, align 1
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @snprintf(i8* %31, i32 28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ctl_putuint(i8* %34, i32 %35)
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ctl_putuint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
