; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_build_mflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_build_mflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@build_mflags.mfs = internal global [1024 x i8] zeroinitializer, align 16
@RESM_NTPONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ntponly\00", align 1
@RESM_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_mflags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  store i32 %0, i32* %2, align 4
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_mflags.mfs, i64 0, i64 0), align 16
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @RESM_NTPONLY, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @RESM_NTPONLY, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_mflags.mfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @RESM_SOURCE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @RESM_SOURCE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %2, align 4
  %24 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_mflags.mfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @snprintf(i8* %29, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %33 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_mflags.mfs, i64 0, i64 0), i32 1024, i8* %32)
  br label %34

34:                                               ; preds = %28, %25
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_mflags.mfs, i64 0, i64 0)
}

declare dso_local i32 @appendstr(i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
