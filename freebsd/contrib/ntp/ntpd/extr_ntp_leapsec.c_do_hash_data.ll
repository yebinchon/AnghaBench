; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_do_hash_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_do_hash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @do_hash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_hash_data(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %7, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 0, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i8, i8* %7, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 35, %16
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i1 [ false, %8 ], [ %17, %14 ]
  br i1 %19, label %20, label %42

20:                                               ; preds = %18
  %21 = load i8, i8* %7, align 1
  %22 = call i64 @isdigit(i8 zeroext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i8, i8* %7, align 1
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %28
  store i8 %25, i8* %29, align 1
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = and i64 %31, 31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 0, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %39 = call i32 @isc_sha1_update(i32* %37, i8* %38, i32 32)
  br label %40

40:                                               ; preds = %36, %24
  br label %41

41:                                               ; preds = %40, %20
  br label %8

42:                                               ; preds = %18
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 0, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @isc_sha1_update(i32* %46, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  ret void
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @isc_sha1_update(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
