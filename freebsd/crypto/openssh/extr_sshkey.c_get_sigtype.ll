; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_get_sigtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_get_sigtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8**)* @get_sigtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sigtype(i32* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sshbuf*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8**, i8*** %7, align 8
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.sshbuf* @sshbuf_from(i32* %16, i64 %17)
  store %struct.sshbuf* %18, %struct.sshbuf** %9, align 8
  %19 = icmp eq %struct.sshbuf* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %21, i32* %4, align 4
  br label %40

22:                                               ; preds = %15
  %23 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %24 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %23, i8** %10, i32* null)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %34

27:                                               ; preds = %22
  %28 = load i8**, i8*** %7, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  %32 = load i8**, i8*** %7, align 8
  store i8* %31, i8** %32, align 8
  store i8* null, i8** %10, align 8
  br label %33

33:                                               ; preds = %30, %27
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %38 = call i32 @sshbuf_free(%struct.sshbuf* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.sshbuf* @sshbuf_from(i32*, i64) #1

declare dso_local i32 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
