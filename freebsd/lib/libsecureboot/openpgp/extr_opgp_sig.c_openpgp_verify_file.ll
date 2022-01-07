; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_sig.c_openpgp_verify_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_sig.c_openpgp_verify_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@sig_exts = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot form signature name for %s\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot find signature for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpgp_verify_file(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i8* null, i8** %11, align 8
  %20 = load i8**, i8*** @sig_exts, align 8
  store i8** %20, i8*** %12, align 8
  br label %21

21:                                               ; preds = %43, %3
  %22 = load i8**, i8*** %12, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = trunc i64 %17 to i32
  %27 = load i8*, i8** %5, align 8
  %28 = load i8**, i8*** %12, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @snprintf(i8* %19, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = trunc i64 %17 to i32
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %61

37:                                               ; preds = %25
  %38 = load i32, i32* @R_OK, align 4
  %39 = call i64 @access(i8* %19, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* %19, i8** %11, align 8
  br label %46

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i8**, i8*** %12, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %12, align 8
  br label %21

46:                                               ; preds = %41, %21
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @read_file(i8* %53, i64* %13)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @openpgp_verify(i8* %55, i8* %56, i64 %57, i8* %58, i64 %59, i32 1)
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %61

61:                                               ; preds = %52, %49, %34
  %62 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i8* @read_file(i8*, i64*) #2

declare dso_local i32 @openpgp_verify(i8*, i8*, i64, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
