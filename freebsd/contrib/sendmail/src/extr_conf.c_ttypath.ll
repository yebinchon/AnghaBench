; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_conf.c_ttypath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_conf.c_ttypath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@S_IWOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ttypath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8*, align 8
  %4 = call i8* (i32, ...) bitcast (i8* (...)* @ttyname to i8* (i32, ...)*)(i32 2)
  store i8* %4, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = call i8* (i32, ...) bitcast (i8* (...)* @ttyname to i8* (i32, ...)*)(i32 1)
  store i8* %7, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = call i8* (i32, ...) bitcast (i8* (...)* @ttyname to i8* (i32, ...)*)(i32 0)
  store i8* %10, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i64 0, i64* @errno, align 8
  store i8* null, i8** %1, align 8
  br label %30

13:                                               ; preds = %9, %6, %0
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @stat(i8* %14, %struct.stat* %2)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @S_IWOTH, align 4
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bitset(i32 %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %13
  store i64 0, i64* @errno, align 8
  store i8* null, i8** %1, align 8
  br label %30

24:                                               ; preds = %17
  %25 = call i8* (...) @getlogin()
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8* null, i8** %1, align 8
  br label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  store i8* %29, i8** %1, align 8
  br label %30

30:                                               ; preds = %28, %27, %23, %12
  %31 = load i8*, i8** %1, align 8
  ret i8* %31
}

declare dso_local i8* @ttyname(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @bitset(i32, i32) #1

declare dso_local i8* @getlogin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
