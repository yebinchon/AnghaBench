; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_create_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_create_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash_info = type { i8* (i32, i32)*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ohash_create_entry(%struct.ohash_info* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.ohash_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.ohash_info* %0, %struct.ohash_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i8**, i8*** %6, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8**, i8*** %6, align 8
  store i8* %16, i8** %17, align 8
  br label %18

18:                                               ; preds = %11, %3
  %19 = load %struct.ohash_info*, %struct.ohash_info** %4, align 8
  %20 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %19, i32 0, i32 0
  %21 = load i8* (i32, i32)*, i8* (i32, i32)** %20, align 8
  %22 = load %struct.ohash_info*, %struct.ohash_info** %4, align 8
  %23 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = add nsw i64 %25, %31
  %33 = add nsw i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = load %struct.ohash_info*, %struct.ohash_info** %4, align 8
  %36 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* %21(i32 %34, i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %18
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.ohash_info*, %struct.ohash_info** %4, align 8
  %44 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(i8* %47, i8* %48, i32 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.ohash_info*, %struct.ohash_info** %4, align 8
  %59 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = add nsw i64 %61, %67
  %69 = getelementptr inbounds i8, i8* %57, i64 %68
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %41, %18
  %71 = load i8*, i8** %7, align 8
  ret i8* %71
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
