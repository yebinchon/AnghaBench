; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture_status_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture_status_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X_DB_CAPTURE_BUFOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"kvm: unable to read db_capture_bufoff\00", align 1
@X_DB_CAPTURE_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"kvm: unable to read db_capture_bufsize\00", align 1
@X_DB_CAPTURE_INPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"kvm: unable to read db_capture_inprogress\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%u/%u bytes used\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"capture is on\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"capture is off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ddb_capture_status_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_capture_status_kvm(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @X_DB_CAPTURE_BUFOFF, align 4
  %8 = call i64 @kread_symbol(i32* %6, i32 %7, i32* %3, i32 4, i32 0)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @X_DB_CAPTURE_BUFSIZE, align 4
  %15 = call i64 @kread_symbol(i32* %13, i32 %14, i32* %4, i32 4, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @X_DB_CAPTURE_INPROGRESS, align 4
  %22 = call i64 @kread_symbol(i32* %20, i32 %21, i32* %5, i32 4, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @err(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %36

34:                                               ; preds = %26
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %32
  ret void
}

declare dso_local i64 @kread_symbol(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
