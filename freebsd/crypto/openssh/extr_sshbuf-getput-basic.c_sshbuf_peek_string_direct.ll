; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_peek_string_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_peek_string_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"SSH_ERR_MESSAGE_INCOMPLETE\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@SSHBUF_SIZE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SSH_ERR_STRING_TOO_LARGE\00", align 1
@SSH_ERR_STRING_TOO_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_peek_string_direct(%struct.sshbuf* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %11 = call i32* @sshbuf_ptr(%struct.sshbuf* %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32**, i32*** %6, align 8
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64*, i64** %7, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %23 = call i32 @sshbuf_len(%struct.sshbuf* %22)
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %21
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @PEEK_U32(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SSHBUF_SIZE_MAX, align 4
  %33 = sub nsw i32 %32, 4
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @SSH_ERR_STRING_TOO_LARGE, align 4
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %28
  %39 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %40 = call i32 @sshbuf_len(%struct.sshbuf* %39)
  %41 = sub nsw i32 %40, 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %46, i32* %4, align 4
  br label %62

47:                                               ; preds = %38
  %48 = load i32**, i32*** %6, align 8
  %49 = icmp ne i32** %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32**, i32*** %6, align 8
  store i32* %52, i32** %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i64*, i64** %7, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %54
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %44, %35, %25
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32* @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @PEEK_U32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
