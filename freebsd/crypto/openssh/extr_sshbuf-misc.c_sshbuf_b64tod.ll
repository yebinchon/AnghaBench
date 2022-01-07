; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_b64tod.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_b64tod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_b64tod(%struct.sshbuf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @malloc(i64 %16)
  store i32* %17, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @b64_pton(i8* %22, i32* %23, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @explicit_bzero(i32* %28, i64 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @free(i32* %31)
  %33 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %21
  %35 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @sshbuf_put(%struct.sshbuf* %35, i32* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @explicit_bzero(i32* %41, i64 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @free(i32* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %34
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @explicit_bzero(i32* %48, i64 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @free(i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %40, %27, %19, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @b64_pton(i8*, i32*, i64) #1

declare dso_local i32 @explicit_bzero(i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
