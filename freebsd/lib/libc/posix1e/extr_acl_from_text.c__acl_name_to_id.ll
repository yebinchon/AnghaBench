; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text.c__acl_name_to_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text.c__acl_name_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i64 }
%struct.passwd = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_acl_name_to_id(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %65 [
    i32 128, label %13
    i32 129, label %39
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.passwd* @getpwnam(i8* %14)
  store %struct.passwd* %15, %struct.passwd** %9, align 8
  %16 = load %struct.passwd*, %struct.passwd** %9, align 8
  %17 = icmp eq %struct.passwd* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strtoul(i8* %19, i8** %11, i32 0)
  store i64 %20, i64* %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %18
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %67

31:                                               ; preds = %25
  %32 = load i64, i64* %10, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %67

34:                                               ; preds = %13
  %35 = load %struct.passwd*, %struct.passwd** %9, align 8
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %67

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.group* @getgrnam(i8* %40)
  store %struct.group* %41, %struct.group** %8, align 8
  %42 = load %struct.group*, %struct.group** %8, align 8
  %43 = icmp eq %struct.group* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strtoul(i8* %45, i8** %11, i32 0)
  store i64 %46, i64* %10, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %44
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %67

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  store i32 0, i32* %4, align 4
  br label %67

60:                                               ; preds = %39
  %61 = load %struct.group*, %struct.group** %8, align 8
  %62 = getelementptr inbounds %struct.group, %struct.group* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %4, align 4
  br label %67

65:                                               ; preds = %3
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %60, %57, %55, %34, %31, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
