; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i64, i32, %struct.sshbuf*, i32, %struct.sshbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshbuf_free(%struct.sshbuf* %0) #0 {
  %2 = alloca %struct.sshbuf*, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %2, align 8
  %3 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %4 = icmp eq %struct.sshbuf* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %48

6:                                                ; preds = %1
  %7 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %8 = call i64 @sshbuf_check_sanity(%struct.sshbuf* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %48

11:                                               ; preds = %6
  %12 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %13 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %12, i32 0, i32 4
  %14 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  call void @sshbuf_free(%struct.sshbuf* %14)
  %15 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %16 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %15, i32 0, i32 4
  store %struct.sshbuf* null, %struct.sshbuf** %16, align 8
  %17 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %18 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %22 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  br label %48

26:                                               ; preds = %11
  %27 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %28 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %33 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %32, i32 0, i32 2
  %34 = load %struct.sshbuf*, %struct.sshbuf** %33, align 8
  %35 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %36 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @explicit_bzero(%struct.sshbuf* %34, i32 %37)
  %39 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %40 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %39, i32 0, i32 2
  %41 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %42 = call i32 @free(%struct.sshbuf* %41)
  br label %43

43:                                               ; preds = %31, %26
  %44 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %45 = call i32 @explicit_bzero(%struct.sshbuf* %44, i32 40)
  %46 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %47 = call i32 @free(%struct.sshbuf* %46)
  br label %48

48:                                               ; preds = %43, %25, %10, %5
  ret void
}

declare dso_local i64 @sshbuf_check_sanity(%struct.sshbuf*) #1

declare dso_local i32 @explicit_bzero(%struct.sshbuf*, i32) #1

declare dso_local i32 @free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
