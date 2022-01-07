; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_array.c_dba_array_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_array.c_dba_array_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dba_array = type { i64, i64, i32, i64*, i8** }

@DBA_STR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dba_array_set(%struct.dba_array* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.dba_array*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.dba_array* %0, %struct.dba_array** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp uge i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %13 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %20 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %27 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %32 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %37 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DBA_STR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @mandoc_strdup(i8* %43)
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %48 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %47, i32 0, i32 4
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* %46, i8** %51, align 8
  %52 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %53 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 0, i64* %56, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
