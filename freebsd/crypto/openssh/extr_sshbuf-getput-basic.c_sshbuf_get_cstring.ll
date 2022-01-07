; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_cstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"SSH_ERR_INVALID_FORMAT\00", align 1
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"SSH_ERR_ALLOC_FAIL\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_get_cstring(%struct.sshbuf* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8**, i8*** %6, align 8
  store i8* null, i8** %15, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64*, i64** %7, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %23 = call i32 @sshbuf_peek_string_direct(%struct.sshbuf* %22, i32** %9, i64* %8)
  store i32 %23, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32* @memchr(i32* %31, i8 signext 0, i64 %32)
  store i32* %33, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = getelementptr inbounds i32, i32* %39, i64 -1
  %41 = icmp ult i32* %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %44, i32* %4, align 4
  br label %83

45:                                               ; preds = %35, %30, %27
  %46 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %47 = call i32 @sshbuf_skip_string(%struct.sshbuf* %46)
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %83

50:                                               ; preds = %45
  %51 = load i8**, i8*** %6, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  %56 = call i8* @malloc(i64 %55)
  %57 = load i8**, i8*** %6, align 8
  store i8* %56, i8** %57, align 8
  %58 = icmp eq i8* %56, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %61, i32* %4, align 4
  br label %83

62:                                               ; preds = %53
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i8**, i8*** %6, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @memcpy(i8* %67, i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %71, %50
  %77 = load i64*, i64** %7, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* %8, align 8
  %81 = load i64*, i64** %7, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %59, %49, %42, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @sshbuf_peek_string_direct(%struct.sshbuf*, i32**, i64*) #1

declare dso_local i32* @memchr(i32*, i8 signext, i64) #1

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @sshbuf_skip_string(%struct.sshbuf*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
