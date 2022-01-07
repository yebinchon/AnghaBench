; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld_malloc.c___crt_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld_malloc.c___crt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.overhead = type { i64 }

@MAGIC = common dso_local global i64 0, align 8
@nextf = common dso_local global %union.overhead** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__crt_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.overhead*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = sub i64 %10, 8
  %12 = inttoptr i64 %11 to %union.overhead*
  store %union.overhead* %12, %union.overhead** %4, align 8
  %13 = load %union.overhead*, %union.overhead** %4, align 8
  %14 = bitcast %union.overhead* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MAGIC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %35

19:                                               ; preds = %8
  %20 = load %union.overhead*, %union.overhead** %4, align 8
  %21 = bitcast %union.overhead* %20 to i32*
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  %23 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %union.overhead*, %union.overhead** %23, i64 %25
  %27 = load %union.overhead*, %union.overhead** %26, align 8
  %28 = load %union.overhead*, %union.overhead** %4, align 8
  %29 = bitcast %union.overhead* %28 to %union.overhead**
  store %union.overhead* %27, %union.overhead** %29, align 8
  %30 = load %union.overhead*, %union.overhead** %4, align 8
  %31 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %union.overhead*, %union.overhead** %31, i64 %33
  store %union.overhead* %30, %union.overhead** %34, align 8
  br label %35

35:                                               ; preds = %19, %18, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
