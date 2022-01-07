; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_read_eocd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_read_eocd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip*, i8*, i64)* @read_eocd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eocd(%struct.zip* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.zip* %0, %struct.zip** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 4
  %10 = call i64 @archive_le16dec(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 4
  %16 = call i64 @archive_le16dec(i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 6
  %19 = call i64 @archive_le16dec(i8* %18)
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %48

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 10
  %25 = call i64 @archive_le16dec(i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  %28 = call i64 @archive_le16dec(i8* %27)
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %48

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 16
  %34 = call i64 @archive_le32dec(i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 12
  %37 = call i64 @archive_le32dec(i8* %36)
  %38 = add nsw i64 %34, %37
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %48

42:                                               ; preds = %31
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 16
  %45 = call i64 @archive_le32dec(i8* %44)
  %46 = load %struct.zip*, %struct.zip** %5, align 8
  %47 = getelementptr inbounds %struct.zip, %struct.zip* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  store i32 32, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %41, %30, %21, %12
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @archive_le16dec(i8*) #1

declare dso_local i64 @archive_le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
