; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_consume_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_consume_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"len = %zu\00", align 1
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_consume_end(%struct.sshbuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @SSHBUF_DBG(i8* %8)
  %10 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %11 = call i32 @sshbuf_check_sanity(%struct.sshbuf* %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %33

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %22 = call i64 @sshbuf_len(%struct.sshbuf* %21)
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %29 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = call i32 @SSHBUF_TELL(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %24, %18, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @sshbuf_check_sanity(%struct.sshbuf*) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @SSHBUF_TELL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
