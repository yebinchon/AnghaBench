; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32, i64, i32*, i32*, i64, i64, i64 }

@SSHBUF_SIZE_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshbuf_reset(%struct.sshbuf* %0) #0 {
  %2 = alloca %struct.sshbuf*, align 8
  %3 = alloca i32*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %2, align 8
  %4 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %5 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %10 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %8, %1
  %14 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %15 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %18 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %17, i32 0, i32 5
  store i64 %16, i64* %18, align 8
  br label %57

19:                                               ; preds = %8
  %20 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %21 = call i32 @sshbuf_check_sanity(%struct.sshbuf* %20)
  %22 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %23 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %25 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %27 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SSHBUF_SIZE_INIT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %19
  %32 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %33 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %36 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SSHBUF_SIZE_INIT, align 8
  %39 = call i32* @recallocarray(i32* %34, i64 %37, i64 %38, i32 1)
  store i32* %39, i32** %3, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %44 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %46 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %45, i32 0, i32 3
  store i32* %42, i32** %46, align 8
  %47 = load i64, i64* @SSHBUF_SIZE_INIT, align 8
  %48 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %49 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %31
  br label %51

51:                                               ; preds = %50, %19
  %52 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %53 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @SSHBUF_SIZE_INIT, align 8
  %56 = call i32 @explicit_bzero(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @sshbuf_check_sanity(%struct.sshbuf*) #1

declare dso_local i32* @recallocarray(i32*, i64, i64, i32) #1

declare dso_local i32 @explicit_bzero(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
