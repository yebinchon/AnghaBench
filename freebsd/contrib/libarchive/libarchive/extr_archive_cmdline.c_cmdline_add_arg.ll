; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_cmdline.c_cmdline_add_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_cmdline.c_cmdline_add_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_cmdline = type { i8**, i32, i32* }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_cmdline*, i8*)* @cmdline_add_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdline_add_arg(%struct.archive_cmdline* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_cmdline*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.archive_cmdline* %0, %struct.archive_cmdline** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %8 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %12, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %15 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %18 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i8** @realloc(i8** %16, i32 %23)
  store i8** %24, i8*** %6, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = icmp eq i8** %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %28, i32* %3, align 4
  br label %66

29:                                               ; preds = %13
  %30 = load i8**, i8*** %6, align 8
  %31 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %32 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %31, i32 0, i32 0
  store i8** %30, i8*** %32, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @strdup(i8* %33)
  %35 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %36 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %39 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %37, i64 %41
  store i8* %34, i8** %42, align 8
  %43 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %44 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %47 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %45, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %54, i32* %3, align 4
  br label %66

55:                                               ; preds = %29
  %56 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %57 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = load %struct.archive_cmdline*, %struct.archive_cmdline** %4, align 8
  %60 = getelementptr inbounds %struct.archive_cmdline, %struct.archive_cmdline* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %58, i64 %63
  store i8* null, i8** %64, align 8
  %65 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %55, %53, %27, %11
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
