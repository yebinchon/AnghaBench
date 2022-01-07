; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_get_xml_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_get_xml_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtextget = type { i8*, i64, i64 }

@MT_EXT_GET_OK = common dso_local global i64 0, align 8
@MT_EXT_GET_NEED_MORE_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt_get_xml_str(i32 %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mtextget, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 32768, i64* %8, align 8
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  br label %12

12:                                               ; preds = %52, %3
  %13 = call i32 @bzero(%struct.mtextget* %9, i32 24)
  %14 = load i64, i64* %8, align 8
  %15 = call i8* @malloc(i64 %14)
  %16 = load i8**, i8*** %7, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %56

21:                                               ; preds = %12
  %22 = load i8**, i8*** %7, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.mtextget, %struct.mtextget* %9, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.mtextget, %struct.mtextget* %9, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i64, i64* %6, align 8
  %29 = ptrtoint %struct.mtextget* %9 to i32
  %30 = call i32 @ioctl(i32 %27, i64 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.mtextget, %struct.mtextget* %9, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MT_EXT_GET_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %55

39:                                               ; preds = %33, %21
  %40 = load i8**, i8*** %7, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8**, i8*** %7, align 8
  store i8* null, i8** %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.mtextget, %struct.mtextget* %9, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MT_EXT_GET_NEED_MORE_SPACE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %39
  store i32 -1, i32* %4, align 4
  br label %56

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  %54 = mul i64 %53, 2
  store i64 %54, i64* %8, align 8
  br label %12

55:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @bzero(%struct.mtextget*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ioctl(i32, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
