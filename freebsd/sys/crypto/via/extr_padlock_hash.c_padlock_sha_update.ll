; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_sha_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_sha_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padlock_sha_ctx = type { i32, i64, i32* }

@M_PADLOCK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padlock_sha_ctx*, i32*, i64)* @padlock_sha_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padlock_sha_update(%struct.padlock_sha_ctx* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.padlock_sha_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.padlock_sha_ctx* %0, %struct.padlock_sha_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 2
  %23 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @MAX(i32 %22, i64 %28)
  %30 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @M_PADLOCK, align 4
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = call i32* @realloc(i32* %34, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %18
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %66

49:                                               ; preds = %18
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @bcopy(i32* %51, i32* %58, i64 %59)
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %50, %47
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32* @realloc(i32*, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
