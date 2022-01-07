; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/setkey/extr_setkey.c_gmt2local.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/setkey/extr_setkey.c_gmt2local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmt2local(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca %struct.tm, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i64 @time(i32* null)
  store i64 %11, i64* %2, align 8
  br label %12

12:                                               ; preds = %10, %1
  store %struct.tm* %7, %struct.tm** %5, align 8
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = call %struct.tm* @gmtime(i64* %2)
  %15 = bitcast %struct.tm* %13 to i8*
  %16 = bitcast %struct.tm* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 16, i1 false)
  %17 = call %struct.tm* @localtime(i64* %2)
  store %struct.tm* %17, %struct.tm** %6, align 8
  %18 = load %struct.tm*, %struct.tm** %6, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = mul nsw i32 %24, 60
  %26 = mul nsw i32 %25, 60
  %27 = load %struct.tm*, %struct.tm** %6, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tm*, %struct.tm** %5, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = mul nsw i32 %33, 60
  %35 = add nsw i32 %26, %34
  store i32 %35, i32* %3, align 4
  %36 = load %struct.tm*, %struct.tm** %6, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tm*, %struct.tm** %5, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %12
  %46 = load %struct.tm*, %struct.tm** %6, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tm*, %struct.tm** %5, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %12
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %54, 24
  %56 = mul nsw i32 %55, 60
  %57 = mul nsw i32 %56, 60
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.tm* @localtime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
