; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_put_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_put_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSHBUF_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SSH_ERR_NO_BUFFER_SPACE\00", align 1
@SSH_ERR_NO_BUFFER_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_put_string(%struct.sshbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i32, i32* @SSHBUF_SIZE_MAX, align 4
  %12 = sub nsw i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 4
  %22 = call i32 @sshbuf_reserve(%struct.sshbuf* %19, i64 %21, i32** %8)
  store i32 %22, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %18
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @POKE_U32(i32* %27, i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memcpy(i32* %34, i8* %35, i64 %36)
  br label %38

38:                                               ; preds = %32, %26
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %24, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @sshbuf_reserve(%struct.sshbuf*, i64, i32**) #1

declare dso_local i32 @POKE_U32(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
