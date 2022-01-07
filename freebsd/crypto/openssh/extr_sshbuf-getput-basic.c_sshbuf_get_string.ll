; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"SSH_ERR_ALLOC_FAIL\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_get_string(%struct.sshbuf* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i64*, i64** %7, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64*, i64** %7, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %22 = call i32 @sshbuf_get_string_direct(%struct.sshbuf* %21, i8** %8, i64* %9)
  store i32 %22, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %20
  %27 = load i8**, i8*** %6, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  %32 = call i8* @malloc(i64 %31)
  %33 = load i8**, i8*** %6, align 8
  store i8* %32, i8** %33, align 8
  %34 = icmp eq i8* %32, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %29
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @memcpy(i8* %43, i8* %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %47, %26
  %53 = load i64*, i64** %7, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %35, %24
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @sshbuf_get_string_direct(%struct.sshbuf*, i8**, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
