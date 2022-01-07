; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_string_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_string_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"SSH_ERR_INTERNAL_ERROR\00", align 1
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_get_string_direct(%struct.sshbuf* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32**, i32*** %6, align 8
  store i32* null, i32** %14, align 8
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
  %22 = call i32 @sshbuf_peek_string_direct(%struct.sshbuf* %21, i32** %9, i64* %8)
  store i32 %22, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %20
  %27 = load i32**, i32*** %6, align 8
  %28 = icmp ne i32** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  %31 = load i32**, i32*** %6, align 8
  store i32* %30, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64*, i64** %7, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 4
  %42 = call i64 @sshbuf_consume(%struct.sshbuf* %39, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (...) @SSHBUF_ABORT()
  %47 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %44, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @sshbuf_peek_string_direct(%struct.sshbuf*, i32**, i64*) #1

declare dso_local i64 @sshbuf_consume(%struct.sshbuf*, i64) #1

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @SSHBUF_ABORT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
