; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32, i32, i32*, i32*, i32*, i64, i32 }

@SSHBUF_SIZE_INIT = common dso_local global i32 0, align 4
@SSHBUF_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sshbuf* @sshbuf_new() #0 {
  %1 = alloca %struct.sshbuf*, align 8
  %2 = alloca %struct.sshbuf*, align 8
  %3 = call i8* @calloc(i32 48, i32 1)
  %4 = bitcast i8* %3 to %struct.sshbuf*
  store %struct.sshbuf* %4, %struct.sshbuf** %2, align 8
  %5 = icmp eq %struct.sshbuf* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.sshbuf* null, %struct.sshbuf** %1, align 8
  br label %35

7:                                                ; preds = %0
  %8 = load i32, i32* @SSHBUF_SIZE_INIT, align 4
  %9 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %10 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @SSHBUF_SIZE_MAX, align 4
  %12 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %13 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %15 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %17 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %19 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %21 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @calloc(i32 1, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %26 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %28 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %27, i32 0, i32 3
  store i32* %24, i32** %28, align 8
  %29 = icmp eq i32* %24, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %32 = call i32 @free(%struct.sshbuf* %31)
  store %struct.sshbuf* null, %struct.sshbuf** %1, align 8
  br label %35

33:                                               ; preds = %7
  %34 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  store %struct.sshbuf* %34, %struct.sshbuf** %1, align 8
  br label %35

35:                                               ; preds = %33, %30, %6
  %36 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  ret %struct.sshbuf* %36
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
