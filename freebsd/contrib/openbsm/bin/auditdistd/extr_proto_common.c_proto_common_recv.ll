; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_common.c_proto_common_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_common.c_proto_common_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHUT_WR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_common_recv(i32 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @PJDLOG_ASSERT(i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SHUT_WR, align 4
  %24 = call i32 @shutdown(i32 %22, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %5, align 4
  br label %82

28:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %82

29:                                               ; preds = %4
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @PJDLOG_ASSERT(i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @PJDLOG_ASSERT(i32 %36)
  br label %38

38:                                               ; preds = %51, %29
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @MSG_WAITALL, align 4
  %43 = call i32 @recv(i32 %39, i8* %40, i64 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @errno, align 4
  %49 = load i32, i32* @EINTR, align 4
  %50 = icmp eq i32 %48, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %38, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @ENOTCONN, align 4
  store i32 %57, i32* %5, align 4
  br label %82

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @blocking_socket(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %70, i32* @errno, align 4
  br label %71

71:                                               ; preds = %69, %65, %61
  %72 = load i32, i32* @errno, align 4
  store i32 %72, i32* %5, align 4
  br label %82

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %9, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @proto_descriptor_recv(i32 %79, i32* %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %77, %71, %56, %28, %26
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i64, i32) #1

declare dso_local i64 @blocking_socket(i32) #1

declare dso_local i32 @proto_descriptor_recv(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
