; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"reserve buf = %p len = %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_reserve(%struct.sshbuf* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32**, i32*** %7, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32**, i32*** %7, align 8
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @SSHBUF_DBG(i8* %17)
  %19 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @sshbuf_allocate(%struct.sshbuf* %19, i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %14
  %26 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %27 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %30 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %36 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load i32**, i32*** %7, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32*, i32** %8, align 8
  %45 = load i32**, i32*** %7, align 8
  store i32* %44, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %25
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @sshbuf_allocate(%struct.sshbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
