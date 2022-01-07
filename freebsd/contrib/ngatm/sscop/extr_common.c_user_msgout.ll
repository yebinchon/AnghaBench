; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/sscop/extr_common.c_user_msgout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/sscop/extr_common.c_user_msgout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64 }
%struct.iovec = type { i32, i64 }

@useframe = common dso_local global i64 0, align 8
@user_out_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"write sscop\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"short sscop write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_msgout(%struct.uni_msg* %0) #0 {
  %2 = alloca %struct.uni_msg*, align 8
  %3 = alloca [2 x %struct.iovec], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %2, align 8
  %6 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %7 = call i8* @uni_msg_len(%struct.uni_msg* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i64, i64* @useframe, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 4, i32 0
  %12 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 16
  %14 = ptrtoint i8** %4 to i64
  %15 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %18 = call i8* @uni_msg_len(%struct.uni_msg* %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 1
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 16
  %22 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %23 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 1
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @user_out_fd, align 4
  %28 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %29 = call i32 @writev(i32 %27, %struct.iovec* %28, i32 2)
  store i32 %29, i32* %5, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %1
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 0
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 16
  %39 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %3, i64 0, i64 1
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 16
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %35, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %33
  %48 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %49 = call i32 @uni_msg_destroy(%struct.uni_msg* %48)
  ret void
}

declare dso_local i8* @uni_msg_len(%struct.uni_msg*) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
