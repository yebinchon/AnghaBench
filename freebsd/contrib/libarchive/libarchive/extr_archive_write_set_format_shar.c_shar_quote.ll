; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_shar_quote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_shar_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@shar_quote.meta = internal constant [26 x i8] c"\0A \09'`\22;&<>()|*?{}[]\\$!#^~\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"\22\0A\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i8*, i32)* @shar_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shar_quote(%struct.archive_string* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %52, %3
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strcspn(i8* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @shar_quote.meta, i64 0, i64 0))
  store i64 %15, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @archive_strncat(%struct.archive_string* %18, i8* %19, i64 %20)
  %22 = load i64, i64* %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %5, align 8
  br label %52

25:                                               ; preds = %13
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %35 = call i32 @archive_strcat(%struct.archive_string* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %39

36:                                               ; preds = %30
  %37 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %38 = call i32 @archive_strcat(%struct.archive_string* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %51

42:                                               ; preds = %25
  %43 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %44 = call i32 @archive_strappend_char(%struct.archive_string* %43, i8 signext 92)
  %45 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @archive_strappend_char(%struct.archive_string* %45, i8 signext %47)
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %42, %39
  br label %52

52:                                               ; preds = %51, %17
  br label %8

53:                                               ; preds = %8
  ret void
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @archive_strncat(%struct.archive_string*, i8*, i64) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
