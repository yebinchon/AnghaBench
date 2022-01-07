; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_veopen.c_verify_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_veopen.c_verify_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: no entry\00", align 1
@VE_FINGERPRINT_NONE = common dso_local global i32 0, align 4
@VE_FINGERPRINT_WRONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_fd(i32 %0, i8* %1, i32 %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.stat* %3, %struct.stat** %9, align 8
  %13 = load %struct.stat*, %struct.stat** %9, align 8
  %14 = icmp ne %struct.stat* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @fstat(i32 %16, %struct.stat* %10)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.stat* %10, %struct.stat** %9, align 8
  br label %20

20:                                               ; preds = %19, %15
  br label %21

21:                                               ; preds = %20, %4
  %22 = load %struct.stat*, %struct.stat** %9, align 8
  %23 = icmp ne %struct.stat* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.stat*, %struct.stat** %9, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISREG(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %52

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @fingerprint_info_lookup(i32 %32, i8* %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @ve_error_set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @VE_FINGERPRINT_NONE, align 4
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @verify_fingerprint(i32 %42, i8* %43, i8* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %50 [
    i32 129, label %48
    i32 130, label %48
    i32 128, label %48
  ]

48:                                               ; preds = %41, %41, %41
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @VE_FINGERPRINT_WRONG, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48, %37, %30
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i8* @fingerprint_info_lookup(i32, i8*) #1

declare dso_local i32 @ve_error_set(i8*, i8*) #1

declare dso_local i32 @verify_fingerprint(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
