; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kfd.c_kfd_match_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kfd.c_kfd_match_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KF_VERSION_1 = common dso_local global i32 0, align 4
@protocol_version = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @kfd_match_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_match_version(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* @KF_VERSION_1, align 4
  %8 = call i64 @strcmp(i8* %6, i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  store i32 1, i32* @protocol_version, align 4
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %3, align 4
  br label %51

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 48
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 46
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 52
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 51
  br i1 %39, label %40, label %48

40:                                               ; preds = %34, %28
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @islower(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  store i32 0, i32* @protocol_version, align 4
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %40, %34, %22, %16, %12
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %46, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @islower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
