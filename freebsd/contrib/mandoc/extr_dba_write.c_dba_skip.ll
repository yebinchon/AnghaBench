; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_write.c_dba_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_write.c_dba_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ofp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dba_skip(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [5 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = bitcast [5 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false)
  %9 = load i64, i64* %4, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = icmp sle i64 %17, 5
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i64 (...) @dba_tell()
  store i64 %21, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %38, %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = bitcast [5 x i64]* %5 to i64**
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* @ofp, align 4
  %31 = call i32 @fwrite(i64** %28, i32 8, i64 %29, i32 %30)
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %27, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %26
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %22

41:                                               ; preds = %22
  %42 = load i64, i64* %7, align 8
  ret i64 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @dba_tell(...) #2

declare dso_local i32 @fwrite(i64**, i32, i64, i32) #2

declare dso_local i32 @err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
