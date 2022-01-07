; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_parse_private_fileblob_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_parse_private_fileblob_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.sshkey = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_KEY_WRONG_PASSPHRASE = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_parse_private_fileblob_type(%struct.sshbuf* %0, i32 %1, i8* %2, %struct.sshkey** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sshkey**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.sshkey** %3, %struct.sshkey*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.sshkey**, %struct.sshkey*** %10, align 8
  %15 = icmp ne %struct.sshkey** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load %struct.sshkey**, %struct.sshkey*** %10, align 8
  store %struct.sshkey* null, %struct.sshkey** %17, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i8**, i8*** %11, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8**, i8*** %11, align 8
  store i8* null, i8** %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %49 [
    i32 131, label %25
    i32 129, label %32
  ]

25:                                               ; preds = %23
  %26 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.sshkey**, %struct.sshkey*** %10, align 8
  %30 = load i8**, i8*** %11, align 8
  %31 = call i32 @sshkey_parse_private2(%struct.sshbuf* %26, i32 %27, i8* %28, %struct.sshkey** %29, i8** %30)
  store i32 %31, i32* %6, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.sshkey**, %struct.sshkey*** %10, align 8
  %37 = load i8**, i8*** %11, align 8
  %38 = call i32 @sshkey_parse_private2(%struct.sshbuf* %33, i32 %34, i8* %35, %struct.sshkey** %36, i8** %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @SSH_ERR_KEY_WRONG_PASSPHRASE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %48, i32* %6, align 4
  br label %51

49:                                               ; preds = %23
  %50 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %47, %45, %25
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @sshkey_parse_private2(%struct.sshbuf*, i32, i8*, %struct.sshkey**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
