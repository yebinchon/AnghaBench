; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_lid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_lid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to find lid for \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid lid specified: \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sa_handle*, i8*)* @get_lid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_lid(%struct.sa_handle* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sa_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sa_handle* %0, %struct.sa_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %54

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isalpha(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.sa_handle*, %struct.sa_handle** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @get_lid_from_name(%struct.sa_handle* %19, i8* %20, i64* %7)
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @strerror(i32 %26)
  %28 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %18
  br label %52

32:                                               ; preds = %12
  store i64 0, i64* @errno, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strtol(i8* %33, i32* null, i32 0)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* @errno, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @UINT16_MAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %37, %32
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %40
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %50, %31
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %52, %11
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @get_lid_from_name(%struct.sa_handle*, i8*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
