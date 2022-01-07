; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pidfile_write(%struct.pidfh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pidfh*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pidfh* %0, %struct.pidfh** %3, align 8
  %7 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %8 = call i32 @pidfile_verify(%struct.pidfh* %7)
  store i32 %8, i32* @errno, align 4
  %9 = load i32, i32* @errno, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %14 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ftruncate(i32 %16, i32 0)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %22 = call i32 @_pidfile_remove(%struct.pidfh* %21, i32 0)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %42

24:                                               ; preds = %12
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %26 = call i32 (...) @getpid()
  %27 = call i32 @snprintf(i8* %25, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %31 = call i64 @strlen(i8* %30)
  %32 = call i64 @pwrite(i32 %28, i8* %29, i64 %31, i32 0)
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %34 = call i64 @strlen(i8* %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32, i32* @errno, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %39 = call i32 @_pidfile_remove(%struct.pidfh* %38, i32 0)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %36, %19, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @pidfile_verify(%struct.pidfh*) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @_pidfile_remove(%struct.pidfh*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @pwrite(i32, i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
