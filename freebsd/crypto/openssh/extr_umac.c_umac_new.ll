; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_umac_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_umac_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umac_ctx = type { i32, i32, %struct.umac_ctx* }

@ALLOC_BOUNDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.umac_ctx* @umac_new(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.umac_ctx*, align 8
  %4 = alloca %struct.umac_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @ALLOC_BOUNDARY, align 4
  %8 = sext i32 %7 to i64
  %9 = add i64 16, %8
  %10 = trunc i64 %9 to i32
  %11 = call %struct.umac_ctx* @xcalloc(i32 1, i32 %10)
  store %struct.umac_ctx* %11, %struct.umac_ctx** %3, align 8
  store %struct.umac_ctx* %11, %struct.umac_ctx** %4, align 8
  %12 = load %struct.umac_ctx*, %struct.umac_ctx** %3, align 8
  %13 = icmp ne %struct.umac_ctx* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = load i32, i32* @ALLOC_BOUNDARY, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* @ALLOC_BOUNDARY, align 4
  %19 = load %struct.umac_ctx*, %struct.umac_ctx** %3, align 8
  %20 = ptrtoint %struct.umac_ctx* %19 to i32
  %21 = load i32, i32* @ALLOC_BOUNDARY, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = sub nsw i32 %18, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load %struct.umac_ctx*, %struct.umac_ctx** %3, align 8
  %27 = bitcast %struct.umac_ctx* %26 to i32*
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = bitcast i32* %29 to %struct.umac_ctx*
  store %struct.umac_ctx* %30, %struct.umac_ctx** %3, align 8
  br label %31

31:                                               ; preds = %17, %14
  %32 = load %struct.umac_ctx*, %struct.umac_ctx** %4, align 8
  %33 = load %struct.umac_ctx*, %struct.umac_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.umac_ctx, %struct.umac_ctx* %33, i32 0, i32 2
  store %struct.umac_ctx* %32, %struct.umac_ctx** %34, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @aes_key_setup(i32* %35, i32 %36)
  %38 = load %struct.umac_ctx*, %struct.umac_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.umac_ctx, %struct.umac_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pdf_init(i32* %39, i32 %40)
  %42 = load %struct.umac_ctx*, %struct.umac_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.umac_ctx, %struct.umac_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @uhash_init(i32* %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @explicit_bzero(i32 %46, i32 4)
  br label %48

48:                                               ; preds = %31, %1
  %49 = load %struct.umac_ctx*, %struct.umac_ctx** %3, align 8
  ret %struct.umac_ctx* %49
}

declare dso_local %struct.umac_ctx* @xcalloc(i32, i32) #1

declare dso_local i32 @aes_key_setup(i32*, i32) #1

declare dso_local i32 @pdf_init(i32*, i32) #1

declare dso_local i32 @uhash_init(i32*, i32) #1

declare dso_local i32 @explicit_bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
