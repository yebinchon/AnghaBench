; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_tail_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_tail_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebuf = type { i64, i8*, i8*, i8* }

@EBUF_MAGIC = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebuf*, i64)* @ebuf_tail_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebuf_tail_extend(%struct.ebuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.ebuf* %0, %struct.ebuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %9 = icmp ne %struct.ebuf* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %12 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EBUF_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %21 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %24 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %22 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %28, %29
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = mul nsw i32 3, %31
  %33 = sdiv i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %30, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %37 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i8* @realloc(i8* %38, i64 %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %66

44:                                               ; preds = %16
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %47 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %50 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %48 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds i8, i8* %45, i64 %54
  %56 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %57 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %60 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %65 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %44, %43
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
