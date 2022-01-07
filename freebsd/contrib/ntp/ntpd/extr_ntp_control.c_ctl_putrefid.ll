; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putrefid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_putrefid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ctl_putrefid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_putrefid(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %union.anon, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = bitcast %union.anon* %6 to i32*
  store i32 %7, i32* %8, align 4
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = bitcast %union.anon* %6 to [4 x i8]*
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %12, %9
  %20 = phi i1 [ false, %9 ], [ %18, %12 ]
  br i1 %20, label %21, label %50

21:                                               ; preds = %19
  %22 = bitcast %union.anon* %6 to [4 x i8]*
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @isprint(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = bitcast %union.anon* %6 to [4 x i8]*
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isspace(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = bitcast %union.anon* %6 to [4 x i8]*
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %36, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 44
  br i1 %41, label %42, label %46

42:                                               ; preds = %35, %28, %21
  %43 = bitcast %union.anon* %6 to [4 x i8]*
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %43, i64 0, i64 %44
  store i8 46, i8* %45, align 1
  br label %46

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %9

50:                                               ; preds = %19
  %51 = load i8*, i8** %3, align 8
  %52 = bitcast %union.anon* %6 to [4 x i8]*
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %52, i64 0, i64 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @ctl_putunqstr(i8* %51, i8* %53, i64 %54)
  ret void
}

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @ctl_putunqstr(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
