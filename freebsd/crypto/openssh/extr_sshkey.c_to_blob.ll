; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_to_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshkey*, i32**, i64*, i32, i32)* @to_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_blob(%struct.sshkey* %0, i32** %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sshkey*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.sshbuf*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %15, i32* %12, align 4
  store %struct.sshbuf* null, %struct.sshbuf** %14, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64*, i64** %9, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i32**, i32*** %8, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32**, i32*** %8, align 8
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %26, %struct.sshbuf** %14, align 8
  %27 = icmp eq %struct.sshbuf* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %68

30:                                               ; preds = %25
  %31 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %32 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @to_blob_buf(%struct.sshkey* %31, %struct.sshbuf* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %64

38:                                               ; preds = %30
  %39 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %40 = call i64 @sshbuf_len(%struct.sshbuf* %39)
  store i64 %40, i64* %13, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %13, align 8
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32**, i32*** %8, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i64, i64* %13, align 8
  %51 = call i32* @malloc(i64 %50)
  %52 = load i32**, i32*** %8, align 8
  store i32* %51, i32** %52, align 8
  %53 = icmp eq i32* %51, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %55, i32* %12, align 4
  br label %64

56:                                               ; preds = %49
  %57 = load i32**, i32*** %8, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %60 = call i32 @sshbuf_ptr(%struct.sshbuf* %59)
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @memcpy(i32* %58, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %56, %46
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %54, %37
  %65 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %66 = call i32 @sshbuf_free(%struct.sshbuf* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %28
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @to_blob_buf(%struct.sshkey*, %struct.sshbuf*, i32, i32) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
