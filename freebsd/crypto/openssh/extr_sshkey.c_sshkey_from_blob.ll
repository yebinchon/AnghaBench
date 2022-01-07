; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_from_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_from_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_from_blob(i32* %0, i64 %1, %struct.sshkey** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sshkey**, align 8
  %8 = alloca %struct.sshbuf*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sshkey** %2, %struct.sshkey*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.sshbuf* @sshbuf_from(i32* %10, i64 %11)
  store %struct.sshbuf* %12, %struct.sshbuf** %8, align 8
  %13 = icmp eq %struct.sshbuf* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %18 = load %struct.sshkey**, %struct.sshkey*** %7, align 8
  %19 = call i32 @sshkey_from_blob_internal(%struct.sshbuf* %17, %struct.sshkey** %18, i32 1)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %21 = call i32 @sshbuf_free(%struct.sshbuf* %20)
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.sshbuf* @sshbuf_from(i32*, i64) #1

declare dso_local i32 @sshkey_from_blob_internal(%struct.sshbuf*, %struct.sshkey**, i32) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
