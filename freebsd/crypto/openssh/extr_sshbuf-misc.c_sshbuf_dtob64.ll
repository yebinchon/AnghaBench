; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_dtob64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-misc.c_sshbuf_dtob64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sshbuf_dtob64(%struct.sshbuf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  %9 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %10 = call i64 @sshbuf_len(%struct.sshbuf* %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %12 = call i32* @sshbuf_ptr(%struct.sshbuf* %11)
  store i32* %12, i32** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %48

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 2
  %20 = udiv i64 %19, 3
  %21 = mul i64 %20, 4
  %22 = add i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* @SIZE_MAX, align 4
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %4, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load i64, i64* %5, align 8
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %17
  store i8* null, i8** %2, align 8
  br label %48

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @b64_ntop(i32* %34, i64 %35, i8* %36, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @explicit_bzero(i8* %41, i64 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @free(i8* %44)
  store i8* null, i8** %2, align 8
  br label %48

46:                                               ; preds = %33
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %2, align 8
  br label %48

48:                                               ; preds = %46, %40, %32, %15
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32* @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @b64_ntop(i32*, i64, i8*, i64) #1

declare dso_local i32 @explicit_bzero(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
