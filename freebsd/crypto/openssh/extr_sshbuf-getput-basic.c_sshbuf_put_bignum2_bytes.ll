; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_put_bignum2_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_put_bignum2_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSHBUF_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SSH_ERR_NO_BUFFER_SPACE\00", align 1
@SSH_ERR_NO_BUFFER_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_put_bignum2_bytes(%struct.sshbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* @SSHBUF_SIZE_MAX, align 4
  %16 = sub nsw i32 %15, 5
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  store i32 %21, i32* %4, align 4
  br label %85

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %7, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %9, align 8
  br label %23

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, 128
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = call i32 @sshbuf_reserve(%struct.sshbuf* %50, i64 %55, i64** %8)
  store i32 %56, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %85

60:                                               ; preds = %47
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  %66 = call i32 @POKE_U32(i64* %61, i64 %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 4
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %60
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 4
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @memcpy(i64* %80, i64* %81, i64 %82)
  br label %84

84:                                               ; preds = %75, %72
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %58, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @sshbuf_reserve(%struct.sshbuf*, i64, i64**) #1

declare dso_local i32 @POKE_U32(i64*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
