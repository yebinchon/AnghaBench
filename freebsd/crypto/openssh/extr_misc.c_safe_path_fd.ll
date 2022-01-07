; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_safe_path_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_safe_path_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"cannot stat file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safe_path_fd(i32 %0, i8* %1, %struct.passwd* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.passwd* %2, %struct.passwd** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @fstat(i32 %13, %struct.stat* %12)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i8* @strerror(i32 %20)
  %22 = call i32 @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %21)
  store i32 -1, i32* %6, align 4
  br label %34

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.passwd*, %struct.passwd** %9, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.passwd*, %struct.passwd** %9, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @safe_path(i8* %24, %struct.stat* %12, i32 %27, i32 %30, i8* %31, i64 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %23, %16
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @safe_path(i8*, %struct.stat*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
