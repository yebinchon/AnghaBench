; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_head_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_head_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebuf = type { i64, i8*, i8*, i8*, i32 }

@EBUF_MAGIC = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebuf*, i64)* @ebuf_head_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebuf_head_extend(%struct.ebuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ebuf* %0, %struct.ebuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %10 = icmp ne %struct.ebuf* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %13 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EBUF_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @PJDLOG_ASSERT(i32 %19)
  %21 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %22 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %25 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %23 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sdiv i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %78

41:                                               ; preds = %17
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sdiv i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %50 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %53 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %51 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = getelementptr inbounds i8, i8* %48, i64 %57
  store i8* %58, i8** %7, align 8
  %59 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %60 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %64 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bcopy(i8* %61, i8* %62, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %69 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %72 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %77 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %41, %40
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
