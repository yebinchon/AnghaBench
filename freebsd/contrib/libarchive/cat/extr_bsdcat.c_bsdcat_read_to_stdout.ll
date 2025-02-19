; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cat/extr_bsdcat.c_bsdcat_read_to_stdout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cat/extr_bsdcat.c_bsdcat_read_to_stdout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common dso_local global i32* null, align 8
@BYTES_PER_BLOCK = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ae = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsdcat_read_to_stdout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32*, i32** @a, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* @BYTES_PER_BLOCK, align 4
  %7 = call i32 @archive_read_open_filename(i32* %4, i8* %5, i32 %6)
  %8 = load i32, i32* @ARCHIVE_OK, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @bsdcat_print_error()
  br label %41

12:                                               ; preds = %1
  %13 = load i32*, i32** @a, align 8
  %14 = call i32 @archive_read_next_header(i32* %13, i32* @ae)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ARCHIVE_EOF, align 4
  %21 = icmp ne i32 %19, %20
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ false, %12 ], [ %21, %18 ]
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 (...) @bsdcat_print_error()
  br label %40

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ARCHIVE_EOF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %39

31:                                               ; preds = %26
  %32 = load i32*, i32** @a, align 8
  %33 = call i32 @archive_read_data_into_fd(i32* %32, i32 1)
  %34 = load i32, i32* @ARCHIVE_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @bsdcat_print_error()
  br label %38

38:                                               ; preds = %36, %31
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40, %10
  %42 = load i32*, i32** @a, align 8
  %43 = call i32 @archive_read_close(i32* %42)
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (...) @bsdcat_print_error()
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32*, i32** @a, align 8
  %50 = call i32 @archive_read_free(i32* %49)
  store i32* null, i32** @a, align 8
  ret void
}

declare dso_local i32 @archive_read_open_filename(i32*, i8*, i32) #1

declare dso_local i32 @bsdcat_print_error(...) #1

declare dso_local i32 @archive_read_next_header(i32*, i32*) #1

declare dso_local i32 @archive_read_data_into_fd(i32*, i32) #1

declare dso_local i32 @archive_read_close(i32*) #1

declare dso_local i32 @archive_read_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
