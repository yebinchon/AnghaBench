; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_bstrcatv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_bstrcatv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @serf_bstrcatv(i32* %0, %struct.iovec* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %28, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.iovec*, %struct.iovec** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i64 %20
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i8* @serf_bucket_mem_alloc(i32* %32, i32 %33)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %63, %31
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.iovec*, %struct.iovec** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %44
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iovec*, %struct.iovec** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i64 %50
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @memcpy(i8* %41, i32 %47, i64 %53)
  %55 = load %struct.iovec*, %struct.iovec** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i64 %57
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %40
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %36

66:                                               ; preds = %36
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %66
  %78 = load i8*, i8** %12, align 8
  ret i8* %78
}

declare dso_local i8* @serf_bucket_mem_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
