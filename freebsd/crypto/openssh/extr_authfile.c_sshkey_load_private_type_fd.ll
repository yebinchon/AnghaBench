; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_private_type_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_private_type_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_load_private_type_fd(i32 %0, i32 %1, i8* %2, %struct.sshkey** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sshkey**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.sshbuf*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.sshkey** %3, %struct.sshkey*** %9, align 8
  store i8** %4, i8*** %10, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %11, align 8
  %13 = load %struct.sshkey**, %struct.sshkey*** %9, align 8
  %14 = icmp ne %struct.sshkey** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load %struct.sshkey**, %struct.sshkey*** %9, align 8
  store %struct.sshkey* null, %struct.sshkey** %16, align 8
  br label %17

17:                                               ; preds = %15, %5
  %18 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %18, %struct.sshbuf** %11, align 8
  %19 = icmp eq %struct.sshbuf* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %21, i32* %12, align 4
  br label %37

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.sshbuf*, %struct.sshbuf** %11, align 8
  %25 = call i32 @sshkey_load_file(i32 %23, %struct.sshbuf* %24)
  store i32 %25, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load %struct.sshbuf*, %struct.sshbuf** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.sshkey**, %struct.sshkey*** %9, align 8
  %32 = load i8**, i8*** %10, align 8
  %33 = call i32 @sshkey_parse_private_fileblob_type(%struct.sshbuf* %28, i32 %29, i8* %30, %struct.sshkey** %31, i8** %32)
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %22
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %35, %20
  %38 = load %struct.sshbuf*, %struct.sshbuf** %11, align 8
  %39 = call i32 @sshbuf_free(%struct.sshbuf* %38)
  %40 = load i32, i32* %12, align 4
  ret i32 %40
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshkey_load_file(i32, %struct.sshbuf*) #1

declare dso_local i32 @sshkey_parse_private_fileblob_type(%struct.sshbuf*, i32, i8*, %struct.sshkey**, i8**) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
