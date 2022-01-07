; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hmac.c_ssh_hmac_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hmac.c_ssh_hmac_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_hmac_ctx = type { i32, %struct.ssh_hmac_ctx*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssh_hmac_free(%struct.ssh_hmac_ctx* %0) #0 {
  %2 = alloca %struct.ssh_hmac_ctx*, align 8
  store %struct.ssh_hmac_ctx* %0, %struct.ssh_hmac_ctx** %2, align 8
  %3 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %4 = icmp ne %struct.ssh_hmac_ctx* %3, null
  br i1 %4, label %5, label %39

5:                                                ; preds = %1
  %6 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @ssh_digest_free(i32 %8)
  %10 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ssh_digest_free(i32 %12)
  %14 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ssh_digest_free(i32 %16)
  %18 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %18, i32 0, i32 1
  %20 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %19, align 8
  %21 = icmp ne %struct.ssh_hmac_ctx* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %23, i32 0, i32 1
  %25 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %24, align 8
  %26 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @explicit_bzero(%struct.ssh_hmac_ctx* %25, i32 %28)
  %30 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %30, i32 0, i32 1
  %32 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %31, align 8
  %33 = call i32 @free(%struct.ssh_hmac_ctx* %32)
  br label %34

34:                                               ; preds = %22, %5
  %35 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %36 = call i32 @explicit_bzero(%struct.ssh_hmac_ctx* %35, i32 32)
  %37 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  %38 = call i32 @free(%struct.ssh_hmac_ctx* %37)
  br label %39

39:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @ssh_digest_free(i32) #1

declare dso_local i32 @explicit_bzero(%struct.ssh_hmac_ctx*, i32) #1

declare dso_local i32 @free(%struct.ssh_hmac_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
