; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_write(%struct.sshkey* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %6, align 8
  %8 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %8, i32* %7, align 4
  %9 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %9, %struct.sshbuf** %6, align 8
  %10 = icmp eq %struct.sshbuf* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %15 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %16 = call i32 @sshkey_format_text(%struct.sshkey* %14, %struct.sshbuf* %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %36

19:                                               ; preds = %13
  %20 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %21 = call i32 @sshbuf_ptr(%struct.sshbuf* %20)
  %22 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %23 = call i32 @sshbuf_len(%struct.sshbuf* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @fwrite(i32 %21, i32 %23, i32 1, i32* %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @feof(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EPIPE, align 4
  store i32 %32, i32* @errno, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %34, i32* %7, align 4
  br label %36

35:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %33, %18
  %37 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %38 = call i32 @sshbuf_free(%struct.sshbuf* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshkey_format_text(%struct.sshkey*, %struct.sshbuf*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
