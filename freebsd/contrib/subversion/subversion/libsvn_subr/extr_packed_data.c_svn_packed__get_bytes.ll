; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_svn_packed__get_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_svn_packed__get_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_packed__get_bytes(%struct.TYPE_5__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @svn_packed__get_uint(i32 %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %17, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %24, %2
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %31
  store i8* %37, i8** %35, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %38
  store i64 %44, i64* %42, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %45
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64*, i64** %4, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i32 @svn_packed__get_uint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
