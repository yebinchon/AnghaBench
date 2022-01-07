; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_sig.c_verify_asc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_sig.c_verify_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @verify_asc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @read_file(i8* %17, i64* %12)
  store i8* %18, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = trunc i64 %14 to i32
  %23 = call i64 @strlcpy(i8* %16, i8* %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = call i8* @strrchr(i8* %16, i8 signext 46)
  store i8* %24, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %20
  %29 = call i8* @read_file(i8* %16, i64* %11)
  store i8* %29, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @openpgp_verify(i8* %16, i8* %32, i64 %33, i8* %34, i64 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @free(i8* %40)
  store i8* null, i8** %9, align 8
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %28
  br label %45

44:                                               ; preds = %2
  store i8* null, i8** %9, align 8
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i8* %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @read_file(i8*, i64*) #2

declare dso_local i64 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @openpgp_verify(i8*, i8*, i64, i8*, i64, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
