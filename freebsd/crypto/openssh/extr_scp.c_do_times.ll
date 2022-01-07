; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_do_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_do_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"T%llu 0 %llu 0\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"File mtime %lld atime %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Sending file timestamps: %s\00", align 1
@vwrite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.stat*)* @do_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_times(i32 %0, i32 %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat*, align 8
  %7 = alloca [60 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.stat* %2, %struct.stat** %6, align 8
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %9 = load %struct.stat*, %struct.stat** %6, align 8
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.stat*, %struct.stat** %6, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi i64 [ 0, %13 ], [ %17, %14 ]
  %20 = load %struct.stat*, %struct.stat** %6, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.stat*, %struct.stat** %6, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i64 [ 0, %24 ], [ %28, %25 ]
  %31 = call i32 @snprintf(i8* %8, i32 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = load %struct.stat*, %struct.stat** %6, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.stat*, %struct.stat** %6, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %34, %29
  %47 = load i32, i32* @vwrite, align 4
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @atomicio(i32 %47, i32 %48, i8* %49, i32 %51)
  %53 = call i32 (...) @response()
  ret i32 %53
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atomicio(i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @response(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
