; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cat/extr_bsdcat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cat/extr_bsdcat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdcat = type { i8**, i32 }

@.str = private unnamed_addr constant [7 x i8] c"bsdcat\00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@bsdcat_current_path = common dso_local global i8* null, align 8
@a = common dso_local global i32 0, align 4
@exit_status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bsdcat*, align 8
  %7 = alloca %struct.bsdcat, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.bsdcat* %7, %struct.bsdcat** %6, align 8
  %9 = load %struct.bsdcat*, %struct.bsdcat** %6, align 8
  %10 = call i32 @memset(%struct.bsdcat* %9, i32 0, i32 16)
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @lafe_setprogname(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load i8**, i8*** %5, align 8
  %15 = load %struct.bsdcat*, %struct.bsdcat** %6, align 8
  %16 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %15, i32 0, i32 0
  store i8** %14, i8*** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.bsdcat*, %struct.bsdcat** %6, align 8
  %19 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %34, %2
  %21 = load %struct.bsdcat*, %struct.bsdcat** %6, align 8
  %22 = call i32 @bsdcat_getopt(%struct.bsdcat* %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %31 [
    i32 104, label %26
    i32 128, label %29
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @usage(i32 %27, i32 0)
  br label %34

29:                                               ; preds = %24
  %30 = call i32 (...) @version()
  br label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @usage(i32 %32, i32 1)
  br label %34

34:                                               ; preds = %31, %29, %26
  br label %20

35:                                               ; preds = %20
  %36 = call i32 (...) @bsdcat_next()
  %37 = load %struct.bsdcat*, %struct.bsdcat** %6, align 8
  %38 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** @bsdcat_current_path, align 8
  %43 = call i32 @bsdcat_read_to_stdout(i8* null)
  br label %63

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %51, %44
  %46 = load %struct.bsdcat*, %struct.bsdcat** %6, align 8
  %47 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.bsdcat*, %struct.bsdcat** %6, align 8
  %53 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %53, align 8
  %56 = load i8*, i8** %54, align 8
  store i8* %56, i8** @bsdcat_current_path, align 8
  %57 = load i8*, i8** @bsdcat_current_path, align 8
  %58 = call i32 @bsdcat_read_to_stdout(i8* %57)
  %59 = call i32 (...) @bsdcat_next()
  br label %45

60:                                               ; preds = %45
  %61 = load i32, i32* @a, align 4
  %62 = call i32 @archive_read_free(i32 %61)
  br label %63

63:                                               ; preds = %60, %42
  %64 = load i32, i32* @exit_status, align 4
  %65 = call i32 @exit(i32 %64) #3
  unreachable
}

declare dso_local i32 @memset(%struct.bsdcat*, i32, i32) #1

declare dso_local i32 @lafe_setprogname(i8*, i8*) #1

declare dso_local i32 @bsdcat_getopt(%struct.bsdcat*) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @version(...) #1

declare dso_local i32 @bsdcat_next(...) #1

declare dso_local i32 @bsdcat_read_to_stdout(i8*) #1

declare dso_local i32 @archive_read_free(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
