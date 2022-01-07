; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32, i32, i32 }
%struct.archive_write = type { i32, i32, i32, i8*, %struct.archive }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive* @archive_write_new() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca i8*, align 8
  %4 = call i64 @calloc(i32 1, i32 40)
  %5 = inttoptr i64 %4 to %struct.archive_write*
  store %struct.archive_write* %5, %struct.archive_write** %2, align 8
  %6 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %7 = icmp eq %struct.archive_write* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.archive* null, %struct.archive** %1, align 8
  br label %44

9:                                                ; preds = %0
  %10 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %11 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.archive, %struct.archive* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %15 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.archive, %struct.archive* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = call i32 (...) @archive_write_vtable()
  %19 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %20 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.archive, %struct.archive* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %23 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %22, i32 0, i32 0
  store i32 10240, i32* %23, align 8
  %24 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %25 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %27 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %26, i32 0, i32 2
  store i32 1024, i32* %27, align 8
  %28 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @calloc(i32 1, i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %9
  %36 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %37 = call i32 @free(%struct.archive_write* %36)
  store %struct.archive* null, %struct.archive** %1, align 8
  br label %44

38:                                               ; preds = %9
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %41 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %43 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %42, i32 0, i32 4
  store %struct.archive* %43, %struct.archive** %1, align 8
  br label %44

44:                                               ; preds = %38, %35, %8
  %45 = load %struct.archive*, %struct.archive** %1, align 8
  ret %struct.archive* %45
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_write_vtable(...) #1

declare dso_local i32 @free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
