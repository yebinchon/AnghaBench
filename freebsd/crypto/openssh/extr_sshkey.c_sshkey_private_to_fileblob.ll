; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_private_to_fileblob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_private_to_fileblob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_private_to_fileblob(%struct.sshkey* %0, %struct.sshbuf* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sshkey*, align 8
  %10 = alloca %struct.sshbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %9, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %17 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 130, label %19
  ]

19:                                               ; preds = %7
  %20 = load %struct.sshkey*, %struct.sshkey** %9, align 8
  %21 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @sshkey_private_to_blob2(%struct.sshkey* %20, %struct.sshbuf* %21, i8* %22, i8* %23, i8* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @sshkey_private_to_blob2(%struct.sshkey*, %struct.sshbuf*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
