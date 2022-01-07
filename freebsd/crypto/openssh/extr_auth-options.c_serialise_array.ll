; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_serialise_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_serialise_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, i8**, i64)* @serialise_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serialise_array(%struct.sshbuf* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sshbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @INT_MAX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %15, i32* %4, align 4
  br label %57

16:                                               ; preds = %3
  %17 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %17, %struct.sshbuf** %8, align 8
  %18 = icmp eq %struct.sshbuf* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %16
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %27, i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %36 = call i32 @sshbuf_free(%struct.sshbuf* %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %57

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  br label %22

42:                                               ; preds = %22
  %43 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @sshbuf_put_u32(%struct.sshbuf* %43, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %49 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %50 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %48, %struct.sshbuf* %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47, %42
  %53 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %54 = call i32 @sshbuf_free(%struct.sshbuf* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %52, %34, %19, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i64) #1

declare dso_local i32 @sshbuf_put_stringb(%struct.sshbuf*, %struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
