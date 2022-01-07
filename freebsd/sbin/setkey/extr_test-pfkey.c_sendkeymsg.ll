; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-pfkey.c_sendkeymsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-pfkey.c_sendkeymsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_msg = type { i32 }

@PF_KEY = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"socket(PF_KEY)\00", align 1
@m_buf = common dso_local global i64 0, align 8
@m_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendkeymsg() #0 {
  %1 = alloca [32768 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PF_KEY, align 4
  %5 = load i32, i32* @SOCK_RAW, align 4
  %6 = load i32, i32* @PF_KEY_V2, align 4
  %7 = call i32 @socket(i32 %4, i32 %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %33

11:                                               ; preds = %0
  %12 = load i64, i64* @m_buf, align 8
  %13 = inttoptr i64 %12 to %struct.sadb_msg*
  %14 = call i32 @pfkey_sadump(%struct.sadb_msg* %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i64, i64* @m_buf, align 8
  %17 = load i32, i32* @m_len, align 4
  %18 = call i32 @send(i32 %15, i64 %16, i32 %17, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %33

22:                                               ; preds = %11
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds [32768 x i32], [32768 x i32]* %1, i64 0, i64 0
  %25 = call i32 @recv(i32 %23, i32* %24, i32 131072, i32 0)
  store i32 %25, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %33

29:                                               ; preds = %22
  %30 = getelementptr inbounds [32768 x i32], [32768 x i32]* %1, i64 0, i64 0
  %31 = bitcast i32* %30 to %struct.sadb_msg*
  %32 = call i32 @pfkey_sadump(%struct.sadb_msg* %31)
  br label %33

33:                                               ; preds = %29, %27, %20, %9
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @close(i32 %34)
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pfkey_sadump(%struct.sadb_msg*) #1

declare dso_local i32 @send(i32, i64, i32, i32) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
