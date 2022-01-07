; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_check_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_check_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32, i64, i64, i64, i64 }

@SSH_ERR_BUFFER_READ_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"check\00", align 1
@SSH_ERR_NO_BUFFER_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_check_reserve(%struct.sshbuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %8 = call i32 @sshbuf_check_sanity(%struct.sshbuf* %7)
  store i32 %8, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %14 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %19 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @SSH_ERR_BUFFER_READ_ONLY, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %17
  %25 = call i32 @SSHBUF_TELL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %28 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %33 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %34, %35
  %37 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %38 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %41 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = icmp ult i64 %36, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %31, %24
  %46 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %45, %22, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @sshbuf_check_sanity(%struct.sshbuf*) #1

declare dso_local i32 @SSHBUF_TELL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
