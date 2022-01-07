; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_findfp.c_f_prealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_findfp.c_f_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glue = type { %struct.glue*, i64 }

@FOPEN_MAX = common dso_local global i32 0, align 4
@__sglue = common dso_local global %struct.glue zeroinitializer, align 8
@lastglue = common dso_local global %struct.glue* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_prealloc() #0 {
  %1 = alloca %struct.glue*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @getdtablesize()
  %4 = load i32, i32* @FOPEN_MAX, align 4
  %5 = sub nsw i32 %3, %4
  %6 = add nsw i32 %5, 20
  store i32 %6, i32* %2, align 4
  store %struct.glue* @__sglue, %struct.glue** %1, align 8
  br label %7

7:                                                ; preds = %24, %0
  %8 = load %struct.glue*, %struct.glue** %1, align 8
  %9 = getelementptr inbounds %struct.glue, %struct.glue* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = sub nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load %struct.glue*, %struct.glue** %1, align 8
  %18 = getelementptr inbounds %struct.glue, %struct.glue* %17, i32 0, i32 0
  %19 = load %struct.glue*, %struct.glue** %18, align 8
  %20 = icmp ne %struct.glue* %19, null
  br label %21

21:                                               ; preds = %16, %7
  %22 = phi i1 [ false, %7 ], [ %20, %16 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.glue*, %struct.glue** %1, align 8
  %26 = getelementptr inbounds %struct.glue, %struct.glue* %25, i32 0, i32 0
  %27 = load %struct.glue*, %struct.glue** %26, align 8
  store %struct.glue* %27, %struct.glue** %1, align 8
  br label %7

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = call %struct.glue* @moreglue(i32 %32)
  store %struct.glue* %33, %struct.glue** %1, align 8
  %34 = icmp ne %struct.glue* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = call i32 (...) @STDIO_THREAD_LOCK()
  %37 = load %struct.glue*, %struct.glue** @lastglue, align 8
  %38 = getelementptr inbounds %struct.glue, %struct.glue* %37, i32 0, i32 0
  %39 = load %struct.glue*, %struct.glue** %38, align 8
  %40 = load %struct.glue*, %struct.glue** %1, align 8
  %41 = call i32 @SET_GLUE_PTR(%struct.glue* %39, %struct.glue* %40)
  %42 = load %struct.glue*, %struct.glue** %1, align 8
  store %struct.glue* %42, %struct.glue** @lastglue, align 8
  %43 = call i32 (...) @STDIO_THREAD_UNLOCK()
  br label %44

44:                                               ; preds = %35, %31, %28
  ret void
}

declare dso_local i32 @getdtablesize(...) #1

declare dso_local %struct.glue* @moreglue(i32) #1

declare dso_local i32 @STDIO_THREAD_LOCK(...) #1

declare dso_local i32 @SET_GLUE_PTR(%struct.glue*, %struct.glue*) #1

declare dso_local i32 @STDIO_THREAD_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
