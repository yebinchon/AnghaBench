; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ulog-helper/extr_ulog-helper.c_get_username.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ulog-helper/extr_ulog-helper.c_get_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_username to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_username() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = call i64 (...) @getuid()
  store i64 %5, i64* %4, align 8
  %6 = call i8* (...) @getlogin()
  store i8* %6, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %0
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.passwd* @getpwnam(i8* %9)
  store %struct.passwd* %10, %struct.passwd** %2, align 8
  %11 = icmp ne %struct.passwd* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.passwd*, %struct.passwd** %2, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  store i8* %19, i8** %1, align 8
  br label %29

20:                                               ; preds = %12, %8, %0
  %21 = load i64, i64* %4, align 8
  %22 = call %struct.passwd* @getpwuid(i64 %21)
  store %struct.passwd* %22, %struct.passwd** %2, align 8
  %23 = icmp ne %struct.passwd* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.passwd*, %struct.passwd** %2, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %1, align 8
  br label %29

28:                                               ; preds = %20
  store i8* null, i8** %1, align 8
  br label %29

29:                                               ; preds = %28, %24, %18
  %30 = load i8*, i8** %1, align 8
  ret i8* %30
}

declare dso_local i64 @getuid(...) #1

declare dso_local i8* @getlogin(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
