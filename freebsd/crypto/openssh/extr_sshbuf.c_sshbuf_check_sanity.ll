; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_check_sanity.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_check_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32, i64, i64, i64, i64, i32*, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"sanity\00", align 1
@SSHBUF_REFS_MAX = common dso_local global i32 0, align 4
@SSHBUF_SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"SSH_ERR_INTERNAL_ERROR\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*)* @sshbuf_check_sanity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sshbuf_check_sanity(%struct.sshbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sshbuf*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  %4 = call i32 @SSHBUF_TELL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %6 = icmp eq %struct.sshbuf* %5, null
  br i1 %6, label %66, label %7

7:                                                ; preds = %1
  %8 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %9 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %14 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %17 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %15, %18
  br i1 %19, label %66, label %20

20:                                               ; preds = %12, %7
  %21 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %22 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %66, label %25

25:                                               ; preds = %20
  %26 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %27 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SSHBUF_REFS_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %66, label %31

31:                                               ; preds = %25
  %32 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %33 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %31
  %37 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %38 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SSHBUF_SIZE_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %66, label %42

42:                                               ; preds = %36
  %43 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %44 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %47 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %42
  %51 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %52 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %55 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %60 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %63 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br label %66

66:                                               ; preds = %58, %50, %42, %36, %31, %25, %20, %12, %1
  %67 = phi i1 [ true, %50 ], [ true, %42 ], [ true, %36 ], [ true, %31 ], [ true, %25 ], [ true, %20 ], [ true, %12 ], [ true, %1 ], [ %65, %58 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @__predict_false(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @SIGSEGV, align 4
  %74 = load i32, i32* @SIG_DFL, align 4
  %75 = call i32 @signal(i32 %73, i32 %74)
  %76 = load i32, i32* @SIGSEGV, align 4
  %77 = call i32 @raise(i32 %76)
  %78 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %78, i32* %2, align 4
  br label %80

79:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %71
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @SSHBUF_TELL(i8*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
