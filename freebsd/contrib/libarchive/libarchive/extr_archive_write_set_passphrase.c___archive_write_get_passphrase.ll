; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_passphrase.c___archive_write_get_passphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_passphrase.c___archive_write_get_passphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i8*, i8* (i32*, i32)*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can't allocate data for passphrase\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__archive_write_get_passphrase(%struct.archive_write* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %15 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %14, i32 0, i32 1
  %16 = load i8* (i32*, i32)*, i8* (i32*, i32)** %15, align 8
  %17 = icmp ne i8* (i32*, i32)* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %20 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %19, i32 0, i32 1
  %21 = load i8* (i32*, i32)*, i8* (i32*, i32)** %20, align 8
  %22 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %23 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %22, i32 0, i32 2
  %24 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %25 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* %21(i32* %23, i32 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %18
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @strdup(i8* %31)
  %33 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %34 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %36 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %41 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %40, i32 0, i32 2
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @archive_set_error(i32* %41, i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %50

44:                                               ; preds = %30
  %45 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %46 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %2, align 8
  br label %50

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48, %13
  store i8* null, i8** %2, align 8
  br label %50

50:                                               ; preds = %49, %44, %39, %9
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
