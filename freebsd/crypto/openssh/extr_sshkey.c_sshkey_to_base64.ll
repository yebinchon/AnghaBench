; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_to_base64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_to_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_to_base64(%struct.sshkey* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca i8*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %9, i32* %6, align 4
  store %struct.sshbuf* null, %struct.sshbuf** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %15, %struct.sshbuf** %7, align 8
  %16 = icmp eq %struct.sshbuf* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %14
  %20 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %21 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %22 = call i32 @sshkey_putb(%struct.sshkey* %20, %struct.sshbuf* %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %38

25:                                               ; preds = %19
  %26 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %27 = call i8* @sshbuf_dtob64(%struct.sshbuf* %26)
  store i8* %27, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %30, i32* %6, align 4
  br label %38

31:                                               ; preds = %25
  %32 = load i8**, i8*** %5, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8**, i8*** %5, align 8
  store i8* %35, i8** %36, align 8
  store i8* null, i8** %8, align 8
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %29, %24
  %39 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %40 = call i32 @sshbuf_free(%struct.sshbuf* %39)
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshkey_putb(%struct.sshkey*, %struct.sshbuf*) #1

declare dso_local i8* @sshbuf_dtob64(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
