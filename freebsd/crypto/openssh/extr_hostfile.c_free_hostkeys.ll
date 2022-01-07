; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_free_hostkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_free_hostkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostkeys = type { i64, %struct.hostkeys*, i32, %struct.hostkeys*, %struct.hostkeys* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_hostkeys(%struct.hostkeys* %0) #0 {
  %2 = alloca %struct.hostkeys*, align 8
  %3 = alloca i64, align 8
  store %struct.hostkeys* %0, %struct.hostkeys** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %41, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.hostkeys*, %struct.hostkeys** %2, align 8
  %7 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %4
  %11 = load %struct.hostkeys*, %struct.hostkeys** %2, align 8
  %12 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %11, i32 0, i32 1
  %13 = load %struct.hostkeys*, %struct.hostkeys** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %13, i64 %14
  %16 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %15, i32 0, i32 4
  %17 = load %struct.hostkeys*, %struct.hostkeys** %16, align 8
  %18 = call i32 @free(%struct.hostkeys* %17)
  %19 = load %struct.hostkeys*, %struct.hostkeys** %2, align 8
  %20 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %19, i32 0, i32 1
  %21 = load %struct.hostkeys*, %struct.hostkeys** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %21, i64 %22
  %24 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %23, i32 0, i32 3
  %25 = load %struct.hostkeys*, %struct.hostkeys** %24, align 8
  %26 = call i32 @free(%struct.hostkeys* %25)
  %27 = load %struct.hostkeys*, %struct.hostkeys** %2, align 8
  %28 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %27, i32 0, i32 1
  %29 = load %struct.hostkeys*, %struct.hostkeys** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %29, i64 %30
  %32 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sshkey_free(i32 %33)
  %35 = load %struct.hostkeys*, %struct.hostkeys** %2, align 8
  %36 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %35, i32 0, i32 1
  %37 = load %struct.hostkeys*, %struct.hostkeys** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %37, i64 %38
  %40 = call i32 @explicit_bzero(%struct.hostkeys* %39, i32 40)
  br label %41

41:                                               ; preds = %10
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %4

44:                                               ; preds = %4
  %45 = load %struct.hostkeys*, %struct.hostkeys** %2, align 8
  %46 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %45, i32 0, i32 1
  %47 = load %struct.hostkeys*, %struct.hostkeys** %46, align 8
  %48 = call i32 @free(%struct.hostkeys* %47)
  %49 = load %struct.hostkeys*, %struct.hostkeys** %2, align 8
  %50 = call i32 @explicit_bzero(%struct.hostkeys* %49, i32 40)
  %51 = load %struct.hostkeys*, %struct.hostkeys** %2, align 8
  %52 = call i32 @free(%struct.hostkeys* %51)
  ret void
}

declare dso_local i32 @free(%struct.hostkeys*) #1

declare dso_local i32 @sshkey_free(i32) #1

declare dso_local i32 @explicit_bzero(%struct.hostkeys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
