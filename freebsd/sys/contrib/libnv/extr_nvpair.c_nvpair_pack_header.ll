; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_pack_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_pack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.nvpair_header*, i32, i32, i32 }
%struct.nvpair_header = type { i64, i32, i32, i32 }

@UINT16_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvpair_pack_header(%struct.TYPE_4__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.nvpair_header, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = call i32 @NVPAIR_ASSERT(%struct.TYPE_4__* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %7, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.nvpair_header*, %struct.nvpair_header** %16, align 8
  %18 = call i32 @strlen(%struct.nvpair_header* %17)
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @UINT16_MAX, align 8
  %26 = icmp ule i64 %24, %25
  br label %27

27:                                               ; preds = %23, %3
  %28 = phi i1 [ false, %3 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @PJDLOG_ASSERT(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %7, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %7, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.nvpair_header, %struct.nvpair_header* %7, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %42, 24
  %44 = zext i1 %43 to i32
  %45 = call i32 @PJDLOG_ASSERT(i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @memcpy(i8* %46, %struct.nvpair_header* %7, i64 24)
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 24
  store i8* %49, i8** %5, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %51, 24
  store i64 %52, i64* %50, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp uge i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @PJDLOG_ASSERT(i32 %57)
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.nvpair_header*, %struct.nvpair_header** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @memcpy(i8* %59, %struct.nvpair_header* %62, i64 %63)
  %65 = load i64, i64* %8, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %70, %68
  store i64 %71, i64* %69, align 8
  %72 = load i8*, i8** %5, align 8
  ret i8* %72
}

declare dso_local i32 @NVPAIR_ASSERT(%struct.TYPE_4__*) #1

declare dso_local i32 @strlen(%struct.nvpair_header*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.nvpair_header*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
