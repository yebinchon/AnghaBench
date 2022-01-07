; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vesigned.c_verify_signed.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vesigned.c_verify_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@signature_exts = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"verify_signed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @verify_signed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i8**, i8*** @signature_exts, align 8
  store i8** %15, i8*** %9, align 8
  br label %16

16:                                               ; preds = %38, %2
  %17 = load i8**, i8*** %9, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = trunc i64 %12 to i32
  %22 = load i8*, i8** %4, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i8* %14, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %24)
  %26 = call i64 @stat(i8* %14, %struct.stat* %6)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISREG(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %20
  br label %38

34:                                               ; preds = %28
  %35 = call i32 @DEBUG_PRINTF(i32 5, i8* %14)
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @verify_sig(i8* %14, i32 %36)
  store i8* %37, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %42

38:                                               ; preds = %33
  %39 = load i8**, i8*** %9, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %9, align 8
  br label %16

41:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @DEBUG_PRINTF(i32, i8*) #2

declare dso_local i8* @verify_sig(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
