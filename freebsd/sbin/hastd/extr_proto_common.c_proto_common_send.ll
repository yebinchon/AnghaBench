; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_common.c_proto_common_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_common.c_proto_common_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHUT_RD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAX_SEND_SIZE = common dso_local global i64 0, align 8
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Getting ENOBUFS errors for 11s on send(), giving up.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Got ENOBUFS error on send(), retrying for a bit.\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Data sent successfully after %d ENOBUFS error%s.\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_common_send(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @PJDLOG_ASSERT(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SHUT_RD, align 4
  %26 = call i32 @shutdown(i32 %24, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %5, align 4
  br label %131

30:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %131

31:                                               ; preds = %4
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @PJDLOG_ASSERT(i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp ugt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @PJDLOG_ASSERT(i32 %38)
  br label %40

40:                                               ; preds = %110, %31
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @MAX_SEND_SIZE, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  br label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @MAX_SEND_SIZE, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  store i64 %49, i64* %11, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* @MSG_NOSIGNAL, align 4
  %54 = call i32 @send(i32 %50, i8* %51, i64 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @ENOTCONN, align 4
  store i32 %58, i32* %5, align 4
  br label %131

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %100

62:                                               ; preds = %59
  %63 = load i32, i32* @errno, align 4
  %64 = load i32, i32* @EINTR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %110

67:                                               ; preds = %62
  %68 = load i32, i32* @errno, align 4
  %69 = load i32, i32* @ENOBUFS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 15
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %87

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 100000, %84
  %86 = call i32 @usleep(i32 %85)
  br label %110

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32, i32* @errno, align 4
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @blocking_socket(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %97, i32* @errno, align 4
  br label %98

98:                                               ; preds = %96, %92, %88
  %99 = load i32, i32* @errno, align 4
  store i32 %99, i32* %5, align 4
  br label %131

100:                                              ; preds = %59
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %7, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %8, align 8
  br label %110

110:                                              ; preds = %101, %81, %66
  %111 = load i64, i64* %8, align 8
  %112 = icmp ugt i64 %111, 0
  br i1 %112, label %40, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 1
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %122 = call i32 @pjdlog_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %117, i8* %121)
  br label %123

123:                                              ; preds = %116, %113
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 0, i32* %5, align 4
  br label %131

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @proto_descriptor_send(i32 %128, i32 %129)
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %126, %98, %57, %30, %28
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @send(i32, i8*, i64, i32) #1

declare dso_local i32 @pjdlog_warning(i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @blocking_socket(i32) #1

declare dso_local i32 @pjdlog_info(i8*, i32, i8*) #1

declare dso_local i32 @proto_descriptor_send(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
