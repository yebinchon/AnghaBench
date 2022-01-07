; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_check_7zip_header_in_sfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_check_7zip_header_in_sfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_7ZIP_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check_7zip_header_in_sfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_7zip_header_in_sfx(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 5
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %29 [
    i32 28, label %8
    i32 55, label %24
    i32 122, label %25
    i32 188, label %26
    i32 175, label %27
    i32 39, label %28
  ]

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @_7ZIP_SIGNATURE, align 4
  %11 = call i32 @memcmp(i8* %9, i32 %10, i32 6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 6, i32* %2, align 4
  br label %30

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 12
  %17 = call i32 @crc32(i32 0, i8* %16, i32 20)
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 8
  %20 = call i32 @archive_le32dec(i8* %19)
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 6, i32* %2, align 4
  br label %30

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %30

24:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %30

25:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %30

26:                                               ; preds = %1
  store i32 3, i32* %2, align 4
  br label %30

27:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %30

28:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @archive_le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
