; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hmac.c_ssh_hmac_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hmac.c_ssh_hmac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_hmac_ctx = type { i32, i32, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ssh_hmac_ctx* @ssh_hmac_start(i32 %0) #0 {
  %2 = alloca %struct.ssh_hmac_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh_hmac_ctx*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i8* @calloc(i32 1, i32 40)
  %6 = bitcast i8* %5 to %struct.ssh_hmac_ctx*
  store %struct.ssh_hmac_ctx* %6, %struct.ssh_hmac_ctx** %4, align 8
  %7 = icmp eq %struct.ssh_hmac_ctx* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.ssh_hmac_ctx* null, %struct.ssh_hmac_ctx** %2, align 8
  br label %55

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @ssh_digest_start(i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %16, i32 0, i32 3
  store i32* %15, i32** %17, align 8
  %18 = icmp eq i32* %15, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @ssh_digest_start(i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %23, i32 0, i32 5
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = call i8* @ssh_digest_start(i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = icmp eq i32* %29, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %19, %9
  br label %52

34:                                               ; preds = %26
  %35 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ssh_digest_blocksize(i32* %37)
  %39 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @calloc(i32 1, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = icmp eq i32* %45, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %52

50:                                               ; preds = %34
  %51 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  store %struct.ssh_hmac_ctx* %51, %struct.ssh_hmac_ctx** %2, align 8
  br label %55

52:                                               ; preds = %49, %33
  %53 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %4, align 8
  %54 = call i32 @ssh_hmac_free(%struct.ssh_hmac_ctx* %53)
  store %struct.ssh_hmac_ctx* null, %struct.ssh_hmac_ctx** %2, align 8
  br label %55

55:                                               ; preds = %52, %50, %8
  %56 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %2, align 8
  ret %struct.ssh_hmac_ctx* %56
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @ssh_digest_start(i32) #1

declare dso_local i32 @ssh_digest_blocksize(i32*) #1

declare dso_local i32 @ssh_hmac_free(%struct.ssh_hmac_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
