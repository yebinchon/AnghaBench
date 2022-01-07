; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_add_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_add_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebuf = type { i64, i64, i64, i64 }

@EBUF_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebuf_add_tail(%struct.ebuf* %0, i8* %1, i64 %2) #0 {
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
  %22 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %25 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %28 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = sub nsw i64 %23, %30
  %32 = icmp ugt i64 %20, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %16
  %34 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ebuf_tail_extend(%struct.ebuf* %34, i64 %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %75

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %43 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %46 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %49 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = sub nsw i64 %44, %51
  %53 = icmp ule i64 %41, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @PJDLOG_ASSERT(i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %40
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %61 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %64 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @bcopy(i8* %59, i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %58, %40
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.ebuf*, %struct.ebuf** %5, align 8
  %72 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %38
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @ebuf_tail_extend(%struct.ebuf*, i64) #1

declare dso_local i32 @bcopy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
