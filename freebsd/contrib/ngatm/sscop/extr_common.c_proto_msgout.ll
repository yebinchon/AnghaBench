; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/sscop/extr_common.c_proto_msgout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/sscop/extr_common.c_proto_msgout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64 }
%struct.iovec = type { i32, i64 }

@proto_msgout.sent = internal global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@loose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"loosing message\00", align 1
@sscopframe = common dso_local global i64 0, align 8
@sscop_fd = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot get flags for sscop fd\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot set flags for sscop fd\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"write sscop\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"short sscop write %zu %zu %zd\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"cannot restore flags for sscop fd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proto_msgout(%struct.uni_msg* %0) #0 {
  %2 = alloca %struct.uni_msg*, align 8
  %3 = alloca [2 x %struct.iovec], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %2, align 8
  %7 = load i32, i32* @verbose, align 4
  %8 = and i32 %7, 2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %12 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %15 = call i8* @uni_msg_len(%struct.uni_msg* %14)
  %16 = call i32 @dump_buf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %13, i8* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @loose, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32, i32* @proto_msgout.sent, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @proto_msgout.sent, align 4
  %23 = load i32, i32* @loose, align 4
  %24 = srem i32 %21, %23
  %25 = load i32, i32* @loose, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %31 = call i32 @uni_msg_destroy(%struct.uni_msg* %30)
  br label %114

32:                                               ; preds = %20, %17
  %33 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %34 = call i8* @uni_msg_len(%struct.uni_msg* %33)
  store i8* %34, i8** %4, align 8
  %35 = load i64, i64* @sscopframe, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 4, i32 0
  %39 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 16
  %41 = ptrtoint i8** %4 to i64
  %42 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %45 = call i8* @uni_msg_len(%struct.uni_msg* %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 1
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 16
  %49 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %50 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 1
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @sscop_fd, align 4
  %55 = load i32, i32* @F_GETFL, align 4
  %56 = call i32 @fcntl(i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %6, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %32
  %59 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %32
  %61 = load i32, i32* @O_NONBLOCK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @sscop_fd, align 4
  %66 = load i32, i32* @F_SETFL, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @fcntl(i32 %65, i32 %66, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %60
  %73 = load i32, i32* @sscop_fd, align 4
  %74 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %75 = call i32 @writev(i32 %73, %struct.iovec* %74, i32 2)
  store i32 %75, i32* %5, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %83 = getelementptr inbounds %struct.iovec, %struct.iovec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 16
  %85 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 1
  %86 = getelementptr inbounds %struct.iovec, %struct.iovec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 16
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %81, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %79
  %92 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 16
  %95 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 1
  %96 = getelementptr inbounds %struct.iovec, %struct.iovec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 16
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %79
  %101 = load i32, i32* @O_NONBLOCK, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* @sscop_fd, align 4
  %105 = load i32, i32* @F_SETFL, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @fcntl(i32 %104, i32 %105, i32 %106)
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %100
  %112 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %113 = call i32 @uni_msg_destroy(%struct.uni_msg* %112)
  br label %114

114:                                              ; preds = %111, %28
  ret void
}

declare dso_local i32 @dump_buf(i8*, i64, i8*) #1

declare dso_local i8* @uni_msg_len(%struct.uni_msg*) #1

declare dso_local i32 @VERBOSE(i8*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
