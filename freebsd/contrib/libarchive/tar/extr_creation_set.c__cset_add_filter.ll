; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_creation_set.c__cset_add_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_creation_set.c__cset_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creation_set = type { i32, %struct.filter_set* }
%struct.filter_set = type { i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.creation_set*, i32, i8*)* @_cset_add_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cset_add_filter(%struct.creation_set* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.creation_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.filter_set*, align 8
  %8 = alloca i8*, align 8
  store %struct.creation_set* %0, %struct.creation_set** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.creation_set*, %struct.creation_set** %4, align 8
  %10 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %9, i32 0, i32 1
  %11 = load %struct.filter_set*, %struct.filter_set** %10, align 8
  %12 = load %struct.creation_set*, %struct.creation_set** %4, align 8
  %13 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 16, %16
  %18 = trunc i64 %17 to i32
  %19 = call i64 @realloc(%struct.filter_set* %11, i32 %18)
  %20 = inttoptr i64 %19 to %struct.filter_set*
  store %struct.filter_set* %20, %struct.filter_set** %7, align 8
  %21 = load %struct.filter_set*, %struct.filter_set** %7, align 8
  %22 = icmp eq %struct.filter_set* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load %struct.filter_set*, %struct.filter_set** %7, align 8
  %34 = load %struct.creation_set*, %struct.creation_set** %4, align 8
  %35 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %34, i32 0, i32 1
  store %struct.filter_set* %33, %struct.filter_set** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.creation_set*, %struct.creation_set** %4, align 8
  %38 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %37, i32 0, i32 1
  %39 = load %struct.filter_set*, %struct.filter_set** %38, align 8
  %40 = load %struct.creation_set*, %struct.creation_set** %4, align 8
  %41 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.filter_set, %struct.filter_set* %39, i64 %43
  %45 = getelementptr inbounds %struct.filter_set, %struct.filter_set* %44, i32 0, i32 0
  store i32 %36, i32* %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.creation_set*, %struct.creation_set** %4, align 8
  %48 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %47, i32 0, i32 1
  %49 = load %struct.filter_set*, %struct.filter_set** %48, align 8
  %50 = load %struct.creation_set*, %struct.creation_set** %4, align 8
  %51 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.filter_set, %struct.filter_set* %49, i64 %53
  %55 = getelementptr inbounds %struct.filter_set, %struct.filter_set* %54, i32 0, i32 1
  store i8* %46, i8** %55, align 8
  %56 = load %struct.creation_set*, %struct.creation_set** %4, align 8
  %57 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  ret void
}

declare dso_local i64 @realloc(%struct.filter_set*, i32) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
