; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_puts_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_puts_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_puts_opts(%struct.sshkey* %0, %struct.sshbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %5, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %10, %struct.sshbuf** %8, align 8
  %11 = icmp eq %struct.sshbuf* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %13, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %16 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @to_blob_buf(%struct.sshkey* %15, %struct.sshbuf* %16, i32 0, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %23 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %24 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %22, %struct.sshbuf* %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %27 = call i32 @sshbuf_free(%struct.sshbuf* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @to_blob_buf(%struct.sshkey*, %struct.sshbuf*, i32, i32) #1

declare dso_local i32 @sshbuf_put_stringb(%struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
