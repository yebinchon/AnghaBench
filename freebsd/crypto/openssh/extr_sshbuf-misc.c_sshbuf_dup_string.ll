; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_dup_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_dup_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sshbuf_dup_string(%struct.sshbuf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %9 = call i32* @sshbuf_ptr(%struct.sshbuf* %8)
  store i32* %9, i32** %5, align 8
  %10 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %11 = call i64 @sshbuf_len(%struct.sshbuf* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @SIZE_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  store i8* null, i8** %2, align 8
  br label %57

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32* @memchr(i32* %23, i8 signext 0, i64 %24)
  store i32* %25, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 -1
  %33 = icmp ne i32* %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i8* null, i8** %2, align 8
  br label %57

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %35, %22, %19
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  %41 = call i8* @malloc(i64 %40)
  store i8* %41, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8* null, i8** %2, align 8
  br label %57

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @memcpy(i8* %48, i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %2, align 8
  br label %57

57:                                               ; preds = %52, %43, %34, %18
  %58 = load i8*, i8** %2, align 8
  ret i8* %58
}

declare dso_local i32* @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32* @memchr(i32*, i8 signext, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
