; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hmac.c_ssh_hmac_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hmac.c_ssh_hmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_hmac_ctx = type { i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_hmac_final(%struct.ssh_hmac_ctx* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh_hmac_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ssh_hmac_ctx* %0, %struct.ssh_hmac_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ssh_digest_bytes(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @ssh_digest_final(i32 %19, i32* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4
  br label %56

27:                                               ; preds = %16
  %28 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ssh_digest_copy_state(i32 %30, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %27
  %37 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @ssh_digest_update(i32 %39, i32* %42, i64 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %36
  %47 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @ssh_digest_final(i32 %49, i32* %50, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %36, %27
  store i32 -1, i32* %4, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %54, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @ssh_digest_bytes(i32) #1

declare dso_local i64 @ssh_digest_final(i32, i32*, i64) #1

declare dso_local i64 @ssh_digest_copy_state(i32, i32) #1

declare dso_local i64 @ssh_digest_update(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
