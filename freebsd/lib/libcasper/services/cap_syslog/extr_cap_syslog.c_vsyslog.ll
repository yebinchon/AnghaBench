; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_syslog/extr_cap_syslog.c_vsyslog.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_syslog/extr_cap_syslog.c_vsyslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_SYSLOG_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vsyslog\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cap_vsyslog(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @CAP_SYSLOG_LIMIT, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = trunc i64 %14 to i32
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @vsnprintf(i8* %16, i32 %17, i8* %18, i32 %19)
  %21 = call i32* @nvlist_create(i32 0)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @nvlist_add_string(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @nvlist_add_number(i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @nvlist_add_string(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32* @cap_xfer_nvlist(i32* %29, i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %38

35:                                               ; preds = %4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @nvlist_destroy(i32* %36)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %42 [
    i32 0, label %41
    i32 1, label %41
  ]

41:                                               ; preds = %38, %38
  ret void

42:                                               ; preds = %38
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32* @nvlist_create(i32) #2

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #2

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #2

declare dso_local i32 @nvlist_destroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
