; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_buf2prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_buf2prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@PROPOSAL_MAX = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@KEX_COOKIE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@proposal_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"first_kex_follows %d \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reserved %u \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_buf2prop(%struct.sshbuf* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca %struct.sshbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %8, align 8
  store i8** null, i8*** %11, align 8
  %13 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %13, align 8
  %14 = load i64, i64* @PROPOSAL_MAX, align 8
  %15 = call i8** @calloc(i64 %14, i32 8)
  store i8** %15, i8*** %11, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %18, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  %20 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %21 = call %struct.sshbuf* @sshbuf_fromb(%struct.sshbuf* %20)
  store %struct.sshbuf* %21, %struct.sshbuf** %8, align 8
  %22 = icmp eq %struct.sshbuf* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %24, i32* %12, align 4
  br label %81

25:                                               ; preds = %19
  %26 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %27 = load i32, i32* @KEX_COOKIE_LEN, align 4
  %28 = call i32 @sshbuf_consume(%struct.sshbuf* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %81

31:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %55, %31
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @PROPOSAL_MAX, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %38 = load i8**, i8*** %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %37, i8** %40, i32* null)
  store i32 %41, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %81

44:                                               ; preds = %36
  %45 = load i32*, i32** @proposal_names, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i8**, i8*** %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i64, ...) @debug2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %49, i8* %53)
  br label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %32

58:                                               ; preds = %32
  %59 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %60 = call i32 @sshbuf_get_u8(%struct.sshbuf* %59, i64* %9)
  store i32 %60, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %64 = call i32 @sshbuf_get_u32(%struct.sshbuf* %63, i64* %10)
  store i32 %64, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58
  br label %81

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i64, i64* %9, align 8
  %76 = call i32 (i8*, i64, ...) @debug2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %10, align 8
  %78 = call i32 (i8*, i64, ...) @debug2(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  store i32 0, i32* %12, align 4
  %79 = load i8**, i8*** %11, align 8
  %80 = load i8***, i8**** %7, align 8
  store i8** %79, i8*** %80, align 8
  br label %81

81:                                               ; preds = %74, %66, %43, %30, %23
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i8**, i8*** %11, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i8**, i8*** %11, align 8
  %89 = call i32 @kex_prop_free(i8** %88)
  br label %90

90:                                               ; preds = %87, %84, %81
  %91 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %92 = call i32 @sshbuf_free(%struct.sshbuf* %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i8** @calloc(i64, i32) #1

declare dso_local %struct.sshbuf* @sshbuf_fromb(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_consume(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #1

declare dso_local i32 @debug2(i8*, i64, ...) #1

declare dso_local i32 @sshbuf_get_u8(%struct.sshbuf*, i64*) #1

declare dso_local i32 @sshbuf_get_u32(%struct.sshbuf*, i64*) #1

declare dso_local i32 @kex_prop_free(i8**) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
