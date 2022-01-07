; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_add_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_add_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebuf = type { i64, i64, i64, i64 }

@EBUF_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebuf_add_head(%struct.ebuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.ebuf* %0, %struct.ebuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %9 = icmp ne %struct.ebuf* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %12 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EBUF_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i1 [ false, %3 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %22 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %25 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = icmp ugt i64 %20, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %16
  %30 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @ebuf_head_extend(%struct.ebuf* %30, i64 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %68

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %39 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %42 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = icmp ule i64 %37, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @PJDLOG_ASSERT(i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %50 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %55 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %36
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %63 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @bcopy(i8* %61, i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %60, %36
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %34
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @ebuf_head_extend(%struct.ebuf*, i64) #1

declare dso_local i32 @bcopy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
